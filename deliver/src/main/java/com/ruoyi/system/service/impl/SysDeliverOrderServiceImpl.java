package com.ruoyi.system.service.impl;

import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.List;
import com.ruoyi.common.exception.ServiceException;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.common.utils.bean.BeanValidators;
import com.ruoyi.system.domain.*;
import org.apache.commons.httpclient.methods.RequestEntity;
import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.SysDeliverOrderMapper;
import com.ruoyi.system.service.ISysDeliverOrderService;
import org.springframework.transaction.annotation.Transactional;
import javax.validation.Validator;

import static com.ruoyi.common.utils.GenerateOddNumbersUtil.getOddNumbers;
import static com.ruoyi.common.utils.SecurityUtils.getUsername;
import static com.ruoyi.framework.datasource.DynamicDataSourceContextHolder.log;

import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.UsernamePasswordCredentials;
import org.apache.commons.httpclient.auth.AuthScope;
import org.apache.commons.httpclient.methods.PostMethod;
//import org.apache.commons.httpclient.methods.RequestEntity;
import org.apache.commons.httpclient.methods.StringRequestEntity;
import org.json.*;
import com.ruoyi.common.core.domain.entity.SysUser;
/**
 * 送货单Service业务层处理
 * 
 * @author liyanru
 * @date 2024-09-18
 */
@Service
public class SysDeliverOrderServiceImpl implements ISysDeliverOrderService 
{
    @Autowired
    private SysDeliverOrderMapper sysDeliverOrderMapper;

    @Autowired
    protected Validator validator;

    /**
     * 查询送货单
     * 
     * @param id 送货单主键
     * @return 送货单
     */
    @Override
    public SysDeliverOrder selectSysDeliverOrderById(Long id)
    {
        return sysDeliverOrderMapper.selectSysDeliverOrderById(id);
    }

    /**
     * 查询送货单列表
     * 
     * @param sysDeliverOrder 送货单
     * @return 送货单
     */
    @Override
    public List<SysDeliverOrder> selectSysDeliverOrderList(SysDeliverOrder sysDeliverOrder)
    {
        return sysDeliverOrderMapper.selectSysDeliverOrderList(sysDeliverOrder);
    }

    /**
     * 新增送货单
     * 
     * @param sysDeliverOrder 送货单
     * @return 结果
     */
    @Override
    public int insertSysDeliverOrder(SysDeliverOrder sysDeliverOrder)
    {
        return sysDeliverOrderMapper.insertSysDeliverOrder(sysDeliverOrder);
    }

    /**
     * 修改送货单
     * 
     * @param sysDeliverOrder 送货单
     * @return 结果
     */
    @Override
    public int updateSysDeliverOrder(SysDeliverOrder sysDeliverOrder)
    {
        sysDeliverOrder.setUpdateTime(DateUtils.getNowDate());
        return sysDeliverOrderMapper.updateSysDeliverOrder(sysDeliverOrder);
    }

    /**
     * 批量删除送货单
     * 
     * @param ids 需要删除的送货单主键
     * @return 结果
     */
    @Override
    public int deleteSysDeliverOrderByIds(Long[] ids)
    {
        return sysDeliverOrderMapper.deleteSysDeliverOrderByIds(ids);
    }

    /**
     * 删除送货单信息
     * 
     * @param id 送货单主键
     * @return 结果
     */
    @Override
    public int deleteSysDeliverOrderById(Long id)
    {
        return sysDeliverOrderMapper.deleteSysDeliverOrderById(id);
    }

