<template>
  <div class="app-container">
    <!-- <el-form :model="form" ref="form" size="small" :inline="true" v-show="showSearch" label-width="68px"> -->
  <el-form :model="queryParams" ref="form" size="small" :inline="true" v-show="showSearch" label-width="68px">
        <!-- <el-form-item label="供应商编码" prop="supplieId">
        <el-input
          v-model="queryParams.supplieId"
          placeholder="请输入供应商编码"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="送货订单编号(送货单单号)" prop="asnNo">
        <el-input
          v-model="queryParams.asnNo"
          placeholder="请输入送货订单编号(送货单单号)"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item> 
      <el-form-item label="审核状态" prop="reviewStatus">
        <el-select v-model="queryParams.reviewStatus" placeholder="请选择">
          <el-option
            v-for="item in options"
            :key="item.value"
            :label="item.label"
            :value="item.value">
          </el-option>
        </el-select>
      </el-form-item> -->
      <el-form-item label="采购订单编号" prop="poNo">
        <el-input
          v-model="queryParams.poNo"
          placeholder="请输入采购订单编号"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="采购行号" prop="poLineNo">
        <el-input
          v-model="queryParams.poLineNo"
          placeholder="请输入行号"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="物料编码(物料号)" prop="sku">
        <el-input
          v-model="queryParams.sku"
          placeholder="请输入物料编码(物料号)"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="生产日期" prop="orderDate">
        <el-date-picker clearable
          v-model="queryParams.orderDate"
          type="date"
          value-format="yyyy-MM-dd"
          placeholder="请选择生产日期">
        </el-date-picker>
      </el-form-item>
      <el-form-item label="送货日期" prop="deliveryDate">
        <el-date-picker clearable
          v-model="queryParams.deliveryDate"
          type="date"
          value-format="yyyy-MM-dd"
          placeholder="请选择送货日期">
        </el-date-picker>
      </el-form-item>   
      <!-- <el-form-item label="采购组" prop="projectCategory">
        <el-input
          v-model="queryParams.projectCategory"
          placeholder="请输入采购组"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="材质" prop="material">
        <el-input
          v-model="queryParams.material"
          placeholder="请输入材质"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>   
      <el-form-item label="工厂" prop="factory">
        <el-input
          v-model="queryParams.factory"
          placeholder="请输入工厂"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="送货单行号" prop="lineNumber">
        <el-input
          v-model="queryParams.lineNumber"
          placeholder="请输入送货单行号"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="物料描述" prop="skuDescr">
        <el-input
          v-model="queryParams.skuDescr"
          placeholder="请输入物料描述"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="下单数量" prop="orderQuantity">
        <el-input
          v-model="queryParams.orderQuantity"
          placeholder="请输入下单数量"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
     <el-form-item label="业务范围" prop="lotatt15">
        <el-input
          v-model="queryParams.lotatt15"
          placeholder="请输入业务范围"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="已交货数量" prop="deliveredQuantity">
        <el-input
          v-model="queryParams.deliveredQuantity"
          placeholder="请输入已交货数量"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="送货数量" prop="expectedQty">
        <el-input
          v-model="queryParams.expectedQty"
          placeholder="请输入送货数量"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="送货重量" prop="totalNetWeight">
        <el-input
          v-model="queryParams.totalNetWeight"
          placeholder="请输入送货重量"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="基本计量单位" prop="packUom">
        <el-input
          v-model="queryParams.packUom"
          placeholder="请输入基本计量单位"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="重量单位" prop="udf03">
        <el-input
          v-model="queryParams.udf03"
          placeholder="请输入重量单位"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="过量收货比例" prop="overRcvPercentage">
        <el-input
          v-model="queryParams.overRcvPercentage"
          placeholder="请输入过量收货比例"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="无限制收货" prop="udf04">
        <el-input
          v-model="queryParams.udf04"
          placeholder="请输入无限制收货"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="SAP库存地点" prop="lotatt09">
        <el-input
          v-model="queryParams.lotatt09"
          placeholder="请输入SAP库存地点"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="收货工厂编码" prop="lotatt14">
        <el-input
          v-model="queryParams.lotatt14"
          placeholder="请输入收货工厂编码"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="标签数量" prop="labelNumber">
        <el-input
          v-model="queryParams.labelNumber"
          placeholder="请输入标签数量"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="标签重量" prop="labelWeight">
        <el-input
          v-model="queryParams.labelWeight"
          placeholder="请输入标签重量"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>      
      <el-form-item label="计划到达日期" prop="expectedArriveTime1">
        <el-date-picker clearable
          v-model="queryParams.expectedArriveTime1"
          type="date"
          value-format="yyyy-MM-dd"
          placeholder="请选择计划到达日期">
        </el-date-picker>
      </el-form-item>
      <el-form-item label="送达地点" prop="placeOfDelivery">
        <el-input
          v-model="queryParams.placeOfDelivery"
          placeholder="请输入送达地点"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="创建者" prop="addWho">
        <el-input
          v-model="queryParams.addWho"
          placeholder="请输入创建者"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="创建时间" prop="addTime">
        <el-date-picker clearable
          v-model="queryParams.addTime"
          type="date"
          value-format="yyyy-MM-dd"
          placeholder="请选择创建时间">
        </el-date-picker>
      </el-form-item> -->
      <el-form-item>
        <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
        <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <el-row :gutter="10" class="mb8">
       <!-- <el-col :span="1.5">
       <el-button
          type="primary"
          plain
          icon="el-icon-plus"
          size="mini"
          @click="handleAdd"
          v-hasPermi="['deliver:order:add']"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="el-icon-edit"
          size="mini"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['deliver:order:edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="el-icon-delete"
          size="mini"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['deliver:order:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="info"
          plain
          icon="el-icon-upload2"
          size="mini"
          @click="handleImport"
          v-hasPermi="['deliver:order:import']"
        >导入</el-button>
      </el-col>
      <el-col :span="1.5">
          <el-button
            type="warning"
            plain
            icon="el-icon-download"
            size="mini"
            @click="handleExport"
            v-hasPermi="['deliver:order:export']"
          >导出</el-button>
        </el-col> -->
      <el-col :span="1.5">
        <el-button
          id="npButton"
          type="success"
          plain
          icon="el-icon-printer"
          size="mini"
          :disabled="single"
          @click="np"
        >标准标签打印</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          id="lpButton"
          type="success"
          plain
          icon="el-icon-receiving"
          size="mini"
          :disabled="single"
          @click="lp"
        >长标签打印</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="el-icon-delete"
          size="mini"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['plan:plan:remove']"
        >删除</el-button>
      </el-col>
      <!-- <el-col :span="1.5">
       <el-button
          type="primary"
          plain
          icon="el-icon-check"
          size="mini"
          :disabled="multiple"
          @click="cs"
          v-hasPermi="['deliver:order:status']"
        >审核通过</el-button>
      </el-col> -->
      <!-- <el-col :span="1.5">
       <el-button
          type="info"
          plain
          icon="el-icon-top"
          size="mini"
          :disabled="multiple"
          @click="ps"
          v-hasPermi="['deliver:order:put']"
        >提交审核</el-button>
      </el-col> -->
      <!-- <el-col :span="12" style="color:red;font-size: 20px;padding-left:25px">未审核订单联系采购审核后打印</el-col>-->
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="orderList" :default-sort = "{prop: 'in', order: 'descending'}" @selection-change="handleSelectionChange" >
      <template slot="empty">
        <p>{{tableEmptyText}}</p>
      </template>
      <el-table-column type="selection" width="55" align="center"  />
      <!-- <el-table-column label="序号" type="index" align="center" prop="in">
        <template slot-scope="scope">
          <span>{{(queryParams.pageNum - 1) * queryParams.pageSize + scope.$index + 1}}</span>
        </template>
      </el-table-column> 
      <el-table-column label="ID" align="center" prop="id" />
      <el-table-column label="送货单ID" align="center" prop="deliverId" /> -->
      <!-- <el-table-column label="审核状态" align="center" prop="reviewStatus"/> -->
      <!-- <el-table-column label="供应商" align="center" prop="supplieId"/> -->
      <el-table-column label="制单人" align="center" prop="addWho" />
      <el-table-column label="送货订单编号" align="center" prop="asnNo cancelBill" width="110">
        <template slot-scope="scope">{{scope.row.asnNo}}{{scope.row.cancelBill}}</template>
      </el-table-column>
      <el-table-column label="送货行号" align="center" prop="lineNumber" />
      <el-table-column label="采购订单编号" align="center" prop="poNo" width="110"/>
      <el-table-column label="采购行号" align="center" prop="poLineNo" />
      <el-table-column label="物料编码(物料号)" align="center" prop="sku" width="120"/>
      <el-table-column label="物料描述" align="center" prop="skuDescr" />
      <el-table-column label="工厂" align="center" prop="factory" width="55"/>
      <el-table-column label="业务范围" align="center" prop="lotatt15"/>
      <el-table-column label="采购组" align="center" prop="projectCategory" width="60"/>
      <!-- <el-table-column label="采购组" align="center" prop="projectCategory" v-if="hiddinInput&&deptControl" />
      <el-table-column label="采购组" align="center" prop="projectCategory"  v-if="showInput" >
        <template slot-scope="scope">
          <el-input v-model="scope.row.projectCategory"  :value="scope.row.projectCategory"></el-input>
        </template>
      </el-table-column> -->
      <!-- <el-table-column label="下单日期" align="center" prop="orderDate" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.orderDate, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="交货日期" align="center" prop="deliveryDate" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.deliveryDate, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column> -->
      <!-- <el-table-column label="下单数量" align="center" prop="orderQuantity" />
      <el-table-column label="送货重量" align="center" prop="totalNetWeight">
        <template slot-scope="scope">
          <el-input v-model="scope.row.totalNetWeight" :value="0" type="number" oninput="if(value<0)value=0"></el-input>
        </template>
      </el-table-column> -->
      <!-- <el-table-column label="生产日期" align="center" prop="orderDate" width="150" v-if="hiddinInput" />
      <el-table-column label="生产日期" align="center" prop="orderDate" width="150" v-if="showInput" > -->
      <el-table-column label="生产日期" align="center" prop="orderDate" width="160">
        <template slot-scope="scope">
          <!-- <el-input v-model="scope.row.orderDate"  :value="scope.row.orderDate"></el-input> -->
          <el-date-picker
            class="date-picker"
            v-model="scope.row.orderDate"  
            :value="scope.row.orderDate"
            type="date"
            placeholder=""
            format="yyyy-MM-dd"
            value-format="yyyy-MM-dd" >
          </el-date-picker>
        </template>
      </el-table-column>
      <el-table-column label="送货日期" align="center" prop="deliveryDate" width="160">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.deliveryDate, '{y}-{m}-{d}') }}</span>
        </template>
        <!-- <template slot-scope="scope">
          <el-date-picker
            class="date-picker"
            v-model="scope.row.deliveryDate"  
            :value="scope.row.deliveryDate"
            type="date"
            placeholder=""
            format="yyyy-MM-dd"
            value-format="yyyy-MM-dd" >
          </el-date-picker>
        </template> -->
      </el-table-column>
      <el-table-column label="标签数量" align="center" prop="labelNumber" width="100">
        <template slot-scope="scope">
          <el-input v-model="scope.row.labelNumber" ></el-input>
        </template>
      </el-table-column>
      <el-table-column label="标签重量(KG)" align="center" prop="labelWeight">
        <template slot-scope="scope">
          <el-input v-model="scope.row.labelWeight" ></el-input>
        </template>
      </el-table-column>
      <el-table-column label="机台" align="center" prop="machine">
        <template slot-scope="scope">
          <el-input v-model="scope.row.machine" ></el-input>
        </template>
      </el-table-column>
      <el-table-column label="打印份数" align="center" prop="deliveredQuantity">
        <template slot-scope="scope">
          <el-input v-model="scope.row.deliveredQuantity" ></el-input>
        </template>
      </el-table-column>
      <el-table-column label="送货数量" align="center" prop="expectedQty"/>
      <el-table-column label="规格" align="center" prop="specification" width="120" />
      <el-table-column label="材质" align="center" prop="material" />
      <!-- <el-table-column label="冲销说明(取消过账)" align="center" prop="cancelBill" /> -->
      <!-- <el-table-column label="剩余发货数" align="center" prop="remainDeliver" /> -->
      <!-- <el-table-column label="基本计量单位" align="center" prop="packUom" />
      <el-table-column label="重量单位" align="center" prop="udf03" />
      <el-table-column label="过量收货比例" align="center" prop="overRcvPercentage" />
      <el-table-column label="无限制收货" align="center" prop="udf04" />
      <el-table-column label="收到质检库存" align="center" prop="qcStatus" />
      <el-table-column label="SAP库存地点" align="center" prop="lotatt09" />
      <el-table-column label="收货工厂编码" align="center" prop="lotatt14" />
      <el-table-column label="计划到达日期" align="center" prop="expectedArriveTime1" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.expectedArriveTime1, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="送达地点" align="center" prop="placeOfDelivery" />
      
      <el-table-column label="创建时间" align="center" prop="addTime" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.addTime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['deliver:order:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['deliver:order:remove']"
          >删除</el-button>
        </template>
      </el-table-column> -->
    </el-table>
    
    <pagination
      v-show="total>0"
      :total="total"
      :page.sync="queryParams.pageNum"
      :limit.sync="queryParams.pageSize"
      @pagination="getList"
    />

    <!-- 打印对话框 -->
    <el-dialog center :title="title" :visible.sync="open" width="960px" append-to-body>
      <section id='printall' style="zoom:140%"></section>
      <section ref="pform" id="printMe" style="margin-top: 50px;margin-bottom: 50px;">
        <el-row :gutter="24">
        <el-col :span="6">
          <div class="label">
            <div class="logo" >
              <label class="titleMatnr el-col-offset-15 el-col el-col-9">物料标签</label>
              <img :src="require('/src/assets/images/logo.jpg')" style="margin-top: 0px;margin-left: 10px"/>
            </div>
            <div class="item" style="height: 0.45cm;">
              <div class="el-col el-col-4">
                <div class="narrow">品名:</div>
              </div>
              <div class="item-text el-col el-col-20">
                <div class="narrow">{{orderList[index].skuDescr}}</div>
              </div>
            </div>
            <div class="item" style="height: 0.45cm;">
              <div class="el-col el-col-4">
                <div class="narrow">料号:</div>
              </div>
              <div class="item-text el-col el-col-20" style="height: 12px;margin-bottom: 0.03cm;">
                <!-- <div class="narrow">{{jsonData.detail.sku}}</div> -->
                <div class="narrow">{{orderList[index].sku}}</div>
              </div>
            </div>
            <div class="item" style="height: 0.45cm;">
              <div class="el-col el-col-4">
                <div class="narrow">批次:</div>
              </div>
              <div class="item-text el-col el-col-8" style="height: 12px;">
                <div class="narrow">{{orderList[index].CHARG}}</div>
              </div>
              <div class="el-col el-col-4">
                <div class="narrow">机台:</div>
              </div>
              <div class="item-text el-col el-col-8">
                <div class="narrow" style="height: 12px;">{{orderList[index].machine}}</div>
              </div>
            </div>
            <div class="item" style="height: 0.45cm;">
              <div class="el-col el-col-7">
                <div class="narrow">重量 / 数量:</div>
              </div>
              <div class="item-text el-col el-col-17">
                <div class="narrow">{{orderList[index].labelWeight}} / {{orderList[index].labelNumber}}</div>
              </div>
            </div>
            <div class="item" style="height: 0.45cm;">
              <div class="el-col el-col-4">
                <div class="narrow">生产:</div>
              </div>
              <div class="item-text el-col el-col-8" style="height: 12px;">
                <div class="narrow">{{orderList[index].orderDate}}</div>
              </div>
              <div class="el-col el-col-5 el-col-offset-2" style="font-size: 2em;">  </div>
              <div class="el-col el-col-4">
                <div class="narrow">失效:</div>
              </div>
              <div class="item-text el-col el-col-8" style="height: 12px;">
                <div class="narrow">{{orderList[index].expectedArriveTime1}}</div>
              </div>
            </div>
            <div class="item" style="height: 0.45cm;">
              <div class="el-col el-col-4">
                <div class="narrow">规格:</div>
              </div>
              <div class="item-text el-col el-col-20">
                <div class="narrow" style="font-size: 10px;">{{orderList[index].specification}}</div>
              </div>
            </div>
            <div class="item" style="height: 0.45cm;">
              <div class="el-col el-col-4">
                <div class="narrow">材质:</div>
              </div>
              <div class="item-text el-col el-col-20">
                <div class="narrow" style="height: 12px;">{{orderList[index].material}}</div>
              </div>
            </div> 
            <div class="item" style="height: 0.45cm;margin-bottom: 1mm;">
              <div class="el-col el-col-4">
                <div class="narrow">厂商:</div>
              </div>
              <div class="item-text el-col el-col-8"  style="height: 12px;">
                <div class="narrow">{{orderList[index].supplieId}}</div>
              </div>
            </div>
            <!-- <div class="item" style="height: 0.45cm;">
              <div class="el-col el-col-4">
                <div class="narrow">PO:</div>
              </div>
              <div class="item-text el-col el-col-9">
                <div class="narrow">{{orderList[index].poNo}}/{{orderList[index].poLineNo}}</div>
              </div>
            </div> -->
            <div class="item" style="height: 0.55cm;">
              <div class="el-col el-col-4">
                <div class="narrow">备注:</div>
              </div>
              <div class="item-text el-col el-col-8">
                <div class="narrow">{{orderList[index].manager}}-{{orderList[index].stockLocat}}</div>
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
                <img :src="require('/src/assets/images/logo.jpg')" style="margin-top: 0px;margin-left: 10px"/>
              </div>
              <div class="item" style="height: 0.45cm;">
                <div class="el-col el-col-4">
                  <div class="narrow">品名:</div>
                </div>
                <div class="item-text el-col el-col-20">
                  <div class="narrow">{{orderList[index].skuDescr}}</div>
                </div>
              </div>
              <div class="item" style="height: 0.45cm;">
                <div class="el-col el-col-4">
                  <div class="narrow">料号:</div>
                </div>
                <div class="item-text el-col el-col-20" style="height: 12px;margin-bottom: 0.03cm;">
                  <div class="narrow">{{orderList[index].sku}}</div>
                </div>
              </div>
              <!-- <br> -->
              <div class="item" style="height: 0.45cm;">
                <div class="el-col el-col-4">
                  <div class="narrow">批次:</div>
                </div>
                <div class="item-text el-col el-col-8" style="height: 12px;">
                  <div class="narrow">{{orderList[index].CHARG}}</div>
                </div>
                <div class="el-col el-col-4">
                  <div class="narrow">机台:</div>
                </div>
                <div class="item-text el-col el-col-8">
                  <div class="narrow" style="height: 12px;">{{orderList[index].machine}}</div>
                </div>
              </div>
              <div class="item" style="height: 0.45cm;">
                <div class="el-col el-col-7">
                  <div class="narrow">重量 / 数量:</div>
                </div>
                <div class="item-text el-col el-col-17">
                  <div class="narrow">{{orderList[index].labelWeight}} / {{orderList[index].labelNumber}}</div>
                </div>
              </div>
              <div class="item" style="height: 0.45cm;">
                <div class="el-col el-col-4">
                  <div class="narrow">生产:</div>
                </div>
                <div class="item-text el-col el-col-8" style="height: 12px;">
                  <div class="narrow">{{orderList[index].orderDate}}</div>
                </div>
                <div class="el-col el-col-5 el-col-offset-2" style="font-size: 2em;">  </div>
                <div class="el-col el-col-4">
                  <div class="narrow">失效:</div>
                </div>
                <div class="item-text el-col el-col-8" style="height: 12px;">
                  <div class="narrow">{{orderList[index].expectedArriveTime1}}</div>
                </div>
              </div>
              <div class="item" style="height: 0.45cm;">
                <div class="el-col el-col-4">
                  <div class="narrow">规格:</div>
                </div>
                <div class="item-text el-col el-col-20" >
                  <div class="narrow" style="font-size: 10px;">{{orderList[index].specification}}</div>
                </div>
              </div>
              <div class="item" style="height: 0.45cm;">
                <div class="el-col el-col-4">
                  <div class="narrow">材质:</div>
                </div>
                <div class="item-text el-col el-col-20">
                  <div class="narrow" style="height: 13px;">{{orderList[index].material}}</div>
                </div>
              </div> 
              <div class="item" style="height: 0.45cm;margin-bottom: 1mm;">
                <div class="el-col el-col-4">
                  <div class="narrow">厂商:</div>
                </div>
                <div class="item-text el-col el-col-8"  style="height: 12px;">
                  <div class="narrow">{{orderList[index].supplieId}}</div>
                </div>
              </div>
              <!-- <div class="item" style="height: 0.45cm;">
                <div class="el-col el-col-4">
                  <div class="narrow">PO:</div>
                </div>
                <div class="item-text el-col el-col-9">
                  <div class="narrow">{{orderList[index].poNo}}/{{orderList[index].poLineNo}}</div>
                </div>
              </div> -->
              <div class="item" style="height: 0.55cm;">
                <div class="el-col el-col-4">
                  <div class="narrow">备注:</div>
                </div>
                <div class="item-text el-col el-col-8" >
                  <div class="narrow">{{orderList[index].manager}}-{{orderList[index].stockLocat}}</div>
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

    
    <!-- 长打印对话框 -->
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
                <div class="narrow">{{orderList[index].skuDescr}}</div>
              </div>
            </div>
            <div class="item-long" style="height: 0.5cm;">
              <div class="el-col el-col-3 el-col-offset-0">
                <div class="narrow">供应商</div>
              </div>
              <div class="item-text-long el-col el-col-7">
                <div class="narrow">{{orderList[index].supplieId}}</div>
              </div>
              <div class="el-col el-col-3 el-col-offset-0" style="height: 0.5cm;">
                <div class="narrow">批次</div>
              </div>
              <div class="item-text-long el-col el-col-7">{{orderList[index].CHARG}}</div>
            </div>
            <div class="item-long" style="height: 0.5cm;">
              <div class="el-col el-col-3 el-col-offset-0" style="height: 0.5cm;">
                <div class="narrow">料号</div>
              </div>
              <div class="item-text-long el-col el-col-7">
                <div class="narrow">{{orderList[this.index].sku}}</div>
              </div>
              <div class="el-col el-col-3 el-col-offset-0" style="height: 0.5cm;">
                <div class="narrow">材质</div>
              </div>
              <div class="item-text-long el-col el-col-7">{{orderList[index].material}}</div>
            </div>
            <div class="item-long" style="height: 0.5cm;">
              <div class="el-col el-col-3 el-col-offset-0" style="height: 0.5cm;">
                <div class="narrow">颜色</div>
              </div>
              <div class="item-text-long el-col el-col-7">
                <div class="narrow">{{orderList[index].YCPICI}}其他</div>
              </div>
              <div class="el-col el-col-5 el-col-offset-0" style="height: 0.5cm;">
                <div class="narrow">重量/数量</div>
              </div>
              <div class="item-text-long el-col el-col-7">{{orderList[index].labelWeight}}/{{orderList[index].labelNumber}}</div>
            </div>
            <div class="item-long" style="height: 0.5cm;">
              <div class="el-col el-col-4 el-col-offset-0">
                <div class="narrow">生产日期</div>
              </div>
              <div class="item-text-long el-col el-col-6" style="height: 0.5cm;">
                <div class="narrow" style="position: relative !important; top:0.05cm">{{orderList[index].orderDate}}</div>
              </div>
              <div class="el-col el-col-4 el-col-offset-0" style="height: 0.5cm;">
                <div class="narrow">失效日期</div>
              </div>
              <div class="item-text-long el-col el-col-7">
                <div class="narrow" style="position: relative !important; top:0.05cm">{{orderList[index].expectedArriveTime1}}</div>
              </div>
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

    <!-- 添加或修改送货单对话框 -->
    <!-- <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="供应商编码" prop="supplieId">
          <el-input v-model="form.supplieId" placeholder="请输入供应商编码" />
        </el-form-item>
        <el-form-item label="送货订单编号(送货单单号)" prop="asnNo">
          <el-input v-model="form.asnNo" placeholder="请输入送货订单编号(送货单单号)" />
        </el-form-item>
        <el-form-item label="采购订单编号(采购单单号)" prop="poNo">
          <el-input v-model="form.poNo" placeholder="请输入采购订单编号(采购单单号)" />
        </el-form-item>
        <el-form-item label="工厂" prop="factory">
          <el-input v-model="form.factory" placeholder="请输入工厂" />
        </el-form-item>
        <el-form-item label="送货单行号" prop="lineNumber">
          <el-input v-model="form.lineNumber" placeholder="请输入送货单行号" />
        </el-form-item>
        <el-form-item label="采购组" prop="projectCategory">
          <el-input v-model="form.projectCategory" placeholder="请输入采购组" />
        </el-form-item>
        <el-form-item label="下单日期" prop="orderDate">
          <el-date-picker clearable
            v-model="form.orderDate"
            type="date"
            value-format="yyyy-MM-dd"
            placeholder="请选择下单日期">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="交货日期" prop="deliveryDate">
          <el-date-picker clearable
            v-model="form.deliveryDate"
            type="date"
            value-format="yyyy-MM-dd"
            placeholder="请选择交货日期">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="物料编码(物料号)" prop="sku">
          <el-input v-model="form.sku" placeholder="请输入物料编码(物料号)" />
        </el-form-item>
        <el-form-item label="物料描述" prop="skuDescr">
          <el-input v-model="form.skuDescr" placeholder="请输入物料描述" />
        </el-form-item>
        <el-form-item label="下单数量" prop="orderQuantity">
          <el-input v-model="form.orderQuantity" placeholder="请输入下单数量" />
        </el-form-item>
        <el-form-item label="业务范围" prop="lotatt15">
          <el-input v-model="form.lotatt15" placeholder="请输入业务范围" />
        </el-form-item>
        <el-form-item label="已交货数量" prop="deliveredQuantity">
          <el-input v-model="form.deliveredQuantity" placeholder="请输入已交货数量" />
        </el-form-item>
        <el-form-item label="送货数量" prop="expectedQty">
          <el-input v-model="form.expectedQty" placeholder="请输入送货数量" />
        </el-form-item>
        <el-form-item label="送货重量" prop="totalNetWeight">
          <el-input v-model="form.totalNetWeight" placeholder="请输入送货重量" />
        </el-form-item>
        <el-form-item label="基本计量单位" prop="packUom">
          <el-input v-model="form.packUom" placeholder="请输入基本计量单位" />
        </el-form-item>
        <el-form-item label="重量单位" prop="udf03">
          <el-input v-model="form.udf03" placeholder="请输入重量单位" />
        </el-form-item>
        <el-form-item label="过量收货比例" prop="overRcvPercentage">
          <el-input v-model="form.overRcvPercentage" placeholder="请输入过量收货比例" />
        </el-form-item>
        <el-form-item label="无限制收货" prop="udf04">
          <el-input v-model="form.udf04" placeholder="请输入无限制收货" />
        </el-form-item>
        <el-form-item label="SAP库存地点" prop="lotatt09">
          <el-input v-model="form.lotatt09" placeholder="请输入SAP库存地点" />
        </el-form-item>
        <el-form-item label="收货工厂编码" prop="lotatt14">
          <el-input v-model="form.lotatt14" placeholder="请输入收货工厂编码" />
        </el-form-item>
        <el-form-item label="标签数量" prop="labelNumber">
          <el-input v-model="form.labelNumber" placeholder="请输入标签数量" />
        </el-form-item>
        <el-form-item label="标签重量" prop="labelWeight">
          <el-input v-model="form.labelWeight" placeholder="请输入标签重量" />
        </el-form-item>
        <el-form-item label="材质" prop="material">
          <el-input v-model="form.material" placeholder="请输入材质" />
        </el-form-item>
        <el-form-item label="计划到达日期" prop="expectedArriveTime1">
          <el-date-picker clearable
            v-model="form.expectedArriveTime1"
            type="date"
            value-format="yyyy-MM-dd"
            placeholder="请选择计划到达日期">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="送达地点" prop="placeOfDelivery">
          <el-input v-model="form.placeOfDelivery" placeholder="请输入送达地点" />
        </el-form-item>
        <el-form-item label="创建者" prop="addWho">
          <el-input v-model="form.addWho" placeholder="请输入创建者" />
        </el-form-item>
        <el-form-item label="创建时间" prop="addTime">
          <el-date-picker clearable
            v-model="form.addTime"
            type="date"
            value-format="yyyy-MM-dd"
            placeholder="请选择创建时间">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="行号" prop="poLineNo">
          <el-input v-model="form.poLineNo" placeholder="请输入行号" />
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog> -->

     <!-- 用户导入对话框 -->
     <!-- <el-dialog :title="upload.title" :visible.sync="upload.open" width="400px" append-to-body>
      <el-upload
        ref="upload"
        :limit="1"
        accept=".xlsx, .xls"
        :headers="upload.headers"
        :action="upload.url + '?updateSupport=' + upload.updateSupport"
        :disabled="upload.isUploading"
        :on-progress="handleFileUploadProgress"
        :on-success="handleFileSuccess"
        :auto-upload="false"
        drag
      >
        <i class="el-icon-upload"></i>
        <div class="el-upload__text">将文件拖到此处，或<em>点击上传</em></div>
        <div class="el-upload__tip text-center" slot="tip">
          <div class="el-upload__tip" slot="tip">
            <el-checkbox v-model="upload.updateSupport" /> 是否更新已经存在的个人物品数据
          </div>
          <span>仅允许导入xls、xlsx格式文件。</span>
          <el-link type="primary" :underline="false" style="font-size:12px;vertical-align: baseline;" @click="importTemplate">下载模板</el-link>
        </div>
      </el-upload>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitFileForm">确 定</el-button>
        <el-button @click="upload.open = false">取 消</el-button>
      </div>
    </el-dialog> -->


  </div>
</template>

<script>
import { listOrder, getOrder, delOrder,updateStatus,updateStatusPut,addOrderWms,getCharg,updateOrder,} from "@/api/deliver/order";
import { savePrintData,getInfo} from '@/api/login'
import { getToken, setToken, removeToken } from '@/utils/auth'
import { updateUserPwd} from '@/api/system/user'
import QRCode from "qrcode";
import print from 'print-js'
import Cookies from 'js-cookie'
export default {
  name: "Order",
  data() {
    return {
      options: [ {
          value: '未审核',
          label: '未审核'
        }, {
          value: '已审核',
          label: '已审核'
        }],
      value: '',
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
      // 送货单表格数据
      orderList: [{"addWho":"","stockLocat":"","manager":"","expectedArriveTime1":"","CHARG":"","expectedQty":"","sku":"","orderQuantity":"","asnNo":"","poNo":"","factory":"","skuDescr":"","labelWeight":"","labelNumber":"","material":"","orderDate":"","deliveryDate":"","DATE2":"","supplieId":"","poNo":"","poLineNo":"","number1":1,"number2":2,"number3":1,"deliveredQuantity":"","factory":"","specification":"","projectCategory":"","machine":"","cancelBill":"","remainDeliver":0}],
      CHARG:"",
      //传到sap的字段
      order_List:[{"sku":"","CHARG":"","labelNumber":"","labelWeight":"",}],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      open2: false,
      src:"",
      src2:"",
      src3:"",
      printLoading: true,
      number1:1,
      number2:2,
      number3:1,
      index:0,
      inindex:"",
      tableEmptyText:'',
      showInput:false,
      hiddinInput:true,
      deptControl:false,
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
      // material_print:null,
      // specification_print:null,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        supplieId: null,
        asnNo: null,
        poNo: null,
        factory: null,
        lineNumber: null,
        projectCategory: null,
        orderDate: null,
        deliveryDate: null,
        sku: null,
        skuDescr: null,
        orderQuantity: null,
        lotatt15: null,
        deliveredQuantity: null,
        expectedQty: null,
        totalNetWeight: null,
        packUom: null,
        udf03: null,
        overRcvPercentage: null,
        udf04: null,
        qcStatus: null,
        lotatt09: null,
        lotatt14: null,
        labelNumber: null,
        labelWeight: null,
        material: null,
        expectedArriveTime1: null,
        placeOfDelivery: null,
        addWho: null,
        addTime: null,
        poLineNo: null,
        specification:null,
        // reviewStatus:null,
        machine:null,
        index:null,
        expectedArriveTime1:null,
        cancelBill:null,
        remainDeliver:0
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
      },
      // 导入参数
      upload: {
        // 是否显示弹出层（用户导入）
        open: false,
        // 弹出层标题（用户导入）
        title: "",
        // 是否禁用上传
        isUploading: false,
        // 是否更新已经存在的用户数据
        updateSupport: 0,
        // 设置上传的请求头部
        headers: { Authorization: "Bearer " + getToken() },
        // 上传的地址
        url: process.env.VUE_APP_BASE_API + "/deliver/order/importData"
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
    };
  },
  created() {
    getInfo().then(response => {
      //供应商角色的话，才显示输入
      // if(response.roles=='user'||response.roles=='admin'){
      //   this.showInput=true;
      //   this.hiddinInput=false;
      // }      
    });
    this.getList();
  },
  methods: {
    ps(){
      this.putStatus()
    },
    cs(){
      this.changeStatus()
    },
    
    np(){
      this.normalprint();   
    },
    lp(){
      this.longprint();
    },
    //补0
    padZero(number, length) {
      var str = "" + number;
      while (str.length < length) {
        str = "0" + str;
      }
      return str;
    },
    //补空格
    padSpace(number, length) {
      var str = "" + number;
      while (str.length < length) {
        str =  str + " ";
      }
      return str;
    },
    //sku 补18位
    padSku(number){
      var str = "" + number;
      if(str.length == 18){
        return str;        
      }else{
        while (str.length < 18) {
          str = "0" + str;
        }
        return str;
      }
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
    //日期比较的方法
    compare(date1,date2) {
      let dates1 = new Date(date1);
      let dates2 = new Date(date2);
      if (dates1 < dates2 ||dates1 == dates2) {
        return true
      } else {
        return false
      }
    },
    normalprint(){
      document.getElementById("npButton").disabled = true;
      // 延迟2秒后重新启用按钮
      setTimeout(function() {
          document.getElementById("npButton").disabled = false;
      }, 2000);
      
      this.index = this.orderList.findIndex(item => item.id == this.ids);
      var index = this.orderList.findIndex(item => item.id == this.ids);
      // this.inindex=index
      // console.log("index:"+index);
      // if(this.orderList[index].reviewStatus!="已审核"){
      //   this.$alert("请审核后打印")
      //   return;
      // }
      // if(this.orderList[index].deliveryDate ==null){
      //   this.$alert("请填写送货日期")
      //   return;
      // }
      if(this.orderList[index].orderDate==null){
        this.$alert("请填写生产日期")
        return;
      }          
      if(this.compare(this.orderList[index].deliveryDate,this.orderList[index].orderDate)){
        this.$alert("送货日期不能大于生产日期")
        return;
      }
      if(this.orderList[index].labelNumber =="0"||this.orderList[index].labelNumber ==null){
        this.$alert("请填写标签数量")
        return;
      }
      // if(this.orderList[index].labelNumber > this.orderList[index].expectedQty){
      //   this.$alert("标签数量不能大于送货数量")
      //   return;
      // }
      if(this.orderList[index].deliveredQuantity==undefined || this.orderList[index].deliveredQuantity==0){
        this.$alert("请填写打印份数")
        return;
      }     
      // console.log("this.orderList[index]"+JSON.stringify(this.orderList[index]))
      // console.log("this.ids"+this.ids)
      var flag = "S"
      if(this.orderList[index].sku.length>18){
        this.orderList[index].sku = this.orderList[index].sku.substring(0,18);
      }
      // console.log(this.orderList[index].material.length)
      // if(this.orderList[index].material.length>10){
      //   this.material_print = this.orderList[index].material.substring(0,10);
      // }
      // if(this.orderList[index].specification.length>10){
      //   this.specification_print = this.orderList[index].specification.substring(0,10);
      // }
      console.log(JSON.stringify(this.orderList[index]))
      //提交到wms
      this.jsonData.asnNo = this.orderList[index].asnNo;
      this.jsonData.supplierId = this.orderList[index].supplieId;
      this.jsonData.expectedArriveTime1 = this.orderList[index].deliveryDate;
      this.jsonData.addTime = this.getCurrentDate();
      this.jsonData.placeOfDelivery = this.orderList[index].placeOfDelivery;
      this.jsonData.addWho = this.orderList[index].supplieId;
      this.jsonData.detail[0].asnNo = this.orderList[index].asnNo;
      this.jsonData.detail[0].poLineNo = this.orderList[index].poLineNo;
      this.jsonData.detail[0].poNo = this.orderList[index].poNo;
      this.jsonData.detail[0].sku = this.orderList[index].sku;
      this.jsonData.detail[0].skuDescr = this.orderList[index].skuDescr;
      this.jsonData.detail[0].expectedQty = this.orderList[index].expectedQty;
      this.jsonData.detail[0].lotatt15 = this.orderList[index].lotatt15;
      this.jsonData.detail[0].udf03 = this.orderList[index].udf03;
      this.jsonData.detail[0].overRcvPercentage = this.orderList[index].overRcvPercentage;
      this.jsonData.detail[0].udf04 = this.orderList[index].udf04;
      this.jsonData.detail[0].lotatt09 = this.orderList[index].lotatt09;
      this.jsonData.detail[0].lotatt14 = this.orderList[index].factory;
      this.jsonData.detail[0].lotatt20 = this.orderList[index].orderDate;
      this.jsonData.detail[0].packUom = this.orderList[index].packUom;
      this.jsonData.detail[0].qcStatus = this.orderList[index].qcStatus;
      this.jsonData.detail[0].totalNetWeight = this.orderList[index].totalNetWeight;
      console.log("this.jsonData"+JSON.stringify(this.jsonData));
      
      //代理地址wms
      addOrderWms(this.jsonData).then(response=>{
        console.log(JSON.stringify(response))
                
        updateOrder(this.orderList[index]).then(res => {
          this.$modal.msgSuccess("更新成功");
          console.log(JSON.stringify(res));
          // this.getList();
        });

        // 提交成功后打印
      if(response.RETURN_CODE=='1000'){
        //传SAP
        var arr={};
        arr['purchaseOrder'] = this.orderList[index].poNo;
        arr['thingOrder'] = this.orderList[index].sku;
        arr['supplier'] =  this.orderList[index].supplieId;
        arr['flag'] = flag;
        arr['orDate'] =  this.orderList[index].orderDate;
        arr['deDate'] = this.orderList[index].deliveryDate;
        getCharg(arr).then(response => {
          var resp=response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_021Response"];
          if(resp["O_TABLE"].item != undefined){ 
          // 'charg' res["O_TABLE"]=> $result->O_CHARG, 'chargList' => $result->O_TABLE
            if(resp["O_TABLE"].item.length>1){
              this.CHARG = resp["O_TABLE"].item[0].CHARG
              this.orderList[index].expectedArriveTime1= resp["O_TABLE"].item[0].ZYXRQ
              this.orderList[this.index].expectedArriveTime1= resp["O_TABLE"].item[0].ZYXRQ
            }else{
              this.CHARG = resp["O_TABLE"].item.CHARG
              this.orderList[index].expectedArriveTime1= resp["O_TABLE"].item.ZYXRQ
              this.orderList[this.index].expectedArriveTime1= resp["O_TABLE"].item.ZYXRQ
              console.log("this.CHARG"+this.CHARG)
            }
              this.orderList[index].CHARG = this.CHARG;
              this.orderList[index].PRINTNO = this.orderList[index].deliveredQuantity * 2;
              // console.log("JSON.stringify this.orderList[index]"+JSON.stringify(this.orderList[index]))
              this.order_List[0].CHARG=this.orderList[index].CHARG;
              this.order_List[0].sku=this.padSku(this.orderList[index].sku);
              this.order_List[0].labelNumber = this.padSpace(this.orderList[index].labelNumber,16);
              this.order_List[0].labelWeight = this.padSpace(this.orderList[index].labelWeight,16);
              console.log("order_List"+JSON.stringify(this.order_List[0]))
              //拼接二维码内容
              var printData='*'+this.order_List[0].sku+this.order_List[0].CHARG+this.order_List[0].labelNumber+this.order_List[0].labelWeight + this.padSpace(' ',17) + '000'
              console.log("printData:"+printData)
              var data="data="+encodeURI(JSON.stringify(this.order_List[0]));
              console.log("data:"+data)
              // post到PHP后端data
              savePrintData(data).then(res => {
                console.log("res"+JSON.stringify(res))
                // if(this.orderList[0].sku != res.data.match(/\*(\S*) /)[1]){
                //   this.$alert("物料号不一致请重新选择")
                //   return;
                // }
                this.open = true;
                setTimeout(() => {
                  // res->this.orderList[0],deliveredQuantity:undifined->1
                  console.log("this.$refs.pform"+this.$refs.pform);
                  this.orderList[index].number1 = Number(this.orderList[index].deliveredQuantity)+1;
                  this.orderList[index].number2 = Number(this.orderList[index].deliveredQuantity)+2;

                  var printable = document.getElementById("printall");
                  printable.style = "display:block;top:2px;left: 5mm;color:#000000";
                  printable.style.zoom = 1.235;
                  console.log(" printable.style.zoom "+ printable.style.zoom );
                  //先清空
                  for(var i = printable.childNodes.length - 1; i >= 0; i--) {
                    printable.removeChild(printable.childNodes[i]);
                  }
                  var paixu = [];
                  for(var i=0;i<this.orderList[index].deliveredQuantity;i++){
                    printable[i] = document.getElementById('printMe');
                    //生成二维码
                    this.getQRCode(printData+" "+this.padZero(this.orderList[index].number1.toString(),4)+" "+this.orderList[index].supplieId)
                    document.getElementsByClassName("qrcode")[0].childNodes[0].src = this.src;
                    this.getQRCode2(printData+" "+this.padZero(this.orderList[index].number2.toString(),4)+" "+this.orderList[index].supplieId)
                    document.getElementsByClassName("qrcode")[1].childNodes[0].src = this.src2;

                    var jubuData = document.getElementById("printMe").innerHTML;
                    var jubu = document.createElement("section");
                    jubu.style = "margin-top: 2px;margin-bottom: 10px;margin-left: 3mm;";
                    jubu.innerHTML = jubuData;
                    paixu[i] = jubu;
                    printable.insertBefore(jubu,printable.childNodes[0]);
                    console.log(printable)
                    // this.orderList[index].number1 = this.orderList[index].number1+2
                    // this.orderList[index].number2 = this.orderList[index].number2+2
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
            }else{
              arr['flag'] = "C"
              getCharg(arr).then(response => {
                var respo=response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_021Response"];
                console.log("C response:"+JSON.stringify(response))
                console.log("C response.data.chargList:"+respo["O_CHARG"])
                this.orderList[index].expectedArriveTime1= respo["O_DATE"]
                this.orderList[this.index].expectedArriveTime1= respo["O_DATE"]
                this.CHARG = respo["O_CHARG"];
                this.orderList[index].CHARG = this.CHARG;
                this.orderList[index].PRINTNO = this.orderList[index].deliveredQuantity * 2;
                  
                this.order_List[0].CHARG=this.orderList[index].CHARG;
                this.order_List[0].sku=this.padSku(this.orderList[index].sku);
                this.order_List[0].labelNumber = this.padSpace(this.orderList[index].labelNumber,16);
                this.order_List[0].labelWeight = this.padSpace(this.orderList[index].labelWeight,16);
                // var printData=this.order_List[0].sku+" "+this.order_List[0].CHARG+" "+this.order_List[0].labelWeight+" "+this.order_List[0].supplieId
                var printData='*'+this.order_List[0].sku+this.order_List[0].CHARG+this.order_List[0].labelNumber+this.order_List[0].labelWeight + this.padSpace(' ',17)+ '000'
                console.log("printData:"+printData)
                var data="data="+encodeURI(JSON.stringify(this.order_List[0]));
                console.log("data:"+data)
                // var data="data="+encodeURI(JSON.stringify(this.orderList[index]));
                savePrintData(data).then(res => {
                  // if(this.orderList[0].sku != res.data.match(/\*(\S*) /)[1]){
                  //   this.$alert("物料号不一致请重新选择")
                  //   return;
                  // }
                  this.open = true;
                  setTimeout(() => {
                    console.log(this.$refs.pform);
                    var printable = document.getElementById("printall");
                    printable.style = "display:block;top:2px;left: 3mm;color:#000000";
                    printable.style.zoom =1.235;
                    this.orderList[index].number1 = Number(this.orderList[index].deliveredQuantity)+1;
                    this.orderList[index].number2 = Number(this.orderList[index].deliveredQuantity)+2;

                    //先清空
                    for(var i = printable.childNodes.length - 1; i >= 0; i--) {
                      printable.removeChild(printable.childNodes[i]);
                    }
                    var paixu=[];
                
                    for(var i=0;i<this.orderList[index].deliveredQuantity;i++){
                      printable[i] = document.getElementById('printMe');
                     
                      this.getQRCode(printData+" "+this.padZero(this.orderList[index].number1.toString(),4)+" "+this.orderList[index].supplieId)
                      document.getElementsByClassName("qrcode")[0].childNodes[0].src = this.src;
                      this.getQRCode2(printData+" "+this.padZero(this.orderList[index].number2.toString(),4)+" "+this.orderList[index].supplieId)
                      document.getElementsByClassName("qrcode")[1].childNodes[0].src = this.src2;

                      var jubuData = document.getElementById("printMe").innerHTML;
                      var jubu = document.createElement("section");
                      jubu.style = "margin-top: 2px;margin-bottom: 10px;margin-left: 5mm;";
                      jubu.innerHTML = jubuData;
                      paixu[i] = jubu;
                      // printable.insertBefore(jubu,printable.childNodes[0]);
                      console.log(printable)
                      this.orderList[index].number1 = this.orderList[index].number1+2
                      this.orderList[index].number2 = this.orderList[index].number2+2
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
              })
            }
        })
      }else{
        alert("wms提交失败请重试-"+response.RETURN_DESC) 
      }
      }).catch(error=>{
        console.log(error)    
      })
    },
    //长打印
    longprint(){
      document.getElementById("lpButton").disabled = true;
      // 延迟2秒后重新启用按钮
      setTimeout(function() {
          document.getElementById("lpButton").disabled = false;
      }, 2000);

      this.index = this.orderList.findIndex(item => item.id == this.ids);
      var index = this.orderList.findIndex(item => item.id == this.ids);
      console.log("index:"+index);
      // if(this.orderList[index].reviewStatus!="已审核"){
      //   this.$alert("请审核后打印")
      //   return;
      // }
      // if(this.orderList[index].deliveryDate ==null){
      //   this.$alert("请填写送货日期")
      //   return;
      // } 
      if(this.orderList[index].orderDate==null){
        this.$alert("请填写生产日期")
        return;
      }          

      if(this.compare(this.orderList[index].deliveryDate,this.orderList[index].orderDate)){
        this.$alert("送货日期不能大于生产日期")
        return;
      }
      if(this.orderList[index].labelNumber =="0"||this.orderList[index].labelNumber ==null){
        this.$alert("请填写标签数量")
        return;
      }
      if(this.orderList[index].labelNumber > this.orderList[index].expectedQty){
        this.$alert("标签数量不能大于送货数量")
        return;
      }
      if(this.orderList[index].deliveredQuantity==undefined || this.orderList[index].deliveredQuantity==0){
        this.$alert("请填写打印份数")
        return;
      }
      var flag = "S"
      if(this.orderList[index].sku.length>18){
        this.orderList[index].sku = this.orderList[index].sku.substring(0,18);
      }
      // if(this.orderList[index].material.length>10){
      //   this.material_print = this.orderList[index].material.substring(0,10);
      // }
      // if(this.orderList[index].specification.length>10){
      //   this.specification_print = this.orderList[index].specification.substring(0,10);
      // }
      //提交到wms
      this.jsonData.asnNo = this.orderList[index].asnNo;
      this.jsonData.supplierId = this.orderList[index].supplieId;
      this.jsonData.expectedArriveTime1 = this.orderList[index].deliveryDate;
      this.jsonData.addTime = this.getCurrentDate();
      this.jsonData.placeOfDelivery = this.orderList[index].placeOfDelivery;
      this.jsonData.addWho = this.orderList[index].supplieId;
      this.jsonData.detail[0].asnNo = this.orderList[index].asnNo;
      this.jsonData.detail[0].poLineNo = this.orderList[index].poLineNo;
      this.jsonData.detail[0].poNo = this.orderList[index].poNo;
      this.jsonData.detail[0].sku = this.orderList[index].sku;
      this.jsonData.detail[0].skuDescr = this.orderList[index].skuDescr;
      this.jsonData.detail[0].expectedQty = this.orderList[index].expectedQty;
      this.jsonData.detail[0].lotatt15 = this.orderList[index].lotatt15;
      this.jsonData.detail[0].udf03 = this.orderList[index].udf03;
      this.jsonData.detail[0].overRcvPercentage = this.orderList[index].overRcvPercentage;
      this.jsonData.detail[0].udf04 = this.orderList[index].udf04;
      this.jsonData.detail[0].lotatt09 = this.orderList[index].lotatt09;
      this.jsonData.detail[0].lotatt14 = this.orderList[index].factory;
      this.jsonData.detail[0].lotatt20 = this.orderList[index].orderDate;
      this.jsonData.detail[0].packUom = this.orderList[index].packUom;
      this.jsonData.detail[0].qcStatus = this.orderList[index].qcStatus;
      this.jsonData.detail[0].totalNetWeight = this.orderList[index].totalNetWeight;
      console.log("this.jsonData"+JSON.stringify(this.jsonData));
      
      //代理地址wms
      addOrderWms(this.jsonData).then(response=>{
        //提交成功后打印
      if(response.RETURN_CODE=='1000'){
        //传SAP
        var array={};
        array['purchaseOrder'] = this.orderList[index].poNo;
        array['thingOrder'] = this.orderList[index].sku;
        array['supplier'] = this.orderList[index].supplieId;
        array['flag'] = flag;
        array['orDate'] =  this.orderList[index].orderDate;
        array['deDate'] = this.orderList[index].deliveryDate;
        getCharg(array).then(response => {
          console.log("response"+JSON.stringify(response))
          var ress=response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_021Response"];
          if(ress["O_TABLE"].item != undefined){ 
            if(ress["O_TABLE"].item.length>1){
              this.CHARG = ress["O_TABLE"].item[0].CHARG
              this.orderList[index].expectedArriveTime1= ress["O_TABLE"].item[0].ZYXRQ
              this.orderList[this.index].expectedArriveTime1= ress["O_TABLE"].item[0].ZYXRQ
            }else{
              this.CHARG = ress["O_TABLE"].item.CHARG
              console.log("this.CHARG"+this.CHARG)
              this.orderList[index].expectedArriveTime1= ress["O_TABLE"].item.ZYXRQ
              this.orderList[this.index].expectedArriveTime1= ress["O_TABLE"].item.ZYXRQ
            }
            this.orderList[index].CHARG = this.CHARG;
            this.orderList[index].PRINTNO = this.orderList[index].deliveredQuantity * 2;
            console.log("JSON.stringify this.orderList[index]"+JSON.stringify(this.orderList[index]))

            this.order_List[0].CHARG=this.orderList[index].CHARG;
            this.order_List[0].sku=this.padSku(this.orderList[index].sku);
            this.order_List[0].labelNumber = this.padSpace(this.orderList[index].labelNumber,16);
            this.order_List[0].labelWeight = this.padSpace(this.orderList[index].labelWeight,16);
            console.log("order_List"+JSON.stringify(this.order_List[0]))
            // var printData=this.order_List[0].sku+" "+this.order_List[0].CHARG+" "+this.order_List[0].labelWeight+" "+this.order_List[0].supplieId
            var printData='*'+this.order_List[0].sku+this.order_List[0].CHARG+this.order_List[0].labelNumber+this.order_List[0].labelWeight + this.padSpace(' ',17)+ '000'

            var data="data="+encodeURI(JSON.stringify(this.order_List[0]));
            console.log("printData:"+printData)
            // post到PHP后端data
            savePrintData(data).then(res => {
              // if(this.orderList[0].sku != res.data.match(/\*(\S*) /)[1]){
              //   this.$alert("物料号不一致请重新选择")
              //   return;
              // }
              this.open2 = true;
              setTimeout(() => {
                console.log("this.$refs.pform2"+this.$refs.pform2);       
                var printable = document.getElementById("printall2");
                printable.style = "display:block;margin-top:3mm;margin-left: 3mm;color:#000000";
                printable.style.zoom = 0.99;
                this.orderList[index].number3 = Number(this.orderList[index].deliveredQuantity)+1;
                console.log(" printable.style.zoom "+ printable.style.zoom );
                //先清空
                for(var i = printable.childNodes.length - 1; i >= 0; i--) {
                  printable.removeChild(printable.childNodes[i]);
                }
                var paixu = [];
                  //const that = this;
                  for (var i = 0; i < this.orderList[index].deliveredQuantity; i++) {
                    printable[i] = document.getElementById('printMe2');

                    this.getQRCode3(printData+" "+this.padZero(this.orderList[index].number3.toString(),4)+" "+this.orderList[index].supplieId)
                    document.getElementsByClassName("qrcode-long")[0].childNodes[0].src = this.src3;
      
                    this.orderList[index].number3 += 1;
 
                    // jubu.innerHTML = jubuData.innerHTML;
                    var jubuData = document.getElementById("printMe2").innerHTML;
                    var jubu = document.createElement("section");
                    jubu.style = "margin-top:3mm;margin-left: 3mm;color:#000000";
                    jubu.innerHTML = jubuData;
                    paixu[i] = jubu;
                    printable.insertBefore(jubu,printable.childNodes[0]);
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
            array['flag'] =  "C";
            getCharg(array).then(response => {
                var respo=response["soap-env:Envelope"]["soap-env:Body"]["n0:ZPP_021Response"];
                console.log("C response:"+JSON.stringify(response))
                console.log("C response.data.chargList:"+respo["O_CHARG"])
                this.CHARG = respo["O_CHARG"];
                this.orderList[index].expectedArriveTime1=respo["O_DATE"]
                this.orderList[this.index].expectedArriveTime1= respo["O_DATE"]
                this.orderList[index].CHARG = this.CHARG;
                this.orderList[index].PRINTNO = this.orderList[index].deliveredQuantity
                // var data="data="+encodeURI(JSON.stringify(this.orderList[index]));
                this.order_List[0].CHARG=this.orderList[index].CHARG;
                this.order_List[0].sku=this.padSku(this.orderList[index].sku);
              this.order_List[0].labelNumber = this.padSpace(this.orderList[index].labelNumber,16);
              this.order_List[0].labelWeight = this.padSpace(this.orderList[index].labelWeight,16);
                console.log("order_List"+JSON.stringify(this.order_List[0]))
                // var printData=this.order_List[0].sku+" "+this.order_List[0].CHARG+" "+this.order_List[0].labelWeight+" "+this.order_List[0].supplieId
                var printData='*'+this.order_List[0].sku+this.order_List[0].CHARG+this.order_List[0].labelNumber+this.order_List[0].labelWeight + this.padSpace(' ',17)+ '000'

                var data="data="+encodeURI(JSON.stringify(this.order_List[0]));
                console.log("data:"+data)
                savePrintData(data).then(res => {
                  console.log(printData)
                  // if(this.orderList[0].sku != res.data.match(/\*(\S*) /)[1]){
                  //   this.$alert("物料号不一致请重新选择")
                  //   return;
                  // }
                  this.open2 = true;
                  setTimeout(() => {
                    console.log(this.$refs.pform2);
                    var printable = document.getElementById("printall2");
                    printable.style = "display:block;margin-top:3mm;margin-left: 3mm;color:#000000";
                    printable.style.zoom = 0.99;
                    this.orderList[index].number3 = Number(this.orderList[index].deliveredQuantity)+1;
                    //先清空
                    for(var i = printable.childNodes.length - 1; i >= 0; i--) {
                      printable.removeChild(printable.childNodes[i]);
                    }
                    console.log("printable",printable)
                    var paixu = [];

                  for(var i=0;i<this.orderList[index].deliveredQuantity;i++){
                    // printable[i] = document.getElementById('printMe2');
                    var jubuData = document.getElementById("printMe2");
                    console.log("",this.orderList[index].number3)

                    this.getQRCode3(printData+" "+this.padZero(this.orderList[index].number3.toString(),4)+" "+this.orderList[index].supplieId)
                    document.getElementsByClassName("qrcode-long")[0].childNodes[0].src = this.src3;

                    this.orderList[index].number3 += 1;
                    // console.log("jubuData"+i,jubuData.innerHTML);
                    var jubu = document.createElement("section");
                    jubu.style = "margin-top:3mm;margin-left: 3mm;color:#000000";
                    jubu.innerHTML = jubuData.innerHTML;
                    paixu[i] = jubu;
                    // printable.insertBefore(jubu,printable.childNodes[0]);
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
      }else{
        alert("提交失败请重试"+response.RETURN_DESC) 
      }
      }).catch(error=>{
        console.log(error)      
      })
    },
   
    /** 查询送货单列表 */
    getList() {
      this.tableEmptyText = '暂无数据';
      this.loading = true;
      
        //采购 部门=角色
        // getInfo().then(responsee => {
        //   for(var i = response.total - 1; i >= 0; i--){
        //     console.log(JSON.stringify(response.rows[i]))
        //     if(response.rows[i].projectCategory!==responsee.user.dept.deptName&&responsee.roles!='user'&&responsee.roles!='admin'){
        //       this.orderList.splice(i, 1);
        //     }else{ //删除
        //       this.deptControl=true;                     
        //     }
        //   }
        // });
     getInfo().then(response => {
      if(response.roles=='user'){   //供应商
        // var listt={}
        // listt['supplieId'] = response.user.userName;
        // listOrder(listt).then(response => {
        this.queryParams.supplieId = response.user.userName;
        this.queryParams.remainDeliver=0;
        listOrder(this.queryParams).then(res => {
          if(res.total==0){
            this.loading = false;
            this.$modal.msgSuccess("暂无数据");
            this.orderList=[{"addWho":"","stockLocat":"","manager":"","expectedArriveTime1":"","CHARG":"","expectedQty":"","sku":"","orderQuantity":"","asnNo":"","poNo":"","factory":"","skuDescr":"","labelWeight":"","labelNumber":"","material":"","orderDate":"","deliveryDate":"","DATE2":"","supplieId":"","poNo":"","poLineNo":"","number1":1,"number2":2,"number3":1,"deliveredQuantity":"","factory":"","specification":"","projectCategory":"","machine":"","cancelBill":"","remainDeliver":0}],
            this.total = res.total; 
          }else{ 
          this.orderList = res.rows;

          for(var i=0; i <this.orderList.length;i++){
            this.orderList[i].number1 = 1;
            this.orderList[i].number2 = 2;
            this.orderList[i].number3 = 1;
            if(this.orderList[i].cancelBill!=null){
              // this.orderList[i].cancelBill="-"+this.orderList[i].cancelBill
            }
          }
          this.total = res.total;
          this.loading = false;
        }
        });

        
      }else if(response.roles=='admin'){
        listOrder(this.queryParams).then(res => {
          if(res.total==0){
            this.$modal.msgSuccess("暂无数据");
            this.loading = false;
            this.orderList=[{"addWho":"","stockLocat":"","manager":"","expectedArriveTime1":"","CHARG":"","expectedQty":"","sku":"","orderQuantity":"","asnNo":"","poNo":"","factory":"","skuDescr":"","labelWeight":"","labelNumber":"","material":"","orderDate":"","deliveryDate":"","DATE2":"","supplieId":"","poNo":"","poLineNo":"","number1":1,"number2":2,"number3":1,"deliveredQuantity":"","factory":"","specification":"","projectCategory":"","machine":"","cancelBill":"","remainDeliver":0}],
            this.total = res.total; 
          }else{ 
          this.orderList = res.rows;
      
          for(var i=0; i <this.orderList.length;i++){
            this.orderList[i].number1 = 1;
            this.orderList[i].number2 = 2;
            this.orderList[i].number3 = 1;
            if(this.orderList[i].cancelBill!=null){
              // this.orderList[i].cancelBill="-"+this.orderList[i].cancelBill
            }
          }
          this.total = res.total;
          this.loading = false;
        }
        });
      }else{
        // var list={}
        // list['projectCategory'] = response.user.dept.deptName;
        // listOrder(list).then(response => {

        // this.queryParams.projectCategory = response.user.dept.deptName;
        this.queryParams.projectCategory = response.user.userName;
        listOrder(this.queryParams).then(response => {
          // if(response.total==0){
          //   this.$modal.msgSuccess("暂无数据");
          //   this.loading = false;
          //   this.total = response.total; 
          //   this.orderList=[{"expectedArriveTime1":"","CHARG":"","expectedQty":"","sku":"","orderQuantity":"","asnNo":"","poNo":"","factory":"","skuDescr":"","labelWeight":"","labelNumber":"","material":"","orderDate":"","deliveryDate":"","DATE2":"","supplieId":"","poNo":"","poLineNo":"","number1":1,"number2":2,"number3":1,"deliveredQuantity":"","factory":"","specification":"","reviewStatus":"","projectCategory":"",}],
            
          // }else{     
            this.orderList = response.rows;
            for(var i=0; i <this.orderList.length;i++){
              this.orderList[i].number1 = 1;
              this.orderList[i].number2 = 2;
              this.orderList[i].number3 = 1;
            }
          this.total = response.total;
          this.loading = false;
        // }
        });
      }  
     });
    },
    // 获取当前时间
    getCurrentDate() {
      let now = new Date();
      let year = now.getFullYear();
      let month = now.getMonth() + 1;
      let day = now.getDate();
      return year + "-" + month + "-" + day;
    },
    // 取消按钮
    cancel() {
      this.open = false;
      this.reset();
    },
    // 表单重置
    reset() {
      this.form = {
        id:null,
        deliverId: null,
        supplieId: null,
        asnNo: null,
        poNo: null,
        factory: null,
        lineNumber: null,
        projectCategory: null,
        orderDate: null,
        deliveryDate: null,
        sku: null,
        skuDescr: null,
        orderQuantity: null,
        lotatt15: null,
        deliveredQuantity: null,
        expectedQty: null,
        totalNetWeight: null,
        packUom: null,
        udf03: null,
        overRcvPercentage: null,
        udf04: null,
        qcStatus: null,
        lotatt09: null,
        lotatt14: null,
        labelNumber: null,
        labelWeight: null,
        material: null,
        expectedArriveTime1: null,
        placeOfDelivery: null,
        addWho: null,
        addTime: null,
        updateBy: null,
        updateTime: null,
        poLineNo: null,
        specification:null,
        machine:null,
        cancelBill:null,
        remainDeliver:0
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
      this.resetForm("form");
      this.handleQuery();
    },
    // 多选框选中数据
    handleSelectionChange(selection) {
      console.log(JSON.stringify(selection))

      this.ids = selection.map(item => item.id)
      this.single = selection.length!==1
      this.multiple = !selection.length
      
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加送货单";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const id = row.id || this.ids
      getOrder(id).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改送货单";
      });
    },
    // //提交审核按钮
    // putStatus() {
    //   // this.orderList[index].reviewStatus = '在审核'
    //   updateStatusPut(this.ids).then(response => {
    //     this.$modal.msgSuccess("已提交");
    //     this.getList();
    //   }).catch(error=>{
    //     console.log(error)      
    //   });
    // },
    // //审核成功按钮
    // changeStatus(){
    //   // this.orderList[this.index].reviewStatus = '已审核'
    //   updateStatus(this.ids).then(response => {
    //     console.log(response)
    //     this.$modal.msgSuccess("已审核");
    //     this.getList();
    //   }).catch(error=>{
    //     console.log(error)      
    //   })
    // },
    
    // submit() {
    //   this.$refs["formreset"].validate(valid => {
    //     if (valid) {
    //       updateUserPwd(this.user.oldPwd,this.user.newPwd).then(response => {
    //         console.log(JSON.stringify(response))
    //         this.$modal.msgSuccess("修改成功,请重新登陆");
    //         removeToken()
            
    //       }).catch((response) => {
    //         this.$alert(response);
    //       });
    //     }
    //   });
    // },
    close() {
      this.openPwd=false;
    },
    /** 删除按钮操作 */
    handleDelete(row) {
      const ids = row.id || this.ids;
      this.$modal.confirm('是否确认删除送货单编号为"' + ids + '"的数据项？').then(function() {
        return delOrder(ids);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('deliver/order/export', {
        ...this.queryParams
      }, `order_${new Date().getTime()}.xlsx`)
    },

    /** 导入按钮操作 */
    handleImport() {
      this.upload.title = "个人物品导入";
      this.upload.open = true;
    },
    /** 下载模板操作 */
    importTemplate() {
      this.download('dorm/article/importTemplate', {
      }, `个人物品信息_模板_${new Date().getTime()}.xlsx`)
    },
    // 文件上传中处理
    handleFileUploadProgress(event, file, fileList) {
      this.upload.isUploading = true;
    },
    // 文件上传成功处理
    handleFileSuccess(response, file, fileList) {
      this.upload.open = false;
      this.upload.isUploading = false;
      this.$refs.upload.clearFiles();
      this.$alert("<div style='overflow: auto;overflow-x: hidden;max-height: 70vh;padding: 10px 20px 0;'>" + response.msg + "</div>", "导入结果", { dangerouslyUseHTMLString: true });
      this.getList();
    },
    // 提交上传文件
    submitFileForm() {
      this.$refs.upload.submit();
    }
  }
};
</script>


<style scoped>
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
    /* padding-bottom: 0.03cm; */
  }
  .rohs{
    width: 60%;
    height: 1.2cm;
    margin: auto 0;
    margin-top: 0mm;
    background-repeat: no-repeat;
    background-position:  5px  10px;
  }
  .qrcode{
    width: 23mm;
    height: 23mm;
    position: absolute !important;
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