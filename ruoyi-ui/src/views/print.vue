<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="form" size="small" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="物料编码" prop="MATNR">
        <el-input
          v-model="queryParams.MATNR"
          placeholder="请输入物料编码"
          clearable
          style="width: 240px"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="采购订单编号" prop="EBELN">
        <el-input
          v-model="queryParams.EBELN"
          placeholder="请输入采购订单编号"
          clearable
          style="width: 240px"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <!-- <el-form-item label="供应商" prop="LIFNR">
        <el-input
          v-model="queryParams.LIFNR"
          placeholder="请输入供应商"
          clearable
          style="width: 240px"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="下单日期" prop="BEDAT">
        <el-date-picker clearable
          v-model="queryParams.BEDAT"
          type="date"
          value-format="yyyy-MM-dd"
          placeholder="请选择下单日期">
        </el-date-picker>
      </el-form-item>
      <el-form-item label="交货日期" prop="EINDT">
        <el-date-picker clearable
          v-model="queryParams.EINDT"
          type="date"
          value-format="yyyy-MM-dd"
          placeholder="请选择交货日期">
        </el-date-picker>
      </el-form-item>    -->
      <el-form-item>
        <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
        <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button
          id="ddButton"
          type="primary"
          plain
          icon="el-icon-tickets"
          size="mini"
          :disabled="single"
          @click="dd"
        >生成送货单</el-button>
      </el-col>
      <el-col :span="12" style="color:red;font-size: 20px;padding-left:25px"> 严禁超单，超单不入库退货处理！</el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="data.tableData.item" @selection-change="handleSelectionChange">
      <template slot="empty">
        <p>{{tableEmptyText}}</p>
      </template>
      <el-table-column type="selection" width="50" align="center" v-model="selectionCtrl"/>
      <el-table-column label="序号" type="index" align="center">
        <template slot-scope="scope" v-if="serach">
          <span>{{(pageNum - 1) * pageSize + scope.$index + 1}}</span>
        </template>
      </el-table-column>
      <el-table-column label="工厂" align="center" prop="WERKS" />
      <el-table-column label="采购订单编号" align="center" prop="EBELN"/>
      <el-table-column label="行号" align="center" prop="EBELP" />
      <el-table-column label="项目类别" align="center" prop="PTEXT" />
      <el-table-column label="下单日期" align="center" prop="BEDAT" />
      <el-table-column label="供应商" align="center" prop="LIFNR" />
      <!-- <el-table-column label="交货日期" align="center" prop="EINDT" width="100"/> -->
      <el-table-column label="物料编码" align="center" prop="MATNR" width="115"/>
      <el-table-column label="物料描述" align="center" prop="MAKTX" width="400"/>
      <el-table-column label="下单数量" align="center" prop="MENGE" />
      <el-table-column label="已交货数量" align="center" prop="SUMMENGE" />
      <el-table-column label="送货日期" align="center" prop="deliverDate" width="160">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.deliverDate, '{y}-{m}-{d}') }}</span>
        </template>
        <template slot-scope="scope">
          <el-date-picker
            class="date-picker"
            v-model="scope.row.deliverDate"  
            :value="scope.row.deliverDate"
            type="date"
            format="yyyy-MM-dd"
            value-format="yyyy-MM-dd" 
           >
          </el-date-picker>
        </template>
      </el-table-column>
      <el-table-column label="送货数量" align="center" prop="expectedQty" width="100" >
        <template slot-scope="scope">
          <el-input v-model="scope.row.expectedQty"></el-input>
        </template>
      </el-table-column>
      <!-- 
      <el-table-column label="剩余送货数" align="center" prop="UEBTK" />  
      <el-table-column label="标签数量" align="center" prop="DELIVERYQUANTITY" >
                <template slot-scope="scope">
                  <el-input v-model="scope.row.DELIVERYQUANTITY"></el-input>
                </template>
      </el-table-column>
      <el-table-column label="标签重量" align="center" prop="WEIGHT" >
        <template slot-scope="scope">
          <el-input v-model="scope.row.WEIGHT"  :value="scope.row.WEIGHT"></el-input>
        </template>
      </el-table-column>
      <el-table-column label="材质" align="center" prop="ZCZ" >
        <template slot-scope="scope">
          <el-input v-model="scope.row.ZCZ"  :value="scope.row.ZCZ"></el-input>
        </template>
      </el-table-column>
      <el-table-column label="打印份数" align="center" prop="printno" width="100">
        <template slot-scope="scope">
          <el-input v-model="scope.row.printno"  :value="0" type="number" oninput="if(value<0)value=0"></el-input>
        </template>
      </el-table-column>
      <el-table-column label="颜色" align="center" prop="YCPICI" width="100">
        <template slot-scope="scope">
          <el-input v-model="scope.row.YCPICI"  value="" type="text"></el-input>
        </template>
      </el-table-column>
      <el-table-column label="机台" align="center" prop="ZZJTNUM" >
        <template slot-scope="scope">
          <el-input v-model="scope.row.ZZJTNUM"  :value="scope.row.ZZJTNUM"></el-input>
        </template>
      </el-table-column>

      <el-table-column label="工厂" align="center" prop="WERKS" >
     <template slot-scope="scope">
       <el-input v-model="scope.row.WERKS"  :value="scope.row.WERKS"></el-input>
        </template>
      </el-table-column>
      <el-table-column v-if="false" label="已打印份数1" align="center" prop="number1" width="50">
        <template slot-scope="scope">
          <el-input v-model="scope.row.number1"  :value="1" type="number" disabled></el-input>
        </template>
      </el-table-column>
      <el-table-column v-if="false"  label="已打印份数2" align="center" prop="number2" width="50">
        <template slot-scope="scope">
          <el-input v-model="scope.row.number2"  :value="2" type="number" disabled></el-input>
        </template>
      </el-table-column>
      <el-table-column v-if="false"  label="已打印份数3" align="center" prop="number3" width="50">
        <template slot-scope="scope">
          <el-input v-model="scope.row.number3"  :value="1" type="number" disabled></el-input>
        </template>
      </el-table-column> -->

    </el-table>

    <pagination 
      v-show="total>0" 
      :total="total" 
      :page.sync="pageNum" 
      :limit.sync="pageSize" 
       @pagination="getList"
    />


    <!-- 重置密码 -->
    <el-dialog title="密码过于简单，请修改密码" :visible.sync="openPwd" width="600px" append-to-body :close-on-click-modal ="false"  :show-close="false">
      <el-form ref="formreset" :model="user" :rules="rules" label-width="80px">
        <el-form-item label="旧密码" prop="oldPwd">
          <el-input v-model="user.oldPwd" placeholder="请输入旧密码" type="password" show-password/>
        </el-form-item>
        <el-form-item label="新密码" prop="newPwd">
          <el-input v-model="user.newPwd" placeholder="请输入新密码" type="password" show-password/>
        </el-form-item>
        <el-form-item label="确认密码" prop="confirmPassword">
          <el-input v-model="user.confirmPassword" placeholder="请确认新密码" type="password" show-password/>
        </el-form-item>
        <el-form-item>
          <el-button type="primary" size="mini" @click="submit">保存</el-button>
       <!--    <el-button type="danger" size="mini" @click="close">关闭</el-button> -->
        </el-form-item>
      </el-form>
    </el-dialog>
  </div>