    /** 导入个人物品信息数据
     *
     * @param SysDeliverOrderList 送货单列表
     * @param isUpdateSupport 是否更新支持，如果已存在，则进行更新数据
     * @param operName 操作用户
     * @return 结果
     */
    @Override
    public String importSysDeliverOrder(List<SysDeliverOrder> SysDeliverOrderList, Boolean isUpdateSupport, String operName)
    {
        if (StringUtils.isNull(SysDeliverOrderList) || SysDeliverOrderList.size() == 0)
        {
            throw new ServiceException("导入送货信息数据不能为空！");
        }
        int successNum = 0;
        int failureNum = 0;
        StringBuilder successMsg = new StringBuilder();
        StringBuilder failureMsg = new StringBuilder();
        for (SysDeliverOrder SysDeliverOrder : SysDeliverOrderList)
        {
            try
            {

                if (isUpdateSupport==false)
                {
                    BeanValidators.validateWithException(validator, SysDeliverOrder);

                    SysDeliverOrder.setCreateBy(operName);
                    this.insertSysDeliverOrder(SysDeliverOrder);
                    successNum++;
                    successMsg.append("<br/>" + successNum + "、供应商编码 " + SysDeliverOrder.getId() + " 导入成功");
                }
                else if (isUpdateSupport)
                {
                    BeanValidators.validateWithException(validator, SysDeliverOrder);
                    SysDeliverOrder.setUpdateBy(operName);
                    this.updateSysDeliverOrder(SysDeliverOrder);
                    successNum++;
                    successMsg.append("<br/>" + successNum + "、供应商编码 " + SysDeliverOrder.getId() + " 更新成功");
                }
                else
                {
                    failureNum++;
                    failureMsg.append("<br/>" + failureNum + "、供应商编码 " + SysDeliverOrder.getId() + " 导入失败");
                }
            }
            catch (Exception e)
            {
                failureNum++;
                String msg = "<br/>" + failureNum + "、供应商编码 " + SysDeliverOrder.getId() + " 导入失败：";
                failureMsg.append(msg + e.getMessage());
                log.error(msg, e);
            }
        }
        if (failureNum > 0)
        {
            failureMsg.insert(0, "很抱歉，导入失败！共 " + failureNum + " 条数据格式不正确，错误如下：");
            throw new ServiceException(failureMsg.toString());
        }
        else
        {
            successMsg.insert(0, "恭喜您，数据已全部导入成功！共 " + successNum + " 条，数据如下：");
        }
        return successMsg.toString();
    }

    /**
     * 自动生成送货单号
     * 调用生成数字工具类
     * @return 送货单号
     */
    @Override
    @Transactional
    public String generateOrder(String getOrder){
        String maxOddNumbers=sysDeliverOrderMapper.findNewOddNumbers(getOrder);
        String pre = "DG";
        String asnNo = pre + getOddNumbers(maxOddNumbers);
        return asnNo;
//        sysDeliverOrder.setAsnNo(asnNo);
//        return sysDeliverOrderMapper.updateSysDeliverOrder(sysDeliverOrder);
    }

    @Override
    public int updateStatus(Long[] ids) {
        return sysDeliverOrderMapper.updateStatus(ids);
    }
    @Override
    public int updateStatusById(Long[] id) {
        return sysDeliverOrderMapper.updateStatus(id);
    }
    @Override
    public int updatePutStatus(Long[] ids) {
        return sysDeliverOrderMapper.updatePutStatus(ids);
    }
    @Override
    public int updatePutStatusById(Long[] id) {
        return sysDeliverOrderMapper.updatePutStatus(id);
    }

