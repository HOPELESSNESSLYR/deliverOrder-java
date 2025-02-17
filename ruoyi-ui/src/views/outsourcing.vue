<template>
  <div class="app-container">
    <!-- <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="入库单号" prop="MBLNR">
        <el-input
          v-model="queryParams.MBLNR"
          placeholder="请输入入库单号"
          clearable
          style="width: 240px"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="物料编码" prop="MATNR">
        <el-input
          v-model="queryParams.MATNR"
          placeholder="请输入物料编码"
          clearable
          style="width: 240px"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="物料描述" prop="MAKTX">
        <el-input
          v-model="queryParams.MAKTX"
          placeholder="请输入物料描述"
          clearable
          style="width: 240px"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="生产日期">
        <el-date-picker
          v-model="queryParams.BUDAT"
          style="width: 240px"
          value-format="yyyy-MM-dd"
          type="date"
        ></el-date-picker>
      </el-form-item>
      <el-form-item label="采购订单创建日期">
        <el-date-picker
          v-model="queryParams.QNDAT"
          style="width: 240px"
          value-format="yyyy-MM-dd"
          type="date"
        ></el-date-picker>
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
        <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form> -->


    <el-row :gutter="10" class="mb8">
      <!-- <el-col :span="1.5">
        <el-button
          type="primary"
          plain
          icon="el-icon-plus"
          size="mini"
          @click="save"
        >保存</el-button>
      </el-col> -->
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="el-icon-edit"
          size="mini"
          :disabled="single"
          @click="np"
        >标准标签打印</el-button>
      </el-col>
   <!--  <el-col :span="1.5">
      <el-button
      type="danger"
      plain
      icon="el-icon-delete"
      size="mini"
      :disabled="single"
      @click="lp"
     >长标签打印</el-button>
   </el-col>-->
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>
    <el-table v-loading="loading" :data="data.tableData.item" @selection-change="handleSelectionChange">
      <template slot="empty">
        <p>{{tableEmptyText}}</p>
      </template>
      <el-table-column type="selection" width="50" align="center" class="ck"/>
      <el-table-column label="序号" type="index" align="center">
        <template slot-scope="scope">
          <span>{{(pageNum - 1) * pageSize + scope.$index + 1}}</span>
        </template>
      </el-table-column>
      <el-table-column label="入库单号" align="center" prop="MBLNR" width="110"/>
      <el-table-column label="工单号" align="center" prop="AUFNR" width="110"/>
      <el-table-column label="物料编码" align="center" prop="MATNR" />
      <el-table-column label="物料描述" align="center" prop="MAKTX" />
      <el-table-column label="入库数量" align="center" prop="ERFMG" />
      <el-table-column label="标签数量" align="center" prop="DELIVERYQUANTITY" >
        <template slot-scope="scope">
          <el-input v-model="scope.row.DELIVERYQUANTITY"></el-input>
        </template>
      </el-table-column>
      <el-table-column label="标签重量(KG)" align="center" prop="WEIGHT" >
        <template slot-scope="scope">
          <el-input v-model="scope.row.WEIGHT"  :value="scope.row.WEIGHT"></el-input>
        </template>
      </el-table-column>
      <el-table-column label="批次" align="center" prop="CHARG" />
      <el-table-column label="材质" align="center" prop="ZCZ" >
        <template slot-scope="scope">
          <el-input v-model="scope.row.ZCZ"  :value="scope.row.ZCZ"></el-input>
        </template>
      </el-table-column>
      <el-table-column label="机台" align="center" prop="ZZJTNUM" >
        <template slot-scope="scope">
          <el-input v-model="scope.row.ZZJTNUM"  :value="scope.row.ZZJTNUM"></el-input>
        </template>
      </el-table-column>
      <el-table-column label="检验日期" align="center" prop="BUDAT" width="100">
<!--        <template slot-scope="scope">-->
<!--          <span>{{ parseTime(scope.row.EINDT) }}</span>-->
<!--        </template>-->
      </el-table-column>
      <el-table-column label="失效日期" align="center" prop="QNDAT" width="150">
<!--        <template slot-scope="scope">-->
<!--          <el-input v-model="scope.row.QNDAT"  :value="scope.row.QNDAT"></el-input>-->
<!--        </template>-->
      </el-table-column>
      <el-table-column label="打印份数" align="center" prop="printno" width="100">
        <template slot-scope="scope">
          <el-input v-model="scope.row.printno"  :value="0" type="number" oninput="if(value<0)value=0"></el-input>
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
      </el-table-column>

    </el-table>
    <pagination v-show="total>0" :total="total" :page.sync="pageNum" :limit.sync="pageSize"  @pagination="getList"/>

    <!--打印标签标准1出2 长103mm宽67mm-->

    <el-dialog center :title="title" :visible.sync="open" width="960px" append-to-body>
      <section id='printall' style="zoom:140%"></section>
      <section ref="pform" id="printMe" style="margin-top: 50px;margin-bottom: 50px;">
        <el-row :gutter="24">
        <el-col :span="6">
          <div class="label">
            <div class="logo" >
              <label class="titleMatnr el-col-offset-15 el-col el-col-9">物料标签</label>
              <img :src="require('/src/assets/images/logo.jpg')" style="margin-top: 0px;margin-left: 10px"></img>
            </div>
            <div class="item" style="height: 0.45cm;">
              <div class="el-col el-col-4">
                <div class="narrow">品名:</div>
              </div>
              <div class="item-text el-col el-col-20">
                <div class="narrow">{{userList[0].MAKTX}}</div>
              </div>
            </div>
            <div class="item" style="height: 0.45cm;">
              <div class="el-col el-col-4">
                <div class="narrow">料号:</div>
              </div>
              <div class="item-text el-col el-col-20">
                <div class="narrow">{{userList[0].MATNR}}</div>
              </div>
            </div>
            <div class="item" style="height: 0.45cm;">
              <div class="el-col el-col-4">
                <div class="narrow">批次:</div>
              </div>
              <div class="item-text el-col el-col-8">
                <div class="narrow">{{userList[0].CHARG}}</div>
              </div>
              <div class="el-col el-col-4">
                <div class="narrow">机台:</div>
              </div>
              <div class="item-text el-col el-col-8">
                <div class="narrow"  style="height: 12px;">{{userList[0].ZZJTNUM}}</div>
              </div>
            </div>
            <div class="item" style="height: 0.45cm;">
              <div class="el-col el-col-7">
                <div class="narrow">重量/数量:</div>
              </div>
              <div class="item-text el-col el-col-17">
                <div class="narrow">{{userList[0].WEIGHT}}/{{userList[0].DELIVERYQUANTITY}}</div>
              </div>
            </div>
            <div class="item" style="height: 0.45cm;">
              <div class="el-col el-col-4">
                <div class="narrow">生产:</div>
              </div>
              <div class="item-text el-col el-col-8"  style="height: 12px;">
                <div class="narrow">{{userList[0].HSDAT}}</div>
              </div>
              <div class="el-col el-col-5 el-col-offset-2" style="font-size: 2em;">  </div>
              <div class="el-col el-col-4">
                <div class="narrow">失效:</div>
              </div>
              <div class="item-text el-col el-col-8"  style="height: 12px;">
                <div class="narrow">{{userList[0].DATE2}}</div>
              </div>
            </div>
            <div class="item" style="height: 0.45cm;">
              <div class="el-col el-col-4">
                <div class="narrow">规格:</div>
              </div>
              <div class="item-text el-col el-col-20">
                <div class="narrow" style="font-size: 10px;"></div>
              </div>
            </div>
            <div class="item" style="height: 0.45cm;">
              <div class="el-col el-col-4">
                <div class="narrow">材质:</div>
              </div>
              <div class="item-text el-col el-col-20">
                <div class="narrow" style="height: 12px;">{{userList[0].ZCZ}}</div>
              </div>
            </div>
            <div class="item" style="height: 0.45cm;margin-bottom: 1mm;">
              <div class="el-col el-col-4">
                <div class="narrow">厂商:</div>
              </div>
              <div class="item-text el-col el-col-8" style="height: 12px;">
                <div class="narrow">{{userList[0].LIFNR}}</div>
              </div>
            </div>

            <!-- <div class="item" style="height: 0.5cm;">
              <div class="el-col el-col-3">
                <div class="narrow">PO:</div>
              </div>
              <div class="item-text el-col el-col-12">
                <div class="narrow">{{userList[0].EBELN}}/{{userList[0].EBELP}}</div>
              </div>
            </div>
            <div class="item" style="height: 0.3cm;">
              <div class="el-col el-col-15">
                <div class="narrow">旧物料号:</div>
              </div>
            </div>
            <div class="item" style="height: 0.2cm;">
              <div class="item-text el-col el-col-15">
                <div class="narrow">{{userList[0].ZBISMT}}</div>
              </div>
            </div> -->
            <div class="item" style="height: 0.55cm;">
              <div class="el-col el-col-4">
                <div class="narrow">备注:</div>
              </div>
              <div class="item-text el-col el-col-8">
                <div class="narrow"></div>
              </div>
            </div>
            <div class="rohs" id="rohs">
              <img :src="require('/src/assets/images/rohs.png')">
            </div>
            <div class="qrcode">
              <img :src="src" alt="" id="images"/>
            </div>
              </div>


        </el-col>
          <div class="el-col el-col-6" style="margin-left: 14mm">
            <div class="label">
              <div class="logo" >
                <label class="titleMatnr el-col-offset-15 el-col el-col-9">物料标签</label>
                <img :src="require('/src/assets/images/logo.jpg')" style="margin-top: 0px;margin-left: 10px"></img>
              </div>
              <div class="item" style="height: 0.45cm;">
                <div class="el-col el-col-4">
                  <div class="narrow">品名:</div>
                </div>
                <div class="item-text el-col el-col-20">
                  <div class="narrow">{{userList[0].MAKTX}}</div>
                </div>
              </div>
              <div class="item" style="height: 0.45cm;">
                <div class="el-col el-col-4">
                  <div class="narrow">料号:</div>
                </div>
                <div class="item-text el-col el-col-20" style="height: 12px;margin-bottom: 0.03cm;">
                  <div class="narrow">{{userList[0].MATNR}}</div>
                </div>
              </div>
              <div class="item" style="height: 0.45cm;">
                <div class="el-col el-col-4">
                  <div class="narrow">批次:</div>
                </div>
                <div class="item-text el-col el-col-8" style="height: 12px;">
                  <div class="narrow">{{userList[0].CHARG}}</div>
                </div>
                <div class="el-col el-col-4">
                  <div class="narrow">机台:</div>
                </div>
                <div class="item-text el-col el-col-8" style="height: 12px;">
                  <div class="narrow">{{userList[0].ZZJTNUM}}</div>
                </div>
              </div>
              <div class="item" style="height: 0.45cm;">
                <div class="el-col el-col-7">
                  <div class="narrow">重量 / 数量:</div>
                </div>
                <div class="item-text el-col el-col-17">
                  <div class="narrow">{{userList[0].WEIGHT}} / {{userList[0].DELIVERYQUANTITY}}</div>
                </div>
              </div>
              <div class="item" style="height: 0.45cm;">
                <div class="el-col el-col-4">
                  <div class="narrow">生产:</div>
                </div>
                <div class="item-text el-col el-col-8" style="height: 12px;">
                  <div class="narrow">{{userList[0].HSDAT}}</div>
                </div>
                <div class="el-col el-col-5 el-col-offset-2" style="font-size: 2em;">  </div>
                <div class="el-col el-col-4">
                  <div class="narrow">失效:</div>
                </div>
                <div class="item-text el-col el-col-8" style="height: 12px;">
                  <div class="narrow">{{userList[0].DATE2}}</div>
                </div>
              </div>
              <div class="item" style="height: 0.45cm;">
                <div class="el-col el-col-4">
                  <div class="narrow">规格:</div>
                </div>
                <div class="item-text el-col el-col-20">
                  <div class="narrow" style="font-size: 10px;"></div>
                </div>
              </div>
              <div class="item" style="height: 0.45cm;">
                <div class="el-col el-col-4">
                  <div class="narrow">材质:</div>
                </div>
                <div class="item-text el-col el-col-20">
                  <div class="narrow" style="height: 13px;">{{userList[0].ZCZ}}</div>
                </div>
              </div>
              <div class="item" style="height: 0.45cm;margin-bottom: 1mm;">
                <div class="el-col el-col-4">
                  <div class="narrow">厂商:</div>
                </div>
                <div class="item-text el-col el-col-8" style="height: 12px;">
                  <div class="narrow">{{userList[0].LIFNR}}</div>
                </div>
              </div>
              <!-- <div class="item" style="height: 0.45cm;">
                <div class="el-col el-col-9">
                  <div class="narrow">旧物料号:</div>
                </div>
                <div class="item-text el-col el-col-15">
                  <div class="narrow">{{userList[0].ZBISMT}}</div>
                </div>
              </div>
             <div class="item" style="height: 0.45cm;">
                <div class="el-col el-col-3">
                  <div class="narrow">PO:</div>
                </div>
                <div class="item-text el-col el-col-12">
                  <div class="narrow">{{userList[0].EBELN}}/{{userList[0].EBELP}}</div>
                </div>
              </div> -->

              <div class="item" style="height: 0.55cm;">
                <div class="el-col el-col-4">
                  <div class="narrow">备注:</div>
                </div>
                <div class="item-text el-col el-col-8">
                  <div class="narrow"></div>
                </div>
              </div>
              <div class="rohs">
                <img :src="require('/src/assets/images/rohs.png')">
              </div>
              <div class="qrcode">
                <img :src="src2" alt=""/>
              </div>
            </div>
          </div>

        </el-row>
      </section>
      <div slot="footer" class="dialog-footer">
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>

 
    <el-dialog center :title="title" :visible.sync="open2" width="960px" append-to-body>
      <section id="printall2"></section>
      <section ref="pform2" id="printMe2">
        <div style="height: 2.4cm; width: 10cm; font-size: 120px;">
          <div class="el-row" style="height: 2.4cm; width: 10cm;padding-top: 3mm">
            <div class="item-long" style="height: 0.5cm;">
              <div class="el-col el-col-3 el-col-offset-0">
                <div class="narrow">品名</div>
              </div>
              <div class="item-text-long el-col el-col-16">
                <div class="narrow">{{userList[0].MAKTX}}</div>
              </div>
            </div>
            <div class="item-long" style="height: 0.5cm;">
              <div class="el-col el-col-3 el-col-offset-0">
                <div class="narrow">供应商</div>
              </div>
              <div class="item-text-long el-col el-col-5">
                <div class="narrow">{{userList[0].LIFNR}}</div>
              </div>
              <div class="el-col el-col-2 el-col-offset-5">
                <div class="narrow">批次</div>
              </div>
              <div class="item-text-long el-col el-col-5" style="height: 13px;">{{userList[0].CHARG}}</div>
            </div>
            <div class="item-long" style="height: 0.5cm;">
              <div class="el-col el-col-3 el-col-offset-0">
                <div class="narrow">料号</div>
              </div>
              <div class="item-text-long el-col el-col-7">
                <div class="narrow">{{userList[0].MATNR}}</div>
              </div>
              <div class="el-col el-col-3 el-col-offset-3">
                <div class="narrow">材质</div>
              </div>
              <div class="item-text-long el-col el-col-5" style="height: 13px;">{{userList[0].ZCZ}}</div>
            </div>
            <div class="item-long" style="height: 0.5cm;">
              <div class="el-col el-col-3 el-col-offset-0">
                <div class="narrow">颜色</div>
              </div>
              <div class="item-text-long el-col el-col-5">
                <div class="narrow">{{userList[0].YCPICI}}</div>
              </div>
              <div class="el-col el-col-5 el-col-offset-5">
                <div class="narrow">重量/数量</div>
              </div>
              <div class="item-text-long el-col el-col-5" style="height: 13px;">{{userList[0].WEIGHT}}/{{userList[0].SUMMENGE}}</div>
            </div>
            <div class="qrcode-long">
              <img :src="src3" alt=""/>
            </div>
            <div class="rohs-long">
              <img :src="require('/src/assets/images/rohs.png')">
            </div>
          </div>
        </div>
      </section>
    </el-dialog>

  </div>


</template>

<script>


import { getPOData, savePrintData, getCharg,  } from '@/api/login'
import { getOutSourcingData } from '@/api/deliver/order'
import QRCode from "qrcode";
import print from 'print-js'
import Cookies from 'js-cookie'
export default {
  name: "print",
  data() {
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
      // 显示搜索条件
      showSearch: true,
      // 总条数
      total: 0,
      pageNum: 1,
      pageSize: 10,
      // 用户表格数据
      userList: [{"EBELN":"","EBELP":"","BEDAT":"","EINDT":"","MATNR":"","MAKTX":"","MENGE":"","SUMMENGE":"","LIFNR":"","DELIVERYQUANTITY":"","ZCZ":"","ZZJTNUM":"","HSDAT":"","WEIGHT":"","CHARG":"","DATE1":"","DATE2":"","ZBISMT":"","PSTYP":"","PTEXT":"","number1":1,"number2":2,"number3":1}],
      CHARG:"",
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
      src:"",
      src2:"",
      src3:"",
      printLoading: true,
      number1:1,
      number2:2,
      number3:1,
      tableEmptyText:'',
      // printObj: {
      //   id: "printMe", // 这里是要打印元素的ID
      //   popTitle: "打印内容", // 打印的标题
      //   extraCss: "", // 打印可引入外部的一个 css 文件
      //   extraHead: "", // 打印头部文字
      // },
      printObj: {
        id: "printMe",
        popTitle: 'good print',
        extraCss: "https://cdn.bootcdn.net/ajax/libs/hover.css/2.3.1/css/hover-min.css",
        extraHead: '<meta http-equiv="Content-Language"content="zh-cn"/>',
        beforeOpenCallback (vue) {
          vue.printLoading = true
          console.log('打开之前')
        },
        openCallback (vue) {
          vue.printLoading = false
          console.log('执行了打印')
        },
        closeCallback (vue) {
          console.log('关闭了打印工具')
        }
      },
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        EBELN: "",
        MATNR: "",
        EINDT: "",
        AEDAT: "",
        MAKTX:""
      },
      data: {
        tableData: {
          item: []
        }
      }
    };
  },
  created() {
    this.getList()
  },
  methods: {
    goTarget(href) {
      window.open(href, "_blank");
    },
    np(){
        this.normalprint(this.userList[0].printno);
    },
    lp(){
      this.longprint(this.userList[0].printno);
    },
    getQRCode3(title) {
      const that=this
      let opts = {
        errorCorrectionLevel: "L",//容错级别
        type: "image/png",//生成的二维码类型
        quality: 0.3,//二维码质量
        margin: 0,//二维码留白边距
        width: 90,//宽
        height: 90,//高
        text: title,//二维码内容
        color: {
          dark: "#000",//前景色
          light: "#fff"//背景色
        }
      };
      //这一步就是生成二维码图片，然后赋值给上面的img标签
      QRCode.toDataURL(title, opts, function (err, url) {
        if (err) throw err;
        // var img = document.getElementById("images");
        console.log("url"+url)
        that.src3 = url;
        // return url;
      });
    },
    getQRCode(title) {
      const that=this
      let opts = {
        errorCorrectionLevel: "L",//容错级别
        type: "image/png",//生成的二维码类型
        quality: 0.3,//二维码质量
        margin: 0,//二维码留白边距
        width: 85,//宽
        height: 85,//高
        text: title,//二维码内容
        color: {
          dark: "#000",//前景色
          light: "#fff"//背景色
        }
      };
      // let msg = document.getElementById("qrCodeUrl");
      // // 将获取到的数据（val）画到msg（canvas）上
      // QRCode.toCanvas(this.$refs.qrCodeUrl, title, opts, function (error) {
      //   console.log(error)
      // });
      //这一步就是生成二维码图片，然后赋值给上面的img标签
      QRCode.toDataURL(title, opts, function (err, url) {
        if (err) throw err;
        // var img = document.getElementById("images");
        console.log("url"+url)
        that.src = url;
      });
    },
    getQRCode2(title) {
      const that=this
      let opts = {
        errorCorrectionLevel: "L",//容错级别
        type: "image/png",//生成的二维码类型
        quality: 0.3,//二维码质量
        margin: 0,//二维码留白边距
        width: 85,//宽
        height: 85,//高
        text: title,//二维码内容
        color: {
          dark: "#000",//前景色
          light: "#fff"//背景色
        }
      };
      // let msg = document.getElementById("qrCodeUrl");
      // // 将获取到的数据（val）画到msg（canvas）上
      // QRCode.toCanvas(this.$refs.qrCodeUrl, title, opts, function (error) {
      //   console.log(error)
      // });
      //这一步就是生成二维码图片，然后赋值给上面的img标签
      QRCode.toDataURL(title, opts, function (err, url) {
        if (err) throw err;
        // var img = document.getElementById("images");
        console.log("url"+url)
        that.src2 = url;
      });
    },
    save(){

    },
    normalprint(number){
      if(this.userList[0].printno==undefined || this.userList[0].printno==0){
        this.$alert("请填写打印份数")
        return;
      }
      if(this.userList[0].DELIVERYQUANTITY==undefined || this.userList[0].DELIVERYQUANTITY * 1==0 || this.userList[0].DELIVERYQUANTITY.replace(" ","")==""){
        this.$alert("请填写标签数量")
        return;
      }
      // var flag = "S"
      //传SAP
      // getCharg(this.userList[0].MATNR,this.userList[0].EBELN,flag).then(response => {
          // console.log(JSON.stringify(response))
        // if(response.data.chargList.item != undefined){

        //   // if(response.data.chargList.item.length>1){
        //   //   this.CHARG = response.data.chargList.item[0].CHARG
        //   // }else{
        //   //   this.CHARG = response.data.chargList.item.CHARG
        //   // }
        //   //   this.userList[0].CHARG = this.CHARG;
        //     this.userList[0].PRINTNO = this.userList[0].printno * 2;
        //     var data="data="+encodeURI(JSON.stringify(this.userList[0]));
        //     savePrintData(data).then(res => {
        //       console.log(JSON.stringify(res))
        //       this.open = true;
        //       setTimeout(() => {
        //         console.log(this.$refs.pform);
        //         this.userList[0].number1 = Number(res.printno)+1;
        //         this.userList[0].number2 = Number(res.printno)+2;
        //         var printable = document.getElementById("printall");
        //         printable.style = "display:block;top:2px;left: 5mm;color:#000000";
        //         printable.style.zoom = 1.235;
        //         //先清空
        //         for(var i = printable.childNodes.length - 1; i >= 0; i--) {
        //           printable.removeChild(printable.childNodes[i]);
        //         }
        //         var paixu = [];
        //         for(var i=0;i<number;i++){
        //           //printable[i] = document.getElementById('printMe');
        //           if(this.userList[0].number1<10){
        //             this.getQRCode(res.data+" 000"+this.userList[0].number1.toString()+" "+Cookies.get("username"))
        //             document.getElementsByClassName("qrcode")[0].childNodes[0].src = this.src;
        //           }else if(10<=this.userList[0].number1 && this.userList[0].number1<100){
        //             this.getQRCode(res.data+" 00"+this.userList[0].number1.toString()+" "+Cookies.get("username"))
        //             document.getElementsByClassName("qrcode")[0].childNodes[0].src = this.src;
        //           }else if(100<=this.userList[0].number1 && this.userList[0].number1<1000){
        //             this.getQRCode(res.data+" 0"+this.userList[0].number1.toString()+" "+Cookies.get("username"))
        //             document.getElementsByClassName("qrcode")[0].childNodes[0].src = this.src;
        //           }else if(1000<=this.userList[0].number1 && this.userList[0].number1<10000){
        //             this.getQRCode(res.data+" "+this.userList[0].number1.toString()+" "+Cookies.get("username"))
        //             document.getElementsByClassName("qrcode")[0].childNodes[0].src = this.src;
        //           }
        //           if(this.userList[0].number2<10){
        //             this.getQRCode2(res.data+" 000"+this.userList[0].number2.toString()+" "+Cookies.get("username"))
        //             document.getElementsByClassName("qrcode")[1].childNodes[0].src = this.src2;
        //           }else if(10<=this.userList[0].number2 && this.userList[0].number2<100){
        //             this.getQRCode2(res.data+" 00"+this.userList[0].number2.toString()+" "+Cookies.get("username"))
        //             document.getElementsByClassName("qrcode")[1].childNodes[0].src = this.src2;
        //           }else if(100<=this.userList[0].number2 && this.userList[0].number2<1000){
        //             this.getQRCode2(res.data+" 0"+this.userList[0].number2.toString()+" "+Cookies.get("username"))
        //             document.getElementsByClassName("qrcode")[1].childNodes[0].src = this.src2;
        //           }else if(1000<=this.userList[0].number2 && this.userList[0].number2<10000){
        //             this.getQRCode2(res.data+" "+this.userList[0].number2.toString()+" "+Cookies.get("username"))
        //             document.getElementsByClassName("qrcode")[1].childNodes[0].src = this.src2;
        //           }
        //           var jubuData = document.getElementById("printMe").innerHTML;
        //           var jubu = document.createElement("section");
        //           jubu.style = "margin-top: 2px;margin-bottom: 10px;margin-left: 3mm;";
        //           jubu.innerHTML = jubuData;
        //           paixu[i] = jubu;
        //           // printable.insertBefore(jubu,printable.childNodes[0]);
        //           //console.log(printable)
        //           this.userList[0].number1 = this.userList[0].number1+2
        //           this.userList[0].number2 = this.userList[0].number2+2
        //         }
        //         var len = paixu.length;
        //         //倒过来遍历所有节点
        //         for(var i=0;i<len;i++){
        //           printable.appendChild(paixu[i]);//添加到需打印父元素
        //           var fenye = document.createElement("div");
        //           fenye.style = "page-break-after:always;";
        //           if(i != len-1) {
        //             printable.appendChild(fenye);
        //           }
        //         }
        //         console.log("printall",document.getElementById("printall"))
        //         setTimeout(function () {
        //           print({
        //             printable: 'printall',
        //             type: 'html',
        //             scanStyles: true,
        //             targetStyles: ['*'],
        //             // style: '#printBox{ display: block !important}', // 表格样式
        //             // HonorMarginPadding: false,
        //           })
        //         },1000)
        //         setTimeout(function () {
        //           document.getElementById("printall").style = "display:none";
        //         },1000)
        //       }, 3000);

        //     })
        //   }else{
        //     flag = "C"
        //     getCharg(this.userList[0].MATNR,this.userList[0].EBELN,flag).then(response => {
        //       // this.CHARG = response.data.charg;
        //       // this.userList[0].CHARG = this.CHARG;
        //       this.userList[0].PRINTNO = this.userList[0].printno * 2;
        //       var data="data="+encodeURI(JSON.stringify(this.userList[0]));
        //       savePrintData(data).then(res => {
        //         console.log(JSON.stringify(res))
        //         this.open = true;
        //         setTimeout(() => {
        //           console.log(this.$refs.pform);
        //           var printable = document.getElementById("printall");
        //           printable.style = "display:block;top:2px;left: 3mm;color:#000000";
        //           printable.style.zoom =1.235;
        //           this.userList[0].number1 = Number(res.printno)+1;
        //           this.userList[0].number2 = Number(res.printno)+2;
        //           //先清空
        //           for(var i = printable.childNodes.length - 1; i >= 0; i--) {
        //             printable.removeChild(printable.childNodes[i]);
        //           }
        //           var paixu=[];
        //           for(var i=0;i<number;i++){
        //             //printable[i] = document.getElementById('printMe');
        //             if(this.userList[0].number1<10){
        //               this.getQRCode(res.data+" 000"+this.userList[0].number1.toString()+" "+Cookies.get("username"))
        //               document.getElementsByClassName("qrcode")[0].childNodes[0].src = this.src;
        //             }else if(10<=this.userList[0].number1 && this.userList[0].number1<100){
        //               this.getQRCode(res.data+" 00"+this.userList[0].number1.toString()+" "+Cookies.get("username"))
        //               document.getElementsByClassName("qrcode")[0].childNodes[0].src = this.src;
        //             }else if(100<=this.userList[0].number1 && this.userList[0].number1<1000){
        //               this.getQRCode(res.data+" 0"+this.userList[0].number1.toString()+" "+Cookies.get("username"))
        //               document.getElementsByClassName("qrcode")[0].childNodes[0].src = this.src;
        //             }else if(1000<=this.userList[0].number1 && this.userList[0].number1<10000){
        //               this.getQRCode(res.data+" "+this.userList[0].number1.toString()+" "+Cookies.get("username"))
        //               document.getElementsByClassName("qrcode")[0].childNodes[0].src = this.src;
        //             }

        //             if(this.userList[0].number2<10){
        //               this.getQRCode2(res.data+" 000"+this.userList[0].number2.toString()+" "+Cookies.get("username"))
        //               document.getElementsByClassName("qrcode")[1].childNodes[0].src = this.src2;
        //             }else if(10<=this.userList[0].number2 && this.userList[0].number2<100){
        //               this.getQRCode2(res.data+" 00"+this.userList[0].number2.toString()+" "+Cookies.get("username"))
        //               document.getElementsByClassName("qrcode")[1].childNodes[0].src = this.src2;
        //             }else if(100<=this.userList[0].number2 && this.userList[0].number2<1000){
        //               this.getQRCode2(res.data+" 0"+this.userList[0].number2.toString()+" "+Cookies.get("username"))
        //               document.getElementsByClassName("qrcode")[1].childNodes[0].src = this.src2;
        //             }else if(1000<=this.userList[0].number2 && this.userList[0].number2<10000){
        //               this.getQRCode2(res.data+" "+this.userList[0].number2.toString()+" "+Cookies.get("username"))
        //               document.getElementsByClassName("qrcode")[1].childNodes[0].src = this.src2;
        //             }
        //             var jubuData = document.getElementById("printMe").innerHTML;
        //             var jubu = document.createElement("section");
        //             jubu.style = "margin-top: 2px;margin-bottom: 10px;margin-left: 5mm;";
        //             jubu.innerHTML = jubuData;
        //             paixu[i] = jubu;
        //             // printable.insertBefore(jubu,printable.childNodes[0]);
        //             //console.log(printable)
        //             this.userList[0].number1 = this.userList[0].number1+2
        //             this.userList[0].number2 = this.userList[0].number2+2
        //           }
        //           var len = paixu.length;
        //           //倒过来遍历所有节点
        //           for(var i=0;i<len;i++){
        //             printable.appendChild(paixu[i]);//添加到需打印父元素
        //             var fenye = document.createElement("div");
        //             fenye.style = "page-break-after:always;";
        //             if(i != len-1) {
        //               printable.appendChild(fenye);
        //             }
        //           }
        //           console.log("printall",document.getElementById("printall"))
        //           setTimeout(function () {
        //             print({
        //               printable: 'printall',
        //               type: 'html',
        //               scanStyles: true,
        //               targetStyles: ['*'],
        //               // style: '#printBox{ display: block !important}', // 表格样式
        //               // HonorMarginPadding: false,
        //             })
        //           },1000)
        //           setTimeout(function () {
        //             document.getElementById("printall").style = "display:none";
        //           },2000)
        //         }, 3000);

        //       })
        //     })
        //   }
        this.userList[0].LIFNR = Cookies.get("username");
        this.userList[0].PRINTNO = this.userList[0].printno * 2;
        var data="data="+encodeURI(JSON.stringify(this.userList[0]));
        console.log(data)
        savePrintData(data).then(res => {
          console.log(JSON.stringify(res))
          this.open = true;
          setTimeout(() => {
            console.log(this.$refs.pform);
            var printable = document.getElementById("printall");
            printable.style = "display:block;top:2px;left: 3mm;color:#000000";
            printable.style.zoom =1.235;
            this.userList[0].number1 = Number(res.printno)+1;
            this.userList[0].number2 = Number(res.printno)+2;
            //先清空
            for(var i = printable.childNodes.length - 1; i >= 0; i--) {
              printable.removeChild(printable.childNodes[i]);
            }
            var paixu=[];
            for(var i=0;i<number;i++){
              //printable[i] = document.getElementById('printMe');
              if(this.userList[0].number1<10){
                this.getQRCode(res.data+" 000"+this.userList[0].number1.toString()+" "+Cookies.get("username"))
                document.getElementsByClassName("qrcode")[0].childNodes[0].src = this.src;
              }else if(10<=this.userList[0].number1 && this.userList[0].number1<100){
                this.getQRCode(res.data+" 00"+this.userList[0].number1.toString()+" "+Cookies.get("username"))
                document.getElementsByClassName("qrcode")[0].childNodes[0].src = this.src;
              }else if(100<=this.userList[0].number1 && this.userList[0].number1<1000){
                this.getQRCode(res.data+" 0"+this.userList[0].number1.toString()+" "+Cookies.get("username"))
                document.getElementsByClassName("qrcode")[0].childNodes[0].src = this.src;
              }else if(1000<=this.userList[0].number1 && this.userList[0].number1<10000){
                this.getQRCode(res.data+" "+this.userList[0].number1.toString()+" "+Cookies.get("username"))
                document.getElementsByClassName("qrcode")[0].childNodes[0].src = this.src;
              }

              if(this.userList[0].number2<10){
                this.getQRCode2(res.data+" 000"+this.userList[0].number2.toString()+" "+Cookies.get("username"))
                document.getElementsByClassName("qrcode")[1].childNodes[0].src = this.src2;
              }else if(10<=this.userList[0].number2 && this.userList[0].number2<100){
                this.getQRCode2(res.data+" 00"+this.userList[0].number2.toString()+" "+Cookies.get("username"))
                document.getElementsByClassName("qrcode")[1].childNodes[0].src = this.src2;
              }else if(100<=this.userList[0].number2 && this.userList[0].number2<1000){
                this.getQRCode2(res.data+" 0"+this.userList[0].number2.toString()+" "+Cookies.get("username"))
                document.getElementsByClassName("qrcode")[1].childNodes[0].src = this.src2;
              }else if(1000<=this.userList[0].number2 && this.userList[0].number2<10000){
                this.getQRCode2(res.data+" "+this.userList[0].number2.toString()+" "+Cookies.get("username"))
                document.getElementsByClassName("qrcode")[1].childNodes[0].src = this.src2;
              }
              var jubuData = document.getElementById("printMe").innerHTML;
              var jubu = document.createElement("section");
              jubu.style = "margin-top: 2px;margin-bottom: 10px;margin-left: 5mm;";
              jubu.innerHTML = jubuData;
              paixu[i] = jubu;
              // printable.insertBefore(jubu,printable.childNodes[0]);
              //console.log(printable)
              this.userList[0].number1 = this.userList[0].number1+2
              this.userList[0].number2 = this.userList[0].number2+2
            }
            var len = paixu.length;
            //倒过来遍历所有节点
            for(var i=0;i<len;i++){
              printable.appendChild(paixu[i]);//添加到需打印父元素
              var fenye = document.createElement("div");
              fenye.style = "page-break-after:always;";
              if(i != len-1) {
                printable.appendChild(fenye);
              }
            }
            console.log("printall",document.getElementById("printall"))
            setTimeout(function () {
              print({
                printable: 'printall',
                type: 'html',
                scanStyles: true,
                targetStyles: ['*'],
                // style: '#printBox{ display: block !important}', // 表格样式
                // HonorMarginPadding: false,
              })
            },1000)
            setTimeout(function () {
              document.getElementById("printall").style = "display:none";
            },2000)
          }, 3000);

        })
      // })
    },
    normalprintme(){
      setTimeout(()=>{
      },5000);
      return "printObj"
    },
    longprint(number){
      if(this.userList[0].printno==undefined || this.userList[0].printno==0){
        this.$alert("请填写打印份数")
        return;
      }
      var flag = "S"
      //传SAP
      getCharg(this.userList[0].MATNR,this.userList[0].EBELN,flag).then(response => {
        console.log(JSON.stringify(response.data.chargList.item))
        if(response.data.chargList.item != undefined){
          // if(response.data.chargList.item.length>1){
          //   this.CHARG = response.data.chargList.item[0].CHARG
          // }else{
          //   this.CHARG = response.data.chargList.item.CHARG
          // }
          //console.log(this.CHARG);
          //this.userList[0].CHARG = this.CHARG;
          this.userList[0].PRINTNO = this.userList[0].printno
          var data="data="+encodeURI(JSON.stringify(this.userList[0]));
          savePrintData(data).then(res => {
            console.log(JSON.stringify(res))

            this.open2 = true;
            setTimeout(() => {
              console.log(this.$refs.pform2);
              var printable = document.getElementById("printall2");
              printable.style = "display:block;margin-top:3mm;margin-left: 3mm;color:#000000";
              printable.style.zoom = 0.99;
              this.userList[0].number3 = Number(res.printno)+1;
              //先清空
              for(var i = printable.childNodes.length - 1; i >= 0; i--) {
                printable.removeChild(printable.childNodes[i]);
              }
              console.log("printable",printable)
              var paixu = [];

                //const that = this;
                for (var i = 0; i < number; i++) {
                  //printable[i] = document.getElementById('printMe');
                  var jubuData = document.getElementById("printMe2");
                  if (this.userList[0].number3 < 10) {
                    console.log("this.number3", this.userList[0].number3)
                    this.getQRCode3(res.data + " 000" + this.userList[0].number3.toString() + " " + Cookies.get("username"));
                    console.log("this.src3", this.src3)
                    document.getElementsByClassName("qrcode-long")[0].childNodes[0].src = this.src3;
                  } else if (10 <= this.userList[0].number3 && this.userList[0].number3 < 100) {
                    console.log("this.number3", this.userList[0].number3,10)
                    this.getQRCode3(res.data + " 00" + this.userList[0].number3.toString() + " " + Cookies.get("username"));
                    document.getElementsByClassName("qrcode-long")[0].childNodes[0].src = this.src3;
                  } else if (100 <= this.userList[0].number3 && this.userList[0].number3 < 1000) {
                    console.log("this.number3", this.userList[0].number3,100)
                    this.getQRCode3(res.data + " 0" + this.userList[0].number3.toString() + " " + Cookies.get("username"));
                    document.getElementsByClassName("qrcode-long")[0].childNodes[0].src = this.src3;
                  } else if (1000 <= this.userList[0].number3 && this.userList[0].number3 < 10000) {
                    console.log("this.number3", this.userList[0].number3)
                    this.getQRCode3(res.data + " " + this.userList[0].number3.toString() + " " + Cookies.get("username"));
                    document.getElementsByClassName("qrcode-long")[0].childNodes[0].src = this.src3;
                  }
                  this.userList[0].number3 += 1;

                  console.log("jubuData" + i, jubuData.innerHTML);
                  var jubu = document.createElement("section");
                  jubu.style = "margin-top:3mm;margin-left: 3mm;color:#000000";
                  jubu.innerHTML = jubuData.innerHTML;
                  paixu[i] = jubu;
                }
              var len = paixu.length;
              //倒过来遍历所有节点
              for(var i=0;i<len;i++){
                printable.appendChild(paixu[i]);//添加到ul为子元素
                var fenye = document.createElement("div");
                fenye.style = "page-break-after:always;";
                if(i != len-1) {
                  printable.appendChild(fenye);
                }
              }
              console.log("printall2",document.getElementById("printall2"));
              setTimeout(function () {
                print({
                  printable: 'printall2',
                  type: 'html',
                  scanStyles: true,
                  targetStyles: ['*'],
                  // style: '#printBox{ display: block !important}', // 表格样式
                  // HonorMarginPadding: false,
                })
              },1000)
              setTimeout(function () {
                document.getElementById("printall2").style = "display:none";
              },2000)
            }, 3000);
          })
        }else{
          flag = "C"
          getCharg(this.userList[0].MATNR,this.userList[0].EBELN,flag).then(response => {
            console.log(JSON.stringify(response.data.chargList.item))


              //this.CHARG = response.data.charg;
              //this.userList[0].CHARG = this.CHARG;
            this.userList[0].PRINTNO = this.userList[0].printno
              var data="data="+encodeURI(JSON.stringify(this.userList[0]));
              savePrintData(data).then(res => {
                console.log(JSON.stringify(res))
                this.open2 = true;
                setTimeout(() => {
                  console.log(this.$refs.pform2);
                  var printable = document.getElementById("printall2");
                  printable.style = "display:block;margin-top:3mm;margin-left: 3mm;color:#000000";
                  printable.style.zoom = 0.99;
                  this.userList[0].number3 = Number(res.printno)+1;
                  //先清空
                  for(var i = printable.childNodes.length - 1; i >= 0; i--) {
                    printable.removeChild(printable.childNodes[i]);
                  }
                  console.log("printable",printable)
                  var paixu = [];
                for(var i=0;i<number;i++){
                  //printable[i] = document.getElementById('printMe');
                  var jubuData = document.getElementById("printMe2");
                  if(this.userList[0].number3<10){
                    console.log("this.number3",this.userList[0].number3)
                    this.getQRCode3(res.data+" 000"+this.userList[0].number3.toString()+" "+Cookies.get("username"));
                    console.log("this.src3",this.src3)
                    document.getElementsByClassName("qrcode-long")[0].childNodes[0].src = this.src3;
                  }else if(10<=this.userList[0].number3 && this.userList[0].number3<100){
                    console.log("this.number3",this.userList[0].number3,10)
                    this.getQRCode3(res.data+" 00"+this.userList[0].number3.toString()+" "+Cookies.get("username"));
                    document.getElementsByClassName("qrcode-long")[0].childNodes[0].src = this.src3;
                  }else if(100<=this.userList[0].number3 && this.userList[0].number3<1000){
                    console.log("this.number3",this.userList[0].number3,100)
                    this.getQRCode3(res.data+" 0"+this.userList[0].number3.toString()+" "+Cookies.get("username"));
                    document.getElementsByClassName("qrcode-long")[0].childNodes[0].src = this.src3;
                  }else if(1000<=this.userList[0].number3 && this.userList[0].number3<10000){
                    console.log("this.number3",this.userList[0].number3)
                    this.getQRCode3(res.data+" "+this.userList[0].number3.toString()+" "+Cookies.get("username"));
                    document.getElementsByClassName("qrcode-long")[0].childNodes[0].src = this.src3;
                  }
                  this.userList[0].number3 += 1;
                  console.log("jubuData"+i,jubuData.innerHTML);
                  var jubu = document.createElement("section");
                  jubu.style = "margin-top:3mm;margin-left: 3mm;color:#000000";
                  jubu.innerHTML = jubuData.innerHTML;
                  paixu[i] = jubu;
                  // printable.insertBefore(jubu,printable.childNodes[0]);
                  console.log(printable)
                }
                  var len = paixu.length;
                  //倒过来遍历所有节点
                  for(var i=0;i<len;i++){
                    printable.appendChild(paixu[i]);//添加到ul为子元素
                    var fenye = document.createElement("div");
                    fenye.style = "page-break-after:always;";
                    if(i != len-1) {
                      printable.appendChild(fenye);
                    }
                  }
                  setTimeout(function () {
                    print({
                      printable: 'printall2',
                      type: 'html',
                      scanStyles: true,
                      targetStyles: ['*'],
                      // style: '#printBox{ display: block !important}', // 表格样式
                      // HonorMarginPadding: false,
                    })
                  },1000)
                  setTimeout(function () {
                    document.getElementById("printall2").style = "display:none";
                  },2000)
              }, 3000);
            })
          })
        }
      })
    },
    /** 查询用户列表 */
    getList() {
      this.tableEmptyText = '暂无数据';
      this.loading = true;
      // axios.get('http://localhost:8080/api/infolist').then(res=>{
      getOutSourcingData(this.pageNum).then(response => {
        // this.data.tableData.item = [{"MATNR":"","MAKTX":"","MBLNR":"","LIFNR":"","ERFMG":"","ZCZ":"","CHARG":"","BUDAT":"","QNDAT":"","number1":1,"number2":2,"number3":1}];
        // this.userList = [{"MATNR":"","MAKTX":"","MBLNR":"","LIFNR":"","ERFMG":"","ZCZ":"","CHARG":"","BUDAT":"","QNDAT":"","number1":1,"number2":2,"number3":1}];
        

        if(response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPPF_029Response"].E_TOTALPAGE==0){
          this.loading = false;
          return;
        }else{
          if(response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPPF_029Response"]["T_TAB"].item!=null){
            if(response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPPF_029Response"]["T_TAB"]["item"].length>1){
              this.data.tableData.item = response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPPF_029Response"]["T_TAB"]["item"];
              this.userList = this.data.tableData.item;
            }else{
              this.data.tableData.item = response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPPF_029Response"]["T_TAB"]["item"];
              this.data.tableData.item = [this.data.tableData.item]
              this.userList = this.data.tableData.item;
            }
          }else{
            this.$set(this.data.tableData.item,0,response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPPF_029Response"]["T_TAB"].item);
            this.$set(this.userList,0,response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPPF_029Response"]["T_TAB"].item);
            this.loading = false;
          }
        }

        for(var i=0; i <this.userList.length;i++){
          this.userList[i].number1 = 1;
          this.userList[i].number2 = 2;
          this.userList[i].number3 = 1;
          this.userList[i].LIFNR = Cookies.get("userid") * 1;
          this.userList[i].HSDAT = this.userList[i].BUDAT;
          this.userList[i].DATE2 = this.userList[i].QNDAT;
        }
          this.total = response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPPF_029Response"].E_TOTALPAGE;
          this.loading = false;
        }
      );
    // })
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
        roleIds: []
      };
      this.resetForm("form");
    },
    /** 搜索按钮操作 */
    handleQuery() {
      this.queryParams.pageNum = 1;
      this.getList();
    },
    /** 重置按钮操作 */
    resetQuery() {
      this.dateRange = [];
      this.resetForm("queryForm");
      this.queryParams.deptId = undefined;
      this.$refs.tree.setCurrentKey(null);
      this.handleQuery();
    },
    // 多选框选中数据
    handleSelectionChange(selection) {
      this.userList = selection;
      console.log(JSON.stringify(selection))
      if(selection.length >0){
        this.ids = selection.map(item => item.userId);
        this.single = selection.length != 1;
        this.multiple = !selection.length;
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
  }
};
</script>

<style>
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
    height: 1cm;
    margin:auto;
    background-repeat: no-repeat;
    background-position: 10px 10px;
  }
  .item {
    font-size: 7pt;
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
    /* margin-top: 13px; */
    margin-top: 0mm;
    background-repeat: no-repeat;
    background-position:  5px  10px;
  }
  .qrcode{
    width: 23mm;
    height: 23mm;
    position: absolute !important;
    /* left: 32mm;
    top: 49mm; */
    left: 27mm;
    top: 41.5mm;
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
    /* left: 90mm; */
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
    /* vertical-align: bottom; */
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

