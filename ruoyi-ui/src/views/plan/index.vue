<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="送货订单编号" prop="asnNo">
        <el-input
          v-model="queryParams.asnNo"
          placeholder="请输入送货订单编号"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="采购订单编号" prop="poNo">
        <el-input
          v-model="queryParams.poNo"
          placeholder="请输入采购订单编号"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="物料编码" prop="sku">
        <el-input
          v-model="queryParams.sku"
          placeholder="请输入物料编码"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="送货日期" prop="deliveryDate">
        <el-date-picker clearable
          v-model="queryParams.deliveryDate"
          type="date"
          value-format="yyyy-MM-dd"
          placeholder="请选择送货日期">
        </el-date-picker>
      </el-form-item>
      <el-form-item label="采购组" prop="category">
        <el-input
          v-model="queryParams.category"
          placeholder="请输入采购组"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="供应商" prop="supplieId">
        <el-input
          v-model="queryParams.supplieId"
          placeholder="请输入供应商"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <!-- <el-form-item label="制单人" prop="addWho">
        <el-input
          v-model="queryParams.addWho"
          placeholder="请输入制单人"
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
      
      <el-form-item label="送货单行号" prop="lineNumber">
        <el-input
          v-model="queryParams.lineNumber"
          placeholder="请输入送货单行号"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="采购行号" prop="poLineNo">
        <el-input
          v-model="queryParams.poLineNo"
          placeholder="请输入采购行号"
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
      <el-form-item label="业务范围" prop="businessScope">
        <el-input
          v-model="queryParams.businessScope"
          placeholder="请输入业务范围"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="送货数量" prop="deliverQuatity">
        <el-input
          v-model="queryParams.deliverQuatity"
          placeholder="请输入送货数量"
          clearable
          @keyup.enter.native="handleQuery"
        />
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
          v-hasPermi="['plan:plan:add']"
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
          v-hasPermi="['plan:plan:edit']"
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
          v-hasPermi="['plan:plan:remove']"
        >删除</el-button>
      </el-col> -->
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['plan:plan:export']"
        >导出</el-button>
      </el-col>
      <span style="color: rgb(107, 207, 6);margin-left: 1150px;font-size: 22px;">本页送货数据合计：{{ totalDQ }}</span>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="planList" @selection-change="handleSelectionChange" :default-sort = "{prop: 'in', order: 'descending'}">
      <el-table-column type="selection" width="55" align="center" />
      <!-- <el-table-column label="主键id" align="center" prop="id" /> -->
      <el-table-column label="送货订单编号" align="center" prop="asnNo" width="135"/>
      <el-table-column label="送货单行号" align="center" prop="lineNumber" />
      <el-table-column label="采购订单编号" align="center" prop="poNo"  />
      <el-table-column label="采购行号" align="center" prop="poLineNo" />
      <el-table-column label="物料编码" align="center" prop="sku" />
      <!-- <el-table-column label="物料描述" align="center" prop="skuDescr" width="360"/> -->
      <el-table-column label="物料描述" align="center" prop="skuDescr" width="400"/>
      <!-- <el-table-column label="业务范围" align="center" prop="businessScope" /> -->
      <el-table-column label="采购组" align="center" prop="projectCategory"/>
      <el-table-column label="生产日期" align="center" prop="orderDate">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.orderDate, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="送货日期" align="center" prop="deliveryDate">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.deliveryDate, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="供应商" align="center" prop="supplieId" />
      <el-table-column label="制单人" align="center" prop="addWho" />
      <el-table-column label="送货数量" align="center" prop="expectedQty" />
      <!-- <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['plan:plan:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['plan:plan:remove']"
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

    <!-- 添加或修改送货计划信息对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="送货订单编号" prop="asnNo">
          <el-input v-model="form.asnNo" placeholder="请输入送货订单编号" />
        </el-form-item>
        <el-form-item label="送货单行号" prop="lineNumber">
          <el-input v-model="form.lineNumber" placeholder="请输入送货单行号" />
        </el-form-item>
        <el-form-item label="采购订单编号" prop="poNo">
          <el-input v-model="form.poNo" placeholder="请输入采购订单编号" />
        </el-form-item>
        <el-form-item label="采购行号" prop="poLineNo">
          <el-input v-model="form.poLineNo" placeholder="请输入采购行号" />
        </el-form-item>
        <el-form-item label="物料编码" prop="sku">
          <el-input v-model="form.sku" placeholder="请输入物料编码" />
        </el-form-item>
        <el-form-item label="物料描述" prop="skuDescr">
          <el-input v-model="form.skuDescr" placeholder="请输入物料描述" />
        </el-form-item>
        <el-form-item label="业务范围" prop="businessScope">
          <el-input v-model="form.businessScope" placeholder="请输入业务范围" />
        </el-form-item>
        <el-form-item label="采购组" prop="category">
          <el-input v-model="form.category" placeholder="请输入采购组" />
        </el-form-item>
        <el-form-item label="生产日期" prop="orderDate">
          <el-date-picker clearable
            v-model="form.orderDate"
            type="date"
            value-format="yyyy-MM-dd"
            placeholder="请选择生产日期">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="送货日期" prop="deliveryDate">
          <el-date-picker clearable
            v-model="form.deliveryDate"
            type="date"
            value-format="yyyy-MM-dd"
            placeholder="请选择送货日期">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="送货数量" prop="expectedQty">
          <el-input v-model="form.expectedQty" placeholder="请输入送货数量" />
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import { listPlan, getPlan, delPlan, addPlan, updatePlan } from "@/api/plan/plan";
import { listOrder, getOrder, delOrder,updateStatus,updateStatusPut,addOrderWms,getCharg,updateOrder,} from "@/api/deliver/order";
import { savePrintData,getInfo} from '@/api/login'
export default {
  name: "Plan",
  data() {
    return {
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
      // 送货计划信息表格数据
      planList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        asnNo: null,
        lineNumber: null,
        poNo: null,
        poLineNo: null,
        sku: null,
        skuDescr: null,
        businessScope: null,// lotatt15
        category: null,//projectCategory
        orderDate: null,
        deliverQuatity: null, //deliveredQuantity
        // asnNo: null,
        // poNo: null,
        // sku: null,
        deliveryDate: null,
        // projectCategory: null,
        supplieId: null,
        // // addWho: null,
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
      },
      totalDQ:0,
    };
  },
  created() {
    this.getList();
  },
  methods: {
    /** 查询送货计划信息列表 */
    getList() {
      this.loading = true;
      this.totalDQ = 0;
      listPlan(this.queryParams).then(response => {
        this.planList = response.rows;
        this.total = response.total;
        this.loading = false;

        // 合计送货数量
        if(response.rows.length>10){
          for(var i=0; i< 10; i++){
            this.totalDQ =response.rows[i].expectedQty + this.totalDQ
          }
          this.totalDQ = this.totalDQ.toFixed(2)
        }else{
          for(var i=0; i< response.rows.length; i++){
            this.totalDQ = response.rows[i].expectedQty + this.totalDQ
          }
          this.totalDQ = this.totalDQ.toFixed(2)
        }

      });
    },
    // 取消按钮
    cancel() {
      this.open = false;
      this.reset();
    },
    // 表单重置
    reset() {
      this.form = {
        asnNo: null,
        lineNumber: null,
        poNo: null,
        poLineNo: null,
        sku: null,
        skuDescr: null,
        businessScope: null,// lotatt15
        category: null,//projectCategory
        orderDate: null,
        deliveryDate: null,
        deliverQuatity: null, //deliveredQuantity
        // id: null,
        // asnNo: null,
        // poNo: null,
        // sku: null,
        // deliveryDate: null,
        // projectCategory: null,
        supplieId: null,
        // // addWho: null,
        // projectCategory:null
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
      this.resetForm("queryForm");
      this.handleQuery();
    },
    // 多选框选中数据
    handleSelectionChange(selection) {
      console.log(JSON.stringify( selection))
      this.ids = selection.map(item => item.id)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加送货计划信息";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const id = row.id || this.ids
      getPlan(id).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改送货计划信息";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.id != null) {
            updatePlan(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addPlan(this.form).then(response => {
              this.$modal.msgSuccess("新增成功");
              this.open = false;
              this.getList();
            });
          }
        }
      });
    },
    /** 删除按钮操作 */
    handleDelete(row) {
      const ids = row.id || this.ids;
      this.$modal.confirm('是否确认删除送货计划信息编号为"' + ids + '"的数据项？').then(function() {
        return delPlan(ids);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('plan/plan/export', {
        ...this.queryParams
      }, `plan_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>

<style>
.date-picker{
  width:133px !important;
}
</style>