    /* 采购列表 查询功能 */
    @Override
    public String changePurchaseData(String supplier,int page){
//    public String changePurchaseData(String supply,String materialNo, String purchaseNo, Date productDay, Date  createDay, int page){
        // HttpClient发送SOAP请求
        String url = "http://172.16.10.21:8000/sap/bc/srt/rfc/sap/zvndorlabelws/800/zvndorlabelws/zvndorlabelws";
        int timeout = 100000000;
        log.info("HttpClient 发送SOAP请求");
        HttpClient client = new HttpClient();
        JSONObject xmlobj = new JSONObject();
        //如果需要用户名密码验证；不需要验证登录则不需要以下4行
        UsernamePasswordCredentials creds = new UsernamePasswordCredentials("L20891", "882158");
        client.getState().setCredentials(AuthScope.ANY, creds);
        //webservice 地址
        PostMethod postMethod = new PostMethod(url);
        // 设置连接超时
        client.getHttpConnectionManager().getParams().setConnectionTimeout(timeout);
        // 设置读取时间超时
        client.getHttpConnectionManager().getParams().setSoTimeout(timeout);
        // 然后把Soap请求数据添加到PostMethod中
        RequestEntity  requestEntity = null;
        try {
            requestEntity = new StringRequestEntity(getXMLOne(supplier,page),"text/xml", "UTF-8");
//            requestEntity = new StringRequestEntity(getXMLOne(supply,materialNo,purchaseNo,productDay,createDay,page),"text/xml", "UTF-8");
        } catch (UnsupportedEncodingException e) {
            log.error(e.toString());
        }

        // 设置请求头部，否则可能会报 “no SOAPAction header” 的错误
        postMethod.setRequestHeader("SOAPAction", "");
        // 设置请求体
        postMethod.setRequestEntity(requestEntity);
        int status = 0;
        try {
            status = client.executeMethod(postMethod);
            InputStream is = postMethod.getResponseBodyAsStream();
            // 获取请求结果字符串
            String result = IOUtils.toString(is);
            xmlobj = XML.toJSONObject(result);
        }catch (IOException e) {
            log.error(e.toString());
        }
        return xmlobj.toString();
    }

//    public String getXMLOne(String supply, String materialNo, String purchaseNo,Date productDay,Date createDay, int page){
    public String getXMLOne(String supplier,int page){
        String soapXML=
                "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:urn=\"urn:sap-com:document:sap:rfc:functions\">\n" +
                        "   <soapenv:Header/>\n" +
                        "   <soapenv:Body>\n" +
                        "      <urn:ZPP_018>\n" +
                        "         <!--Optional:-->\n" +
                        "         <I_AEDAT></I_AEDAT>\n" +
//                        "         <I_AEDAT>"+createDay+"</I_AEDAT>\n" +
                        "         <!--Optional:-->\n" +
                        "         <I_BEGIN></I_BEGIN>\n" +
                        "         <!--Optional:-->\n" +
                        "         <I_EBELN></I_EBELN>\n" +
//                        "         <I_EBELN>"+purchaseNo+"</I_EBELN>\n" +
                        "         <!--Optional:-->\n" +
                        "         <I_EINDT></I_EINDT>\n" +
//                        "         <I_EINDT>"+productDay+"</I_EINDT>\n" +
                        "         <!--Optional:-->\n" +
                        "         <I_END></I_END>\n" +
                        "         <I_LIFNR>"+supplier+"</I_LIFNR>\n" +
                        "         <!--Optional:-->\n" +
                        "         <I_MATNR></I_MATNR>\n" +
//                        "         <I_MATNR>"+materialNo+"</I_MATNR>\n" +
                        "         <!--Optional:-->\n" +
                        "         <I_PAGE>"+page+"</I_PAGE>\n" +
                        "         <O_TABLE>\n" +
                        "            <!--Zero or more repetitions:-->\n" +
                        "         </O_TABLE>\n" +
                        "      </urn:ZPP_018>\n" +
                        "   </soapenv:Body>\n" +
                        "</soapenv:Envelope>";
        return soapXML;
    }
    @Override
    public String changePurchase( String EBELN,String MATNR,String supplier,int page){
        String url = "http://172.16.10.21:8000/sap/bc/srt/rfc/sap/zvndorlabelws/800/zvndorlabelws/zvndorlabelws";
        int timeout = 100000000;
        log.info("HttpClient 发送SOAP请求");
        HttpClient client = new HttpClient();
        JSONObject xmlobj = new JSONObject();
        //如果需要用户名密码验证；不需要验证登录则不需要以下4行
        UsernamePasswordCredentials creds = new UsernamePasswordCredentials("L20891", "882158");
        client.getState().setCredentials(AuthScope.ANY, creds);
        //webservice 地址
        PostMethod postMethod = new PostMethod(url);
        // 设置连接超时
        client.getHttpConnectionManager().getParams().setConnectionTimeout(timeout);
        // 设置读取时间超时
        client.getHttpConnectionManager().getParams().setSoTimeout(timeout);
        // 然后把Soap请求数据添加到PostMethod中
        RequestEntity  requestEntity = null;
        try {
            requestEntity = new StringRequestEntity(getXMLSearch(EBELN,MATNR,supplier,page),"text/xml", "UTF-8");
//            requestEntity = new StringRequestEntity(getXMLOne(supply,materialNo,purchaseNo,productDay,createDay,page),"text/xml", "UTF-8");
        } catch (UnsupportedEncodingException e) {
            log.error(e.toString());
        }
        // 设置请求头部，否则可能会报 “no SOAPAction header” 的错误
        postMethod.setRequestHeader("SOAPAction", "");
        // 设置请求体
        postMethod.setRequestEntity(requestEntity);
        int status = 0;
        try {
            status = client.executeMethod(postMethod);
            InputStream is = postMethod.getResponseBodyAsStream();
            // 获取请求结果字符串
            String result = IOUtils.toString(is);
            xmlobj = XML.toJSONObject(result);
        }catch (IOException e) {
            log.error(e.toString());
        }
        return xmlobj.toString();
    }
//    public String getXMLOne(String supply, String materialNo, String purchaseNo,Date productDay,Date createDay, int page){
    public String getXMLSearch( String EBELN,String MATNR,String supplier,int page){
        String soapXML=
                "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:urn=\"urn:sap-com:document:sap:rfc:functions\">\n" +
                        "   <soapenv:Header/>\n" +
                        "   <soapenv:Body>\n" +
                        "      <urn:ZPP_018>\n" +
                        "         <!--Optional:-->\n" +
                        "         <I_AEDAT></I_AEDAT>\n" +
                        "         <!--Optional:-->\n" +
                        "         <I_BEGIN></I_BEGIN>\n" +
                        "         <!--Optional:-->\n" +
                        "         <I_EBELN>"+EBELN+"</I_EBELN>\n" +
                        "         <!--Optional:-->\n" +
                        "         <I_EINDT></I_EINDT>\n" +
                        "         <!--Optional:-->\n" +
                        "         <I_END></I_END>\n" +
                        "         <I_LIFNR>"+supplier+"</I_LIFNR>\n" +
                        "         <!--Optional:-->\n" +
                        "         <I_MATNR>"+MATNR+"</I_MATNR>\n" +
                        "         <!--Optional:-->\n" +
                        "         <I_PAGE>"+page+"</I_PAGE>\n" +
                        "         <O_TABLE>\n" +
                        "            <!--Zero or more repetitions:-->\n" +
                        "         </O_TABLE>\n" +
                        "      </urn:ZPP_018>\n" +
                        "   </soapenv:Body>\n" +
                        "</soapenv:Envelope>";
        return soapXML;
    }