</template>

<script>
import { addOrder,adddOrder,getOrderID,getPurchaseDataOne,getSalecate,getPurchase,selectRemain,addOrderWms,getSalecateSearch} from "@/api/deliver/order";
import { updateUserPwd} from '@/api/system/user'
import Cookies from 'js-cookie'
import { getInfo } from "@/api/login.js";
import { getToken, setToken, removeToken } from '@/utils/auth'

export default {
  name: "print",
  data() {
    const equalToPassword = (rule, value, callback) => {
      if (this.user.newPwd !== value) {
        callback(new Error("两次输入的密码不一致"));
      } else {
        callback();
      }
    };
    return {
      // 版本号
      version: "3.8.5",
      // 遮罩层
      loading: true,
      // 选中数组
      ids: [],
      // 非单个禁用
      single: true,
      // 非多个禁用
      multiple: true,
      selectionCtrl:'',
      // 显示搜索条件
      showSearch: true,
      // 总条数
      total: 0,
      pageNum: 1,
      pageSize: 10,
      // 用户表格数据
      userList: [{"ZRETQYTY":"","deliverDate":"","SUMMENGE":"","ZCKGLY":"","LGFSB":"","UEBTO":"0","EBELN":"","EBELP":"","BEDAT":"","EINDT":"","MATNR":"","MAKTX":"","MENGE":"","remainDeliver":"","LIFNR":"","expectedQty":"","DELIVERYQUANTITY":"","ZCZ":"","ZZJTNUM":"","HSDAT":"","WEIGHT":"","CHARG":"","DATE1":"","DATE2":"","ZBISMT":"","ZWWLX":"","PSTYP":"","PTEXT":"","EKGRP":"","ZGSBER":""}],
      CHARG:"",
      serach:true,
      // 弹出层标题
      title: "打印内容",
      // 部门树选项
      deptOptions: undefined,
      // 是否显示弹出层
      open: false,
      open2: false,
      // 部门名称
      deptName: undefined,
      // 默认密码
      initPassword: undefined,
      // 日期范围
      dateRange: [],
      // 岗位选项
      postOptions: [],
      // 角色选项
      roleOptions: [],
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        // expectedQty: [
        //   { required: true, message: "送货数量不能为空", trigger: "blur" }
        // ],
        // SUMMENGE: [
        //   { required: true, message: "送货日期不能为空", trigger: "blur" }
        // ],
      },
      tableEmptyText:'',
      asnNo:"",
      push:"",
      tuihuo:"",
      // 查询参数
      queryParams: {
        page: 1,
        pageSize: 10,
        EBELN: "",
        MATNR: "",
        supplier:""
      },
      data: {
        tableData: {
          item: []
        }
      },
      //提交到wms
      jsonData:{
        asnNo: "",
        supplierId: "",
        expectedArriveTime1: "",
        addTime: this.getCurrentDate(),
        placeOfDelivery: "",
        addWho: "",
        detail: [{
          asnNo: '',
          asnLineNo:'10',
          poNo: '',
          lotatt15: '',
          sku: '',
          skuDescr: '',
          expectedQty: '',
          totalNetWeight:'',
          packUom:'',
          udf03: '',
          overRcvPercentage: '',
          udf04: '',
          qcStatus: '',
          lotatt09: '',
          lotatt14: '',
          lotatt20:'',
        }]
      },
      //重置密码对话框显示
      user: {
        oldPassword: undefined,
        newPassword: undefined,
        confirmPassword: undefined
      },
      openPwd:false,
      rules: {
        oldPwd: [
          { required: true, message: "旧密码不能为空", trigger: "blur" }
        ],
        newPwd: [
          { required: true, message: "新密码不能为空", trigger: "blur" },
          {required: true,message: "密码强度不符合要求,必须包含一个数字、一个英文小写字母、一个英文大写字母,至少8位",pattern:/^(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$/, trigger: "blur"},
          { min: 6, max: 20, message: "长度在 6 到 20 个字符", trigger: "blur" }
        ],
        confirmPassword: [
          { required: true, message: "确认密码不能为空", trigger: "blur" },
          { required: true, validator: equalToPassword, trigger: "blur" }
        ]
      },
    };
  },
  created() {
    getInfo().then(response => {
      //重置密码对话框显示
      if(response.user.loginDate==null||response.user.loginDate==undefined||response.user.loginIp==null||response.user.loginIp==undefined){
        this.openPwd=true;
        return false;
      }    
    });
    this.getList()
  },
  methods: {
    goTarget(href) {
      window.open(href, "_blank");
    },
    // 获取当前时间
    getCurrentDate() {
      let now = new Date();
      let year = now.getFullYear();
      let month = now.getMonth() + 1;
      let day = now.getDate();
      return year + "-" + month + "-" + day;
    },
    dd(){
      this.deliverorder(this.userList[0].expectedQty);
    },
    // 生成送货单按钮功能包括提交和新增，生成送货单号
    deliverorder(){
      document.getElementById("ddButton").disabled = true;
      // 延迟2秒后重新启用按钮
      setTimeout(function() {
          document.getElementById("ddButton").disabled = false;
      }, 2000);
      
      if(this.userList[0].expectedQty==undefined || this.userList[0].expectedQty==0){
        this.$alert("请填写送货数量");
        return;
      }
      if(this.userList[0].deliverDate==undefined || this.userList[0].deliverDate==0){
        this.$alert("请填写送货日期");
        return;
      }
      // 下单数量-送货平台生成ASN单数量+采购订单退货数量;  退货数量: ZRETQYTY(sap接口)
      if(this.userList[0].ZRETQYTY==null||this.userList[0].ZRETQYTY==0){
        this.userList[0].ZRETQYTY=0
      }
      console.log(Number(this.userList[0].MENGE)+ Number(this.userList[0].ZRETQYTY)- Number(this.tuihuo))
      // if( Number(this.userList[0].MENGE)+ Number(this.userList[0].ZRETQYTY)- Number(this.tuihuo)  < Number(this.userList[0].expectedQty) ){
      //   this.$alert("送货超量，请重新填写");
      //   return;
      // }
      // var maxDeliver=Number(this.userList[0].MENGE)-Number(this.userList[0].SUMMENGE);
      // if(Number(this.userList[0].expectedQty) > Number(maxDeliver)){
      //   this.$alert("送货数量超过最大送货数量");
      //   return
      // }
      // 修改按钮功能
      this.form.deliverId = this.userList[0].deliverId || this.ids
      this.form=this.userList[0];
  
      // console.log(JSON.stringify(this.form))

      if(this.form['ZWWLX']=='电镀委外' && this.form['PSTYP']=='3'){
      //生成送货单号
      getOrderID().then(response=>{   
        console.log(response)
        if(response!=undefined || response!=null){
          this.$modal.msgSuccess("获取单号成功");
          this.asnNo = response; 
          getInfo().then(response=>{
            if(response.roles=="purchase"){
              //提交到wms
              this.jsonData.asnNo = this.asnNo;
              console.log(this.asnNo)
              this.jsonData.supplierId = this.form['LIFNR'];
              this.jsonData.expectedArriveTime1 = this.form['deliverDate'];
              this.jsonData.addTime = this.getCurrentDate();
              this.jsonData.addWho =  this.form['LIFNR'];
              this.jsonData.detail[0].asnNo = this.asnNo;
              this.jsonData.detail[0].poLineNo = this.form['EBELP'];
              this.jsonData.detail[0].poNo = this.form['EBELN'];
              this.jsonData.detail[0].sku = this.form['MATNR'];
              this.jsonData.detail[0].skuDescr = this.form['MAKTX'];
              this.jsonData.detail[0].expectedQty = this.form['expectedQty'];
              this.jsonData.detail[0].lotatt15 = this.form['ZGSBER']; // SUMMENGE
              this.jsonData.detail[0].lotatt14 = this.form['WERKS'];
              this.jsonData.detail[0].lotatt20 = this.form['HSDAT'];
              console.log("this.jsonData"+JSON.stringify(this.jsonData));
              addOrderWms(this.jsonData).then(res=>{
                console.log(JSON.stringify(res))
                if(res.RETURN_CODE=='1000'){
                  this.$modal.msgSuccess("提交成功");
                  // 提交按钮功能
                  var arr={};
                  arr['poNo'] = this.form['EBELN'];
                  arr['factory'] = this.form['WERKS'];
                  arr['expectedQty'] = this.form['expectedQty'];
                  arr['poLineNo'] = this.form['EBELP'];
                  // arr['orderDate'] = this.form['BEDAT'];下单日期->生产日期不传
                  arr['deliveryDate'] = this.form['deliverDate'];//送货日期
                  arr['deliveredQuantity'] = this.form['SUMMENGE'];//已交货数量
                  arr['skuDescr'] = this.form['MAKTX'];
                  arr['sku'] = this.form['MATNR'];
                  arr['orderQuantity'] = this.form['MENGE'];
                  arr['labelNumber'] = this.form['DELIVERYQUANTITY'];
                  arr['labelWeight'] = this.form['WEIGHT'];
                  arr['material'] = this.form['ZCZ1'];
                  arr['supplieId'] = this.form['LIFNR'];
                  arr['specification'] = this.form['ZGROES'];
                  arr['projectCategory'] = this.form['EKGRP'];
                  arr['lotatt15'] = this.form['ZGSBER'];
                  arr['asnNo'] = this.asnNo;
                  arr['lineNumber'] = "10"; //送货行号默认10
                  arr['reviewStatus'] = "已审核";
                  arr['overRcvPercentage'] = this.form['UEBTO'];
                  arr['remainDeliver'] = this.form['UEBTK'];
                  arr['stockLocat'] = this.form['LGFSB'];
                  arr['manager'] = this.form['ZCKGLY'];
                  arr['remainDeliver'] = 0;
                  arr['addWho'] = Cookies.get("username");
                  console.log( Cookies.get("username"))
                  // 通过api接口发送请求到后端接口/deliver/order
                  adddOrder(arr).then(response => {
                    this.$modal.msgSuccess("新增成功");
                    this.getListB();             
                  }).catch(error=>{ 
                    this.$alert("新增失败");   
                  });
                }else{
                  alert("wms提交失败请重试-"+res.RETURN_DESC) 
                }
              }).catch(error=>{
                console.log(error)    
              })
            }

            if(response.roles=="admin"||response.roles=="user"){
              // 提交按钮功能
              var arr={};
              arr['poNo'] = this.form['EBELN'];
              arr['factory'] = this.form['WERKS'];
              arr['expectedQty'] = this.form['expectedQty'];
              arr['poLineNo'] = this.form['EBELP'];
              // arr['orderDate'] = this.form['BEDAT'];下单日期->生产日期不传
              arr['deliveryDate'] = this.form['deliverDate'];//送货日期
              arr['deliveredQuantity'] = this.form['SUMMENGE'];//已交货数量
              arr['skuDescr'] = this.form['MAKTX'];
              arr['sku'] = this.form['MATNR'];
              arr['orderQuantity'] = this.form['MENGE'];
              arr['labelNumber'] = this.form['DELIVERYQUANTITY'];
              arr['labelWeight'] = this.form['WEIGHT'];
              arr['material'] = this.form['ZCZ1'];
              arr['supplieId'] = this.form['LIFNR'];
              arr['specification'] = this.form['ZGROES'];
              arr['projectCategory'] = this.form['EKGRP'];
              arr['lotatt15'] = this.form['ZGSBER'];
              arr['asnNo'] = this.asnNo;
              arr['lineNumber'] = "10"; //送货行号默认10
              arr['reviewStatus'] = "已审核";
              arr['overRcvPercentage'] = this.form['UEBTO'];
              arr['remainDeliver'] = this.form['UEBTK'];
              arr['stockLocat'] = this.form['LGFSB'];
              arr['manager'] = this.form['ZCKGLY'];
              arr['remainDeliver'] = 0;
              arr['addWho'] = Cookies.get("username");
                  console.log( Cookies.get("username"))
              // 通过api接口发送请求到后端接口/deliver/order
              addOrder(arr).then(response => {
                this.$modal.msgSuccess("新增成功");
                this.getListB();             
              }).catch(error=>{ 
                this.$alert("新增失败");   
              });
            }
          })
        }else{
          this.$modal.msgSuccess("获取单号失败");
        }
      })
      }

    },
    /** 查询用户列表 */
    getListB(){
      // this.data.tableData.item[0].SUMMENGE= Number(this.userList[0].SUMMENGE) - Number(this.userList[0].expectedQty)     
      this.data.tableData.item[0].expectedQty=null 
      this.selectionCtrl=''
    },
    getList() {
      this.tableEmptyText = '暂无数据';
      this.loading = true;
      getInfo().then(response=>{
        if(response.roles=="purchase"){
        if(this.queryParams.EBELN==""&&this.queryParams.MATNR==""){
          var arrayPur={};
          arrayPur['salecate'] =  response.user.userName;
          console.log(response.roles[0])
          arrayPur['page'] = this.pageNum;
          getSalecate(arrayPur).then(response=>{
            // this.data.tableData.item =[ {"deliverDate":"","SUMMENGE":"","ZCKGLY":"","LGFSB":"","UEBTK":"","UEBTO":"0","WERKS":"","EBELN":"","EBELP":"","BEDAT":"","EINDT":"","MATNR":"","MAKTX":"","MENGE":"","LIFNR":"","expectedQty":"","DELIVERYQUANTITY":"","ZCZ":"","ZZJTNUM":"","HSDAT":"","WEIGHT":"","CHARG":"","DATE1":"","DATE2":"","ZBISMT":"","PSTYP":"","PTEXT":"","EKGRP":"","ZGSBER":""}];
            // this.userList = [{"deliverDate":"","SUMMENGE":"","ZCKGLY":"","LGFSB":"","UEBTK":"","UEBTO":"0","WERKS":"","EBELN":"","EBELP":"","BEDAT":"","EINDT":"","MATNR":"","MAKTX":"","MENGE":"","LIFNR":"","expectedQty":"","DELIVERYQUANTITY":"","ZCZ":"","ZZJTNUM":"","HSDAT":"","WEIGHT":"","CHARG":"","DATE1":"","DATE2":"","ZBISMT":"","PSTYP":"","PTEXT":"","EKGRP":"","ZGSBER":""}];
            
            if(response["soap-env:Envelope"]["soap-env:Body"]["soap-env:Fault"]!=null||
            response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"]["E_TOTALPAGE"]==0 ){
              this.loading = false;
              return;
            }else{
              if(response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"]["O_TABLE"]["item"]!=null){   
                // this.data.tableData.item = response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"]["O_TABLE"]["item"];
                // this.userList = this.data.tableData.item;
                if(response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"]["O_TABLE"]["item"].length==1){
                  this.data.tableData.item = [response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"]["O_TABLE"]["item"]];
                  this.userList = this.data.tableData.item;
                }else if(response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"]["O_TABLE"]["item"].length<10&&response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"]["O_TABLE"]["item"].length!=1){
                  this.data.tableData.item = response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"]["O_TABLE"]["item"];
                  this.userList = this.data.tableData.item;
                  for (let i = 0; i < response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"]["O_TABLE"]["item"].length; i++) {
                    this.push= Number( this.userList[i].MENGE -  this.userList[i].SUMMENGE )
                    this.$set(this.data.tableData.item[i], "expectedQty", this.push)
                  }                
                }else{
                  this.data.tableData.item = response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"]["O_TABLE"]["item"];
                  this.userList = this.data.tableData.item;
                  for (let i = 0; i < 10; i++) {
                    this.push= Number( this.userList[i].MENGE -  this.userList[i].SUMMENGE )
                    this.$set(this.data.tableData.item[i], "expectedQty", this.push)
                  }               
                }
                // post计算剩余送货数 渲染到列表
                // for (let i = 0; i < response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"].E_TOTALPAGE; i++) {
                //   var select={}
                //   select['poNo'] = this.userList[i].EBELN
                //   select['poLineNo'] = this.userList[i].EBELP
                //   selectRemain(select).then(res=>{
                //     if(res==null){
                //       this.push=0
                //     }else{
                //       this.push=res  
                //       this.userList[i].UEBTK= Number( this.userList[i].MENGE*(1+this.userList[i].UEBTO) ) - Number( this.push)
                //       this.data.tableData.item[i].UEBTK= this.userList[i].UEBTK
                //     }
                //   })
                // } 

                // post计算剩余送货数 渲染到列表
                // for (let i = 0; i < 10; i++) {
                //   var select={}
                //   select['poNo'] = this.userList[i].EBELN
                //   select['poLineNo'] = this.userList[i].EBELP
                //   selectRemain(select).then(res=>{
                //     if(res==null){
                //       this.push=0
                //     }else{
                //       this.push=res  
                //       this.userList[i].UEBTK= Number( this.userList[i].MENGE*(1+this.userList[i].UEBTO) ) - Number( this.push)
                //       this.data.tableData.item[i].UEBTK= this.userList[i].UEBTK
                //     }
                //   })
                // } 

              }else{
                this.$set(this.data.tableData.item,0,response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"]["O_TABLE"]["item"]);
                this.$set(this.userList,0,response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"]["O_TABLE"]["item"]);
              }
            }
              this.total = response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"]["E_TOTALPAGE"];
              this.loading = false;           
          })

        }else{ 
          
          var arrPur={};
          arrPur['EBELN'] =  this.queryParams.EBELN;
          arrPur['MATNR'] = this.queryParams.MATNR;
          arrPur['salecate'] =  response.user.userName;
          // arrPur['LIFNR'] = this.queryParams.LIFNR;
          arrPur['page'] = this.pageNum;  
          console.log(this.pageNum)
          // arrPur['page'] = 1;
          getSalecateSearch(arrPur).then(response=>{
            console.log(JSON.stringify(response))
            // this.data.tableData.item = [{"deliverDate":"","SUMMENGE":"","ZCKGLY":"","LGFSB":"","UEBTO":"0","WERKS":"","EBELN":"","EBELP":"","BEDAT":"","EINDT":"","MATNR":"","MAKTX":"","MENGE":"","remainDeliver":"","LIFNR":"","expectedQty":"","DELIVERYQUANTITY":"","ZCZ":"","ZZJTNUM":"","HSDAT":"","WEIGHT":"","CHARG":"","DATE1":"","DATE2":"","ZBISMT":"","PSTYP":"","PTEXT":"","EKGRP":"","ZGSBER":""}];
            // this.userList = [{"deliverDate":"","SUMMENGE":"","ZCKGLY":"","LGFSB":"","UEBTO":"0","WERKS":"","EBELN":"","EBELP":"","BEDAT":"","EINDT":"","MATNR":"","MAKTX":"","MENGE":"","remainDeliver":"","LIFNR":"","expectedQty":"","DELIVERYQUANTITY":"","ZCZ":"","ZZJTNUM":"","HSDAT":"","WEIGHT":"","CHARG":"","DATE1":"","DATE2":"","ZBISMT":"","PSTYP":"","PTEXT":"","EKGRP":"","ZGSBER":""}];
      
            if(response["soap-env:Envelope"]["soap-env:Body"]["soap-env:Fault"]!=null||
            response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"]["E_TOTALPAGE"]==0|| 
            response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"]["E_MESG"]=="无数据"){
              // this.serach=false 
              this.loading = false;
              this.$modal.msgSuccess("暂无数据"); 
              this.data.tableData.item = [{"deliverDate":"","SUMMENGE":"","ZCKGLY":"","LGFSB":"","UEBTO":"","WERKS":"","EBELN":"","EBELP":"","BEDAT":"","EINDT":"","MATNR":"","MAKTX":"","MENGE":"","remainDeliver":"","LIFNR":"","expectedQty":"","DELIVERYQUANTITY":"","ZCZ":"","ZZJTNUM":"","HSDAT":"","WEIGHT":"","CHARG":"","DATE1":"","DATE2":"","ZBISMT":"","ZWWLX":"","PSTYP":"","PTEXT":"","EKGRP":"","ZGSBER":""}];
      
              this.total = response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"].E_TOTALPAGE;
            }else{
              if(response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"]["O_TABLE"]["item"]!=null){
                if(response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"]["O_TABLE"]["item"].length==undefined||response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"].E_TOTALPAGE==1){
                  this.data.tableData.item = [response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"]["O_TABLE"]["item"]];
                  this.userList = this.data.tableData.item;
                }else if(response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"]["O_TABLE"]["item"].length<10&&response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"]["O_TABLE"]["item"].length!=1){
                  this.data.tableData.item = response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"]["O_TABLE"]["item"];
                  this.userList = this.data.tableData.item;
                  for (let i = 0; i < response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"]["O_TABLE"]["item"].length; i++) {
                    this.push= Number( this.userList[i].MENGE -  this.userList[i].SUMMENGE )
                    this.$set(this.data.tableData.item[i], "expectedQty", this.push)
                  }                
                }else{
                  this.data.tableData.item = response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"]["O_TABLE"]["item"];
                  this.userList = this.data.tableData.item;
                  for (let i = 0; i < 10; i++) {
                    this.push= Number( this.userList[i].MENGE -  this.userList[i].SUMMENGE )
                    this.$set(this.data.tableData.item[i], "expectedQty", this.push)
                  }               
                }

                // if(response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"].E_TOTALPAGE==1){
                //   this.data.tableData.item = [response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"].O_TABLE.item]
                // }else{
                //   this.data.tableData.item = response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"].O_TABLE.item;
                // }
                // this.userList = this.data.tableData.item;
                // for (let i = 0; i < response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"].E_TOTALPAGE; i++) {
                //   this.push= Number( this.userList[i].MENGE -  this.userList[i].SUMMENGE )
                //   this.$set(this.data.tableData.item[i], "expectedQty", this.push)
                //   this.$set(this.data.tableData.item[i], "expectedQty", this.push)
                // }
              }else{
                this.$set(this.data.tableData.item,0,response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"].O_TABLE.item);
                this.$set(this.userList,0,response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"].O_TABLE.item);
                this.loading = false;
                this.total = response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"].E_TOTALPAGE;
                console.log( this.total )
              }
            }
              this.total = response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"].E_TOTALPAGE;
              this.loading = false;
          })
        }
     
        }else{
      
        var array={};
        array['supplier'] = Cookies.get("username");
        array['page'] = this.pageNum;
        if (Cookies.get("username")=="admin"){
          this.queryParams.supplier="100388"
          array['supplier'] = "100388"
        }else{
          this.queryParams.supplier=Cookies.get("username");
        }
        if(this.queryParams.EBELN==""&&this.queryParams.MATNR==""){
          getPurchaseDataOne(array).then(response => {
          if(this.queryParams.MATNR==null){
            this.queryParams.MATNR =""
          }
          if(this.queryParams.EBELN==null){
            this.queryParams.EBELN =""
          }
          if(this.queryParams.EINDT==null){
            this.queryParams.EINDT =""
          }
          if(this.queryParams.AEDAT==null){
            this.queryParams.AEDAT =""
          }
          // this.data.tableData.item =[ {"deliverDate":"","SUMMENGE":"","ZCKGLY":"","LGFSB":"","UEBTK":"","UEBTO":"0","WERKS":"","EBELN":"","EBELP":"","BEDAT":"","EINDT":"","MATNR":"","MAKTX":"","MENGE":"","LIFNR":"","expectedQty":"","DELIVERYQUANTITY":"","ZCZ":"","ZZJTNUM":"","HSDAT":"","WEIGHT":"","CHARG":"","DATE1":"","DATE2":"","ZBISMT":"","PSTYP":"","PTEXT":"","EKGRP":"","ZGSBER":""}];
          // this.userList = [{"deliverDate":"","SUMMENGE":"","ZCKGLY":"","LGFSB":"","UEBTK":"","UEBTO":"0","WERKS":"","EBELN":"","EBELP":"","BEDAT":"","EINDT":"","MATNR":"","MAKTX":"","MENGE":"","LIFNR":"","expectedQty":"","DELIVERYQUANTITY":"","ZCZ":"","ZZJTNUM":"","HSDAT":"","WEIGHT":"","CHARG":"","DATE1":"","DATE2":"","ZBISMT":"","PSTYP":"","PTEXT":"","EKGRP":"","ZGSBER":""}];
          
          if(response["soap-env:Envelope"]["soap-env:Body"]["soap-env:Fault"]!=null||
          response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"]["E_TOTALPAGE"]==0 ){
            this.loading = false;
            return;
          }else{
            if(response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"]["O_TABLE"]["item"]!=null){
              if(response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"]["O_TABLE"]["item"].length<10 && response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"]["O_TABLE"]["item"].length!=1){
                this.data.tableData.item = response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"]["O_TABLE"]["item"];
                this.userList = this.data.tableData.item;
                for (let i = 0; i < response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"]["O_TABLE"]["item"].length; i++) {
                  this.push= Number( this.userList[i].MENGE -  this.userList[i].SUMMENGE )
                  this.$set(this.data.tableData.item[i], "expectedQty", this.push)
                }                
              }else if(response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"]["O_TABLE"]["item"].length>=10){
                this.data.tableData.item = response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"]["O_TABLE"]["item"];
                this.userList = this.data.tableData.item;
                for (let i = 0; i < 10; i++) {
                  this.push= Number( this.userList[i].MENGE -  this.userList[i].SUMMENGE )
                  this.$set(this.data.tableData.item[i], "expectedQty", this.push)
                }               
              }else{
                this.data.tableData.item = [response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"]["O_TABLE"]["item"]];
                this.userList = this.data.tableData.item;
              }
                //----------------------------------  
              // if(response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"].E_TOTALPAGE<10){ 
              //   if(response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"].E_TOTALPAGE==1){
              //     this.$set(this.data.tableData.item, "expectedQty", Number( this.userList.MENGE -  this.userList.SUMMENGE ).toFixed(2))
              //     this.data.tableData.item = [this.data.tableData.item]
              //   }else{
              //     for (let i = 0; i < response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"].E_TOTALPAGE; i++) {
              //       this.push= Number( this.userList[i].MENGE -  this.userList[i].SUMMENGE ).toFixed(2)
              //       this.$set(this.data.tableData.item[i], "expectedQty", this.push)
              //     }
              //   }
              // }else{
              //   for (let i = 0; i < response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"]["O_TABLE"]["item"].length; i++) {
              //     this.push= Number( this.userList[i].MENGE -  this.userList[i].SUMMENGE ).toFixed(2)
              //     this.$set(this.data.tableData.item[i], "expectedQty", this.push)
              //   }
              // }

              // post计算剩余送货数 渲染到列表
              // if(response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"].E_TOTALPAGE<10){ 
              // for (let i = 0; i < response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"].E_TOTALPAGE; i++) {
              //   var select={}
              //   select['poNo'] = this.userList[i].EBELN
              //   select['poLineNo'] = this.userList[i].EBELP
              //   selectRemain(select).then(res=>{
              //     if(res==null){
              //       this.push=0
              //     }else{
              //       this.push=res  
              //       this.userList[i].UEBTK= Number( this.userList[i].MENGE*(1+this.userList[i].UEBTO) ) - Number( this.push)
              //       this.data.tableData.item[i].UEBTK= this.userList[i].UEBTK
              //     }
              //   })
              // } 
              // }else{
              // // post计算剩余送货数 渲染到列表
              // for (let i = 0; i < 10; i++) {
              //   var select={}
              //   select['poNo'] = this.userList[i].EBELN
              //   select['poLineNo'] = this.userList[i].EBELP
              //   selectRemain(select).then(res=>{
              //     if(res==null){
              //       this.push=0
              //     }else{
              //       this.push=res  
              //       this.userList[i].UEBTK= Number( this.userList[i].MENGE*(1+this.userList[i].UEBTO) ) - Number( this.push)
              //       this.data.tableData.item[i].UEBTK= this.userList[i].UEBTK
              //     }
              //   })
              // } 
              // }
            }else{
              this.$set(this.data.tableData.item,0,response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"]["O_TABLE"]["item"]);
              this.$set(this.userList,0,response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"]["O_TABLE"]["item"]);
            }
          }
            this.total = response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"]["E_TOTALPAGE"];
            this.loading = false;
          }
        );
        }else{
          this.queryParams.page = 1;
          getPurchase(this.queryParams).then(response => {
            
            // this.data.tableData.item = [{"deliverDate":"","SUMMENGE":"","ZCKGLY":"","LGFSB":"","UEBTO":"0","WERKS":"","EBELN":"","EBELP":"","BEDAT":"","EINDT":"","MATNR":"","MAKTX":"","MENGE":"","remainDeliver":"","LIFNR":"","expectedQty":"","DELIVERYQUANTITY":"","ZCZ":"","ZZJTNUM":"","HSDAT":"","WEIGHT":"","CHARG":"","DATE1":"","DATE2":"","ZBISMT":"","PSTYP":"","PTEXT":"","EKGRP":"","ZGSBER":""}];
            // this.userList = [{"deliverDate":"","SUMMENGE":"","ZCKGLY":"","LGFSB":"","UEBTO":"0","WERKS":"","EBELN":"","EBELP":"","BEDAT":"","EINDT":"","MATNR":"","MAKTX":"","MENGE":"","remainDeliver":"","LIFNR":"","expectedQty":"","DELIVERYQUANTITY":"","ZCZ":"","ZZJTNUM":"","HSDAT":"","WEIGHT":"","CHARG":"","DATE1":"","DATE2":"","ZBISMT":"","PSTYP":"","PTEXT":"","EKGRP":"","ZGSBER":""}];
      
            if(response["soap-env:Envelope"]["soap-env:Body"]["soap-env:Fault"]!=null||
            response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"]["E_TOTALPAGE"]==0|| 
            response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"]["E_MESG"]=="无数据"){
              // this.serach=false 
              this.loading = false;
              this.$modal.msgSuccess("暂无数据");  
              this.data.tableData.item = [{"ZRETQYTY":"","deliverDate":"","SUMMENGE":"","ZCKGLY":"","LGFSB":"","UEBTO":"0","WERKS":"","EBELN":"","EBELP":"","BEDAT":"","EINDT":"","MATNR":"","MAKTX":"","MENGE":"","remainDeliver":"","LIFNR":"","expectedQty":"","DELIVERYQUANTITY":"","ZCZ":"","ZZJTNUM":"","HSDAT":"","WEIGHT":"","CHARG":"","DATE1":"","DATE2":"","ZBISMT":"","ZWWLX":"","PSTYP":"","PTEXT":"","EKGRP":"","ZGSBER":""}];
              this.total = response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"].E_TOTALPAGE;
            }else{
              if(response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"]["O_TABLE"]["item"]!=null){

                if(response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"]["O_TABLE"]["item"].length==undefined||response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"].E_TOTALPAGE==1){
                  this.data.tableData.item = [response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"]["O_TABLE"]["item"]];
                  this.userList = this.data.tableData.item;
                }else if(response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"]["O_TABLE"]["item"].length<10&&response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"]["O_TABLE"]["item"].length!=1){
                  this.data.tableData.item = response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"]["O_TABLE"]["item"];
                  this.userList = this.data.tableData.item;
                  for (let i = 0; i < response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"]["O_TABLE"]["item"].length; i++) {
                    this.push= Number( this.userList[i].MENGE -  this.userList[i].SUMMENGE )
                    this.$set(this.data.tableData.item[i], "expectedQty", this.push)
                  }                
                }else{
                  this.data.tableData.item = response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"]["O_TABLE"]["item"];
                  this.userList = this.data.tableData.item;
                  for (let i = 0; i < 10; i++) {
                    this.push= Number( this.userList[i].MENGE -  this.userList[i].SUMMENGE )
                    this.$set(this.data.tableData.item[i], "expectedQty", this.push)
                  }               
                }
                // if(response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"].E_TOTALPAGE==1){
                //   this.data.tableData.item = [response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"].O_TABLE.item]
                // }else{
                //   this.data.tableData.item = response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"].O_TABLE.item;
                // }
                // this.userList = this.data.tableData.item;
                // for (let i = 0; i < response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"].E_TOTALPAGE; i++) {
                //   this.push= Number( this.userList[i].MENGE -  this.userList[i].SUMMENGE )
                //   this.$set(this.data.tableData.item[i], "expectedQty", this.push)
                //   this.$set(this.data.tableData.item[i], "expectedQty", this.push)
                // }
                // post计算剩余送货数 渲染到列表
                // this.total = response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"].E_TOTALPAGE;
                // for (let i = 0; i < this.total; i++) {
                //   var select={}
                //   select['poNo'] = this.userList[i].EBELN
                //   select['poLineNo'] = this.userList[i].EBELP
                //   selectRemain(select).then(res=>{
                //     if(res==null){
                //       this.push=0
                //     }else{
                //       this.push=res  
                //       this.userList[i].UEBTK= Number( this.userList[i].MENGE*(1+this.userList[i].UEBTO) ) - Number( this.push)
                //       this.data.tableData.item[i].UEBTK= this.userList[i].UEBTK
                //     }
                //   })
                // } 
              }else{
                this.$set(this.data.tableData.item,0,response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"].O_TABLE.item);
                this.$set(this.userList,0,response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"].O_TABLE.item);
                this.loading = false;
                this.total = response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"].E_TOTALPAGE;
                console.log( this.total )
              }
            }
              this.total = response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_018Response"].E_TOTALPAGE;
              this.loading = false;
            }
          );
      }
    
    }
    })
    },
    // 取消按钮
    cancel() {
      this.open = false;
      this.reset();
    },
    // 表单重置
    reset() {
      this.form = {
        userId: undefined,
        deptId: undefined,
        EBELN: "",
        MATNR: "",
        EINDT: "",
        AEDAT: "",
        postIds: [],
        roleIds: [],
      };
      this.resetForm("form");
    },
    /** 搜索按钮操作 */
    handleQuery() {
    this.queryParams.pageNum=1;
    this.pageNum=1;
    this.getList();

    },
    /** 重置按钮操作 */
    resetQuery() {
      // this.dateRange = [];
      this.resetForm("form");
      // this.queryParams.deptId = undefined;
      // this.$refs.tree.setCurrentKey(null);
      // this.handleQuery();
      this.getList();
    },
    // 多选框选中数据
    handleSelectionChange(selection) {
      this.userList = selection;
      console.log(JSON.stringify(selection))
      if(selection.length >0){
        this.ids = selection.map(item => item.id);
        this.single = selection.length != 1;
        this.multiple = !selection.length;

        // 送货平台生成ASN单数量------下单数量-送货平台生成ASN单数量+采购订单退货数量;  退货数量: ZRETQYTY(sap接口)
        var select={}
        select['poNo'] = this.userList[0].EBELN
        select['poLineNo'] = this.userList[0].EBELP
        selectRemain(select).then(res=>{
          console.log(res)
          if(res==null||res==0){
            this.tuihuo=0
          }else{
            this.tuihuo=res 
          }
        })
      }    
    },
    // 更多操作触发
    handleCommand(command, row) {
      switch (command) {
        case "handleResetPwd":
          this.handleResetPwd(row);
          break;
        case "handleAuthRole":
          this.handleAuthRole(row);
          break;
        default:
          break;
      }
    },
    submit() {
      this.$refs["formreset"].validate(valid => {
        if (valid) {
          updateUserPwd(this.user.oldPwd,this.user.newPwd).then(response => {
            console.log(JSON.stringify(response))
            this.$modal.msgSuccess("修改成功,请重新登陆");
            removeToken()
            window.location.href = '/login';
          }).catch((response) => {
            this.$alert(response);
          });
        }
      });
    },
  }
};
</script>

<style>
.date-picker{
  width:133px !important;
  /* .el-input__inner{
    width:110px !important;
    padding: 0 10px !important;
  }
  .el-input__prefix{
    display: none;
  } */
}
  .titleMatnr{
    position: absolute;
    margin-top: 7px;
    margin-left: 130px;
    clear: both;
    line-height: .5cm;
    font-weight: 700;
  }
  .label {
    width: 5cm;
    height: 6.4cm;
    /*padding-left: 1px;*/
    position: relative;
  }
  .logo {
    width: 100%;
    height: 0.8cm;
    background-repeat: no-repeat;
    background-position: 10px 10px;
  }
  .item {
    font-size: 6pt;
    font-weight: 700;
  }
  .narrow {
    text-align: left;
    -webkit-transform-origin: 5% 100%;
  }
  .item-text{
    border-bottom: 1px solid #000;
    vertical-align: bottom;
    padding-bottom: 0;
  }
  .rohs{
    width: 60%;
    height: 1.2cm;
    margin: auto 0;
    margin-top: 13px;
    background-repeat: no-repeat;
    background-position:  5px  10px;
  }
  .qrcode{
    width: 23mm;
    height: 23mm;
    position: absolute;
    left: 32mm;
    top: 49mm;
    font-weight: 400;
  }
  .qrcode img{
    width: 23mm;
    height: 23mm;
    color: #000000;
  }
  .item-text-long{
    vertical-align: bottom;
    padding-bottom: 0;
  }
  .qrcode-long{
    width: 21mm;
    height: 21mm;
    position: absolute;
    left: 100mm;
    top: -2mm;

  }
  .qrcode-long img{
    width: 23mm;
    height: 23mm;
  }
  .rohs-long{
    width: 30%;
    height: 1.2cm;
    position: relative;
    transform: scale(.6);
    right: -325px;
    bottom: 176px;
    display: none;
  }
  .item-long{
    position: relative;
    font-size: 10pt;
    font-weight: 700;
    vertical-align: bottom;
  }
  @page {
    size: auto;
    margin: 0 10mm;
  }
  .procedure{
    word-wrap:break-word;
  }
  @media print {
    .el-table thead.is-group th {
      text-align: center
    }
    tbody {
      text-align: center;
      border: 0px solid #fff;
    }
    th {
      border: 0px solid #fff;
    }
    td {
      border: 0px solid #fff;
    }
    section{
      border: 0px solid #fff;
    }
    .contents {
      margin-left: 0px !important;
    }
    .mianer /deep/.el-main {
      padding: 0 !important;
    }
    img{
      display: block;
    }
  }
</style> 