    @Override
    public String changePurchaseSale(String salecate, int page){
        String url = "http://172.16.10.21:8000/sap/bc/srt/rfc/sap/zvndorlabelws/800/zvndorlabelws/zvndorlabelws";
        int timeout = 100000000;
        log.info("HttpClient 发送SOAP请求");
        HttpClient client = new HttpClient();
        JSONObject xmlobj = new JSONObject();
        //如果需要用户名密码验证；不需要验证登录则不需要以下4行
        UsernamePasswordCredentials creds = new UsernamePasswordCredentials("L20891", "882158");
        client.getState().setCredentials(AuthScope.ANY, creds);
        //webservice 地址
        PostMethod postMethod = new PostMethod(url);
        // 设置连接超时
        client.getHttpConnectionManager().getParams().setConnectionTimeout(timeout);
        // 设置读取时间超时
        client.getHttpConnectionManager().getParams().setSoTimeout(timeout);
        // 然后把Soap请求数据添加到PostMethod中
        RequestEntity  requestEntity = null;
        try {
            requestEntity = new StringRequestEntity(getXMLSale(salecate,page),"text/xml", "UTF-8");
//            requestEntity = new StringRequestEntity(getXMLOne(supply,materialNo,purchaseNo,productDay,createDay,page),"text/xml", "UTF-8");
        } catch (UnsupportedEncodingException e) {
            log.error(e.toString());
        }
        // 设置请求头部，否则可能会报 “no SOAPAction header” 的错误
        postMethod.setRequestHeader("SOAPAction", "");
        // 设置请求体
        postMethod.setRequestEntity(requestEntity);
        int status = 0;
        try {
            status = client.executeMethod(postMethod);
            InputStream is = postMethod.getResponseBodyAsStream();
            // 获取请求结果字符串
            String result = IOUtils.toString(is);
            xmlobj = XML.toJSONObject(result);
        }catch (IOException e) {
            log.error(e.toString());
        }
        return xmlobj.toString();
    }

    public String getXMLSale( String salecate,int page){
        String soapXML=
                "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:urn=\"urn:sap-com:document:sap:rfc:functions\">\n" +
                        "   <soapenv:Header/>\n" +
                        "   <soapenv:Body>\n" +
                        "      <urn:ZPP_018>\n" +
                        "         <!--Optional:-->\n" +
                        "         <I_AEDAT></I_AEDAT>\n" +
                        "         <!--Optional:-->\n" +
                        "         <I_BEGIN></I_BEGIN>\n" +
                        "         <!--Optional:-->\n" +
                        "         <I_EBELN></I_EBELN>\n" +
                        "         <!--Optional:-->\n" +
                        "         <I_EINDT></I_EINDT>\n" +
                        "         <!--Optional:-->\n" +
                        "         <I_END></I_END>\n" +
                        "         <I_LIFNR></I_LIFNR>\n" +
                        "         <I_EKGRP>"+salecate+"</I_EKGRP>\n" +
                        "         <!--Optional:-->\n" +
                        "         <I_MATNR></I_MATNR>\n" +
                        "         <!--Optional:-->\n" +
                        "         <I_PAGE>"+page+"</I_PAGE>\n" +
                        "         <O_TABLE>\n" +
                        "            <!--Zero or more repetitions:-->\n" +
                        "         </O_TABLE>\n" +
                        "      </urn:ZPP_018>\n" +
                        "   </soapenv:Body>\n" +
                        "</soapenv:Envelope>";
        return soapXML;
    }

    @Override
    public String changePurchaseSaleSearch( String EBELN,String MATNR,String salecate, int page){
        String url = "http://172.16.10.21:8000/sap/bc/srt/rfc/sap/zvndorlabelws/800/zvndorlabelws/zvndorlabelws";
        int timeout = 100000000;
        log.info("HttpClient 发送SOAP请求");
        HttpClient client = new HttpClient();
        JSONObject xmlobj = new JSONObject();
        //如果需要用户名密码验证；不需要验证登录则不需要以下4行
        UsernamePasswordCredentials creds = new UsernamePasswordCredentials("L20891", "882158");
        client.getState().setCredentials(AuthScope.ANY, creds);
        //webservice 地址
        PostMethod postMethod = new PostMethod(url);
        // 设置连接超时
        client.getHttpConnectionManager().getParams().setConnectionTimeout(timeout);
        // 设置读取时间超时
        client.getHttpConnectionManager().getParams().setSoTimeout(timeout);
        // 然后把Soap请求数据添加到PostMethod中
        RequestEntity  requestEntity = null;
        try {
            requestEntity = new StringRequestEntity(getXMLSaleSearch( EBELN,MATNR,salecate,page),"text/xml", "UTF-8");
//            requestEntity = new StringRequestEntity(getXMLOne(supply,materialNo,purchaseNo,productDay,createDay,page),"text/xml", "UTF-8");
        } catch (UnsupportedEncodingException e) {
            log.error(e.toString());
        }
        // 设置请求头部，否则可能会报 “no SOAPAction header” 的错误
        postMethod.setRequestHeader("SOAPAction", "");
        // 设置请求体
        postMethod.setRequestEntity(requestEntity);
        int status = 0;
        try {
            status = client.executeMethod(postMethod);
            InputStream is = postMethod.getResponseBodyAsStream();
            // 获取请求结果字符串
            String result = IOUtils.toString(is);
            xmlobj = XML.toJSONObject(result);
        }catch (IOException e) {
            log.error(e.toString());
        }
        return xmlobj.toString();
    }

    public String getXMLSaleSearch(  String EBELN,String MATNR,String salecate,int page){
        String soapXML=
                "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:urn=\"urn:sap-com:document:sap:rfc:functions\">\n" +
                        "   <soapenv:Header/>\n" +
                        "   <soapenv:Body>\n" +
                        "      <urn:ZPP_018>\n" +
                        "         <!--Optional:-->\n" +
                        "         <I_AEDAT></I_AEDAT>\n" +
                        "         <!--Optional:-->\n" +
                        "         <I_BEGIN></I_BEGIN>\n" +
                        "         <!--Optional:-->\n" +
                        "         <I_EBELN>"+EBELN+"</I_EBELN>\n" +
                        "         <!--Optional:-->\n" +
                        "         <I_EINDT></I_EINDT>\n" +
                        "         <!--Optional:-->\n" +
                        "         <I_END></I_END>\n" +
                        "         <I_LIFNR></I_LIFNR>\n" +
                        "         <I_EKGRP>"+salecate+"</I_EKGRP>\n" +
                        "         <!--Optional:-->\n" +
                        "         <I_MATNR>"+MATNR+"</I_MATNR>\n" +
                        "         <!--Optional:-->\n" +
                        "         <I_PAGE>"+page+"</I_PAGE>\n" +
                        "         <O_TABLE>\n" +
                        "            <!--Zero or more repetitions:-->\n" +
                        "         </O_TABLE>\n" +
                        "      </urn:ZPP_018>\n" +
                        "   </soapenv:Body>\n" +
                        "</soapenv:Envelope>";
        return soapXML;
    }


    @Override
    public String getchargData(String purchaseOrder, String thingOrder, String supplier, String flag,String orDate,String deDate){
        // HttpClient发送SOAP请求
        String url = "http://172.16.10.21:8000/sap/bc/srt/rfc/sap/zvndorlabelws/800/zvndorlabelws/zvndorlabelws";
        int timeout = 100000000;
        log.info("HttpClient 发送SOAP请求");
        HttpClient client = new HttpClient();
        JSONObject xmlobj = new JSONObject();
        //如果需要用户名密码验证；不需要验证登录则不需要以下4行
        UsernamePasswordCredentials creds = new UsernamePasswordCredentials("L20891", "882158");
        client.getState().setCredentials(AuthScope.ANY, creds);
        //webservice 地址
        PostMethod postMethod = new PostMethod(url);
        // 设置连接超时
        client.getHttpConnectionManager().getParams().setConnectionTimeout(timeout);
        // 设置读取时间超时
        client.getHttpConnectionManager().getParams().setSoTimeout(timeout);
        // 然后把Soap请求数据添加到PostMethod中
        RequestEntity  requestEntity = null;
        try {
            requestEntity = new StringRequestEntity(getXMLTwo(purchaseOrder,thingOrder,supplier,flag,orDate,deDate),"text/xml", "UTF-8");
        } catch (UnsupportedEncodingException e) {
            log.error(e.toString());
        }

        // 设置请求头部，否则可能会报 “no SOAPAction header” 的错误
        postMethod.setRequestHeader("SOAPAction", "");
        // 设置请求体
        postMethod.setRequestEntity(requestEntity);
        int status = 0;
        try {
            status = client.executeMethod(postMethod);
            InputStream is = postMethod.getResponseBodyAsStream();
            // 获取请求结果字符串
            String result = IOUtils.toString(is);
            xmlobj = XML.toJSONObject(result);
        }catch (IOException e) {
            log.error(e.toString());
        }
        return xmlobj.toString();
    }

    /**
     * @return 获取请求报文  这里我是直接从soapui 里面测试再把请求报文复制过来的。
     */
    public String getXMLTwo(String purchaseOrder, String thingOrder, String supplier, String flag,String orDate, String deDate){
        String soapXML=
                "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:urn=\"urn:sap-com:document:sap:rfc:functions\">\n" +
                        "   <soapenv:Header/>\n" +
                        "   <soapenv:Body>\n" +
                        "      <urn:ZPP_021>\n" +
                        "         <I_EBELN>"+purchaseOrder+"</I_EBELN>\n" +
                        "         <I_FLAG>"+flag+"</I_FLAG>\n" +
                        "         <I_LIFNR>"+supplier+"</I_LIFNR>\n" +
                        "         <I_MATNR>"+thingOrder+"</I_MATNR>\n" +
                        "         <I_ZSCRQ>"+orDate+"</I_ZSCRQ>\n" +
                        "         <I_ZSHRQ>"+deDate+"</I_ZSHRQ>\n" +
                        "         <!--Optional:-->\n" +
                        "         <O_TABLE>\n" +
                        "         </O_TABLE>\n" +
                        "      </urn:ZPP_021>\n" +
                        "   </soapenv:Body>\n" +
                        "</soapenv:Envelope>";
        return soapXML;
    }

    @Override
    public String getchargCode(String purchaseOrder, String thingOrder, String supplier, String flag){
        // HttpClient发送SOAP请求
        String url = "http://172.16.10.21:8000/sap/bc/srt/rfc/sap/zvndorlabelws/800/zvndorlabelws/zvndorlabelws";
        int timeout = 100000000;
        log.info("HttpClient 发送SOAP请求");
        HttpClient client = new HttpClient();
        JSONObject xmlobj = new JSONObject();
        //如果需要用户名密码验证；不需要验证登录则不需要以下4行
        UsernamePasswordCredentials creds = new UsernamePasswordCredentials("L20891", "882158");
        client.getState().setCredentials(AuthScope.ANY, creds);
        //webservice 地址
        PostMethod postMethod = new PostMethod(url);
        // 设置连接超时
        client.getHttpConnectionManager().getParams().setConnectionTimeout(timeout);
        // 设置读取时间超时
        client.getHttpConnectionManager().getParams().setSoTimeout(timeout);
        // 然后把Soap请求数据添加到PostMethod中
        RequestEntity  requestEntity = null;
        try {
            requestEntity = new StringRequestEntity(getXMLThree(purchaseOrder,thingOrder,supplier,flag),"text/xml", "UTF-8");
        } catch (UnsupportedEncodingException e) {
            log.error(e.toString());
        }

        // 设置请求头部，否则可能会报 “no SOAPAction header” 的错误
        postMethod.setRequestHeader("SOAPAction", "");
        // 设置请求体
        postMethod.setRequestEntity(requestEntity);
        int status = 0;
        try {
            status = client.executeMethod(postMethod);
            InputStream is = postMethod.getResponseBodyAsStream();
            // 获取请求结果字符串
            String result = IOUtils.toString(is);
            xmlobj = XML.toJSONObject(result);
        }catch (IOException e) {
            log.error(e.toString());
        }
        return xmlobj.toString();
    }

    /**
     * @return 获取请求报文  这里我是直接从soapui 里面测试再把请求报文复制过来的。
     */
    public String getXMLThree(String purchaseOrder, String thingOrder, String supplier, String flag){
        String soapXML=
                "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:urn=\"urn:sap-com:document:sap:rfc:functions\">\n" +
                        "   <soapenv:Header/>\n" +
                        "   <soapenv:Body>\n" +
                        "      <urn:ZPP_024>\n" +
                        "         <T_TABLE>\n" +
                        "            <!--Zero or more repetitions:-->\n" +
                        "            <item>\n" +
                        "               <MANDT></MANDT>\n" +
                        "               <ZZTIMESTAMP></ZZTIMESTAMP>\n" +
                        "               <EBELN></EBELN>\n" +
                        "               <EBELP></EBELP>\n" +
                        "               <BEDAT></BEDAT>\n" +
                        "               <EINDT></EINDT>\n" +
                        "               <MATNR></MATNR>\n" +
                        "               <MAKTX></MAKTX>\n" +
                        "               <MENGE></MENGE>\n" +
                        "               <SUMMENGE></SUMMENGE>\n" +
                        "               <LIFNR></LIFNR>\n" +
                        "               <DELIVERYQUANTITY></DELIVERYQUANTITY>\n" +
                        "               <ZCZ></ZCZ>\n" +
                        "               <ZZJTNUM></ZZJTNUM>\n" +
                        "               <HSDAT></HSDAT>\n" +
                        "               <WEIGHT></WEIGHT>\n" +
                        "               <DATUM></DATUM>\n" +
                        "               <CHARG></CHARG>\n" +
                        "               <PRINTNO></PRINTNO>\n" +
                        "            </item>\n" +
                        "         </T_TABLE>\n" +
                        "      </urn:ZPP_024>\n" +
                        "   </soapenv:Body>\n" +
                        "</soapenv:Envelope>";
        return soapXML;
    }

    @Override
    public String changeGetOutSourcingData(int page){
        // HttpClient发送SOAP请求
        String url = "http://172.16.10.21:8000/sap/bc/srt/rfc/sap/zvndorlabelws/800/zvndorlabelws/zvndorlabelws";
        int timeout = 100000000;
        log.info("HttpClient 发送SOAP请求");
        String username=getUsername();
        System.out.println(username);
        HttpClient client = new HttpClient();
        JSONObject xmlobj = new JSONObject();
        //如果需要用户名密码验证；不需要验证登录则不需要以下4行
        UsernamePasswordCredentials creds = new UsernamePasswordCredentials("L20891", "882158");
        client.getState().setCredentials(AuthScope.ANY, creds);
        //webservice 地址
        PostMethod postMethod = new PostMethod(url);
        // 设置连接超时
        client.getHttpConnectionManager().getParams().setConnectionTimeout(timeout);
        // 设置读取时间超时
        client.getHttpConnectionManager().getParams().setSoTimeout(timeout);
        // 然后把Soap请求数据添加到PostMethod中
        RequestEntity  requestEntity = null;
            try {
                requestEntity = new StringRequestEntity(getXML(username,page),"text/xml", "UTF-8");
            } catch (UnsupportedEncodingException e) {
                log.error(e.toString());
            }

            // 设置请求头部，否则可能会报 “no SOAPAction header” 的错误
            postMethod.setRequestHeader("SOAPAction", "");
            // 设置请求体
            postMethod.setRequestEntity(requestEntity);
            int status = 0;
            try {
                status = client.executeMethod(postMethod);
                InputStream is = postMethod.getResponseBodyAsStream();
                // 获取请求结果字符串
                String result = IOUtils.toString(is);
                xmlobj = XML.toJSONObject(result);
            }catch (IOException e) {
                log.error(e.toString());
            }
        return xmlobj.toString();
    }

    /**
     * @return 获取请求报文  这里我是直接从soapui 里面测试再把请求报文复制过来的。
     */
    public String getXML( String username,int page){
        String soapXML=
                "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:urn=\"urn:sap-com:document:sap:rfc:functions\">\n" +
                        "   <soapenv:Header/>\n" +
                        "   <soapenv:Body>\n" +
                        "      <urn:ZPPF_029>\n" +
                        "         <!--Optional:-->\n" +
                        "         <I_LIFNR>"+username+"</I_LIFNR>\n" +
                        "         <!--Optional:-->\n" +
                        "         <I_PAGE>"+page+"</I_PAGE>\n" +
                        "         <!--Optional:-->\n" +
                        "         <T_TAB>\n" +
                        "            <!--Zero or more repetitions:-->\n" +
                        "         </T_TAB>\n" +
                        "      </urn:ZPPF_029>\n" +
                        "   </soapenv:Body>\n" +
                        "</soapenv:Envelope>";
        return soapXML;
    }




    public boolean updatePushSale(PushSale pushSale) {
        int result = sysDeliverOrderMapper.updatePushSale(pushSale);
        return result > 0; // 如果result大于0，表示更新操作影响了至少一行
    }
    public boolean updateDelete(Delete delete) {
        int result = sysDeliverOrderMapper.delete(delete);
        return result > 0; // 如果result大于0，表示更新操作影响了至少一行
    }
    public Push pushSale(PushSale pushSale) {
        String mes = "";
        Push push = new Push();
        log.info("sap发送请求");
        sysDeliverOrderMapper.updatePushSale(pushSale);
//        try {
            boolean isUpdate = updatePushSale(pushSale);
            if (!isUpdate) {
                if (pushSale.getAsnNo()==""){
                    push.setCode("9999");
                    push.setMessage("ASN单号为空");
                } else if (pushSale.getPoNo()==""){
                    push.setCode("9999");
                    push.setMessage("采购单号为空");
                } else if (pushSale.getCancelBill()==""){
                    push.setCode("9999");
                    push.setMessage("冲销说明为空");
                } else if (pushSale.getPoLineNo()==0){
                    push.setCode("9999");
                    push.setMessage("行号为空");
                } else {
                    push.setCode("9999");
                    push.setMessage("ASN单号/采购单号输入错误，找不到该条数据");
                }
            } else {
                push.setCode("1000");
                push.setMessage("成功");
            }
//        } catch (Exception e) {
//            log.error(e.toString());
//            mes=e.getMessage();
//            e.printStackTrace();
//        }
//        push.setCode("9999");
//        push.setMessage(mes);
        return push;
    }

    public String Remain(Select select) {
        return sysDeliverOrderMapper.remainSelect(select);
//        return sysDeliverOrderMapper.updateSelect(select);
    }

    @Override
    public Push delete(Delete delete) {
        String mes = "";
        Push push = new Push();
        log.info("sap发送请求");
        sysDeliverOrderMapper.delete(delete);
//        try {
        boolean isUpdate = updateDelete(delete);
        if (!isUpdate) {
            if (delete.getAsnNo()==""){
                push.setCode("9999");
                push.setMessage("ASN单号为空");
            } else if (delete.getPoNo()==""){
                push.setCode("9999");
                push.setMessage("采购单号为空");
            } else if (delete.getLineNumber()==""){
                push.setCode("9999");
                push.setMessage("ASN行号为空");
            } else if (delete.getPoLineNo()==0){
                push.setCode("9999");
                push.setMessage("采购行号为空");
            } else {
                push.setCode("9999");
                push.setMessage("ASN单号/采购单号输入错误，找不到该条数据");
            }
        } else {
            push.setCode("1000");
            push.setMessage("成功");
        }
        return push;
    }

}
