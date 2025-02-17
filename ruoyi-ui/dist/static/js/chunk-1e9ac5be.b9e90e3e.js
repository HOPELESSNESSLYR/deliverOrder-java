(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-1e9ac5be"],{"078b":function(e,t,r){},"25ec":function(e,t,r){"use strict";r("078b")},8062:function(e,t,r){"use strict";r.r(t);var l=function(){var e=this,t=e.$createElement,r=e._self._c||t;return r("div",{staticClass:"app-container"},[r("el-form",{directives:[{name:"show",rawName:"v-show",value:e.showSearch,expression:"showSearch"}],ref:"queryForm",attrs:{model:e.queryParams,size:"small",inline:!0,"label-width":"68px"}},[r("el-form-item",{attrs:{label:"送货订单编号",prop:"asnNo"}},[r("el-input",{attrs:{placeholder:"请输入送货订单编号",clearable:""},nativeOn:{keyup:function(t){return!t.type.indexOf("key")&&e._k(t.keyCode,"enter",13,t.key,"Enter")?null:e.handleQuery(t)}},model:{value:e.queryParams.asnNo,callback:function(t){e.$set(e.queryParams,"asnNo",t)},expression:"queryParams.asnNo"}})],1),r("el-form-item",{attrs:{label:"采购订单编号",prop:"poNo"}},[r("el-input",{attrs:{placeholder:"请输入采购订单编号",clearable:""},nativeOn:{keyup:function(t){return!t.type.indexOf("key")&&e._k(t.keyCode,"enter",13,t.key,"Enter")?null:e.handleQuery(t)}},model:{value:e.queryParams.poNo,callback:function(t){e.$set(e.queryParams,"poNo",t)},expression:"queryParams.poNo"}})],1),r("el-form-item",{attrs:{label:"物料编码",prop:"sku"}},[r("el-input",{attrs:{placeholder:"请输入物料编码",clearable:""},nativeOn:{keyup:function(t){return!t.type.indexOf("key")&&e._k(t.keyCode,"enter",13,t.key,"Enter")?null:e.handleQuery(t)}},model:{value:e.queryParams.sku,callback:function(t){e.$set(e.queryParams,"sku",t)},expression:"queryParams.sku"}})],1),r("el-form-item",{attrs:{label:"送货日期",prop:"deliveryDate"}},[r("el-date-picker",{attrs:{clearable:"",type:"date","value-format":"yyyy-MM-dd",placeholder:"请选择送货日期"},model:{value:e.queryParams.deliveryDate,callback:function(t){e.$set(e.queryParams,"deliveryDate",t)},expression:"queryParams.deliveryDate"}})],1),r("el-form-item",{attrs:{label:"采购组",prop:"category"}},[r("el-input",{attrs:{placeholder:"请输入采购组",clearable:""},nativeOn:{keyup:function(t){return!t.type.indexOf("key")&&e._k(t.keyCode,"enter",13,t.key,"Enter")?null:e.handleQuery(t)}},model:{value:e.queryParams.category,callback:function(t){e.$set(e.queryParams,"category",t)},expression:"queryParams.category"}})],1),r("el-form-item",{attrs:{label:"供应商",prop:"supplieId"}},[r("el-input",{attrs:{placeholder:"请输入供应商",clearable:""},nativeOn:{keyup:function(t){return!t.type.indexOf("key")&&e._k(t.keyCode,"enter",13,t.key,"Enter")?null:e.handleQuery(t)}},model:{value:e.queryParams.supplieId,callback:function(t){e.$set(e.queryParams,"supplieId",t)},expression:"queryParams.supplieId"}})],1),r("el-form-item",[r("el-button",{attrs:{type:"primary",icon:"el-icon-search",size:"mini"},on:{click:e.handleQuery}},[e._v("搜索")]),r("el-button",{attrs:{icon:"el-icon-refresh",size:"mini"},on:{click:e.resetQuery}},[e._v("重置")])],1)],1),r("el-row",{staticClass:"mb8",attrs:{gutter:10}},[r("el-col",{attrs:{span:1.5}},[r("el-button",{directives:[{name:"hasPermi",rawName:"v-hasPermi",value:["plan:plan:export"],expression:"['plan:plan:export']"}],attrs:{type:"warning",plain:"",icon:"el-icon-download",size:"mini"},on:{click:e.handleExport}},[e._v("导出")])],1),r("span",{staticStyle:{color:"rgb(107, 207, 6)","margin-left":"1150px","font-size":"22px"}},[e._v("本页送货数据合计："+e._s(e.totalDQ))]),r("right-toolbar",{attrs:{showSearch:e.showSearch},on:{"update:showSearch":function(t){e.showSearch=t},"update:show-search":function(t){e.showSearch=t},queryTable:e.getList}})],1),r("el-table",{directives:[{name:"loading",rawName:"v-loading",value:e.loading,expression:"loading"}],attrs:{data:e.planList,"default-sort":{prop:"in",order:"descending"}},on:{"selection-change":e.handleSelectionChange}},[r("el-table-column",{attrs:{type:"selection",width:"55",align:"center"}}),r("el-table-column",{attrs:{label:"送货订单编号",align:"center",prop:"asnNo",width:"135"}}),r("el-table-column",{attrs:{label:"送货单行号",align:"center",prop:"lineNumber"}}),r("el-table-column",{attrs:{label:"采购订单编号",align:"center",prop:"poNo"}}),r("el-table-column",{attrs:{label:"采购行号",align:"center",prop:"poLineNo"}}),r("el-table-column",{attrs:{label:"物料编码",align:"center",prop:"sku"}}),r("el-table-column",{attrs:{label:"物料描述",align:"center",prop:"skuDescr",width:"400"}}),r("el-table-column",{attrs:{label:"采购组",align:"center",prop:"projectCategory"}}),r("el-table-column",{attrs:{label:"生产日期",align:"center",prop:"orderDate"},scopedSlots:e._u([{key:"default",fn:function(t){return[r("span",[e._v(e._s(e.parseTime(t.row.orderDate,"{y}-{m}-{d}")))])]}}])}),r("el-table-column",{attrs:{label:"送货日期",align:"center",prop:"deliveryDate"},scopedSlots:e._u([{key:"default",fn:function(t){return[r("span",[e._v(e._s(e.parseTime(t.row.deliveryDate,"{y}-{m}-{d}")))])]}}])}),r("el-table-column",{attrs:{label:"供应商",align:"center",prop:"supplieId"}}),r("el-table-column",{attrs:{label:"制单人",align:"center",prop:"addWho"}}),r("el-table-column",{attrs:{label:"送货数量",align:"center",prop:"expectedQty"}})],1),r("pagination",{directives:[{name:"show",rawName:"v-show",value:e.total>0,expression:"total>0"}],attrs:{total:e.total,page:e.queryParams.pageNum,limit:e.queryParams.pageSize},on:{"update:page":function(t){return e.$set(e.queryParams,"pageNum",t)},"update:limit":function(t){return e.$set(e.queryParams,"pageSize",t)},pagination:e.getList}}),r("el-dialog",{attrs:{title:e.title,visible:e.open,width:"500px","append-to-body":""},on:{"update:visible":function(t){e.open=t}}},[r("el-form",{ref:"form",attrs:{model:e.form,rules:e.rules,"label-width":"80px"}},[r("el-form-item",{attrs:{label:"送货订单编号",prop:"asnNo"}},[r("el-input",{attrs:{placeholder:"请输入送货订单编号"},model:{value:e.form.asnNo,callback:function(t){e.$set(e.form,"asnNo",t)},expression:"form.asnNo"}})],1),r("el-form-item",{attrs:{label:"送货单行号",prop:"lineNumber"}},[r("el-input",{attrs:{placeholder:"请输入送货单行号"},model:{value:e.form.lineNumber,callback:function(t){e.$set(e.form,"lineNumber",t)},expression:"form.lineNumber"}})],1),r("el-form-item",{attrs:{label:"采购订单编号",prop:"poNo"}},[r("el-input",{attrs:{placeholder:"请输入采购订单编号"},model:{value:e.form.poNo,callback:function(t){e.$set(e.form,"poNo",t)},expression:"form.poNo"}})],1),r("el-form-item",{attrs:{label:"采购行号",prop:"poLineNo"}},[r("el-input",{attrs:{placeholder:"请输入采购行号"},model:{value:e.form.poLineNo,callback:function(t){e.$set(e.form,"poLineNo",t)},expression:"form.poLineNo"}})],1),r("el-form-item",{attrs:{label:"物料编码",prop:"sku"}},[r("el-input",{attrs:{placeholder:"请输入物料编码"},model:{value:e.form.sku,callback:function(t){e.$set(e.form,"sku",t)},expression:"form.sku"}})],1),r("el-form-item",{attrs:{label:"物料描述",prop:"skuDescr"}},[r("el-input",{attrs:{placeholder:"请输入物料描述"},model:{value:e.form.skuDescr,callback:function(t){e.$set(e.form,"skuDescr",t)},expression:"form.skuDescr"}})],1),r("el-form-item",{attrs:{label:"业务范围",prop:"businessScope"}},[r("el-input",{attrs:{placeholder:"请输入业务范围"},model:{value:e.form.businessScope,callback:function(t){e.$set(e.form,"businessScope",t)},expression:"form.businessScope"}})],1),r("el-form-item",{attrs:{label:"采购组",prop:"category"}},[r("el-input",{attrs:{placeholder:"请输入采购组"},model:{value:e.form.category,callback:function(t){e.$set(e.form,"category",t)},expression:"form.category"}})],1),r("el-form-item",{attrs:{label:"生产日期",prop:"orderDate"}},[r("el-date-picker",{attrs:{clearable:"",type:"date","value-format":"yyyy-MM-dd",placeholder:"请选择生产日期"},model:{value:e.form.orderDate,callback:function(t){e.$set(e.form,"orderDate",t)},expression:"form.orderDate"}})],1),r("el-form-item",{attrs:{label:"送货日期",prop:"deliveryDate"}},[r("el-date-picker",{attrs:{clearable:"",type:"date","value-format":"yyyy-MM-dd",placeholder:"请选择送货日期"},model:{value:e.form.deliveryDate,callback:function(t){e.$set(e.form,"deliveryDate",t)},expression:"form.deliveryDate"}})],1),r("el-form-item",{attrs:{label:"送货数量",prop:"expectedQty"}},[r("el-input",{attrs:{placeholder:"请输入送货数量"},model:{value:e.form.expectedQty,callback:function(t){e.$set(e.form,"expectedQty",t)},expression:"form.expectedQty"}})],1)],1),r("div",{staticClass:"dialog-footer",attrs:{slot:"footer"},slot:"footer"},[r("el-button",{attrs:{type:"primary"},on:{click:e.submitForm}},[e._v("确 定")]),r("el-button",{on:{click:e.cancel}},[e._v("取 消")])],1)],1)],1)},a=[],n=r("5530"),o=(r("d81d"),r("e9c4"),r("b680"),r("b775"));function i(e){return Object(o["a"])({url:"/plan/plan/list",method:"get",params:e})}function s(e){return Object(o["a"])({url:"/plan/plan/"+e,method:"get"})}function u(e){return Object(o["a"])({url:"/plan/plan",method:"post",data:e})}function c(e){return Object(o["a"])({url:"/plan/plan",method:"put",data:e})}function p(e){return Object(o["a"])({url:"/plan/plan/"+e,method:"delete"})}r("b949"),r("7ded");var d={name:"Plan",data:function(){return{loading:!0,ids:[],single:!0,multiple:!0,showSearch:!0,total:0,planList:[],title:"",open:!1,queryParams:{pageNum:1,pageSize:10,asnNo:null,lineNumber:null,poNo:null,poLineNo:null,sku:null,skuDescr:null,businessScope:null,category:null,orderDate:null,deliverQuatity:null,deliveryDate:null,supplieId:null},form:{},rules:{},totalDQ:0}},created:function(){this.getList()},methods:{getList:function(){var e=this;this.loading=!0,this.totalDQ=0,i(this.queryParams).then((function(t){if(e.planList=t.rows,e.total=t.total,e.loading=!1,t.rows.length>10){for(var r=0;r<10;r++)e.totalDQ=t.rows[r].expectedQty+e.totalDQ;e.totalDQ=e.totalDQ.toFixed(2)}else{for(r=0;r<t.rows.length;r++)e.totalDQ=t.rows[r].expectedQty+e.totalDQ;e.totalDQ=e.totalDQ.toFixed(2)}}))},cancel:function(){this.open=!1,this.reset()},reset:function(){this.form={asnNo:null,lineNumber:null,poNo:null,poLineNo:null,sku:null,skuDescr:null,businessScope:null,category:null,orderDate:null,deliveryDate:null,deliverQuatity:null,supplieId:null},this.resetForm("form")},handleQuery:function(){this.queryParams.pageNum=1,this.getList()},resetQuery:function(){this.resetForm("queryForm"),this.handleQuery()},handleSelectionChange:function(e){console.log(JSON.stringify(e)),this.ids=e.map((function(e){return e.id})),this.single=1!==e.length,this.multiple=!e.length},handleAdd:function(){this.reset(),this.open=!0,this.title="添加送货计划信息"},handleUpdate:function(e){var t=this;this.reset();var r=e.id||this.ids;s(r).then((function(e){t.form=e.data,t.open=!0,t.title="修改送货计划信息"}))},submitForm:function(){var e=this;this.$refs["form"].validate((function(t){t&&(null!=e.form.id?c(e.form).then((function(t){e.$modal.msgSuccess("修改成功"),e.open=!1,e.getList()})):u(e.form).then((function(t){e.$modal.msgSuccess("新增成功"),e.open=!1,e.getList()})))}))},handleDelete:function(e){var t=this,r=e.id||this.ids;this.$modal.confirm('是否确认删除送货计划信息编号为"'+r+'"的数据项？').then((function(){return p(r)})).then((function(){t.getList(),t.$modal.msgSuccess("删除成功")})).catch((function(){}))},handleExport:function(){this.download("plan/plan/export",Object(n["a"])({},this.queryParams),"plan_".concat((new Date).getTime(),".xlsx"))}}},m=d,f=(r("25ec"),r("2877")),h=Object(f["a"])(m,l,a,!1,null,null,null);t["default"]=h.exports},b949:function(e,t,r){"use strict";r.d(t,"m",(function(){return a})),r.d(t,"f",(function(){return n})),r.d(t,"a",(function(){return o})),r.d(t,"c",(function(){return i})),r.d(t,"o",(function(){return s})),r.d(t,"d",(function(){return u})),r.d(t,"j",(function(){return c})),r.d(t,"i",(function(){return p})),r.d(t,"k",(function(){return d})),r.d(t,"l",(function(){return m})),r.d(t,"n",(function(){return f})),r.d(t,"h",(function(){return h})),r.d(t,"e",(function(){return y})),r.d(t,"b",(function(){return b})),r.d(t,"g",(function(){return g}));var l=r("b775");r("852e");function a(e){return Object(l["a"])({url:"/deliver/order/list",method:"get",params:e})}function n(e){return Object(l["a"])({url:"/deliver/order/"+e,method:"get"})}function o(e){return Object(l["a"])({url:"/deliver/order/add",method:"post",data:e})}function i(e){return Object(l["a"])({url:"/deliver/order/addd",method:"post",data:e})}function s(e){return Object(l["a"])({url:"/deliver/order",method:"put",data:e})}function u(e){return Object(l["a"])({url:"/deliver/order/"+e,method:"delete"})}function c(e){return Object(l["a"])({url:"/deliver/order/getPurchaseOne",method:"post",headers:{"Content-Type":"application/json","Access-Control-Allow-Origin":"*"},data:e})}function p(e){return Object(l["a"])({url:"/deliver/order/purchaseSearch",method:"post",headers:{"Content-Type":"application/json","Access-Control-Allow-Origin":"*"},data:e})}function d(e){return Object(l["a"])({url:"/deliver/order/salecate",method:"post",headers:{"Content-Type":"application/json","Access-Control-Allow-Origin":"*"},data:e})}function m(e){return Object(l["a"])({url:"/deliver/order/salecateSearch",method:"post",headers:{"Content-Type":"application/json","Access-Control-Allow-Origin":"*"},data:e})}function f(e){return Object(l["a"])({url:"/deliver/order/remain",method:"post",headers:{"Content-Type":"application/json","Access-Control-Allow-Origin":"*"},data:e})}function h(e){return Object(l["a"])({url:"/deliver/order/getOutSourcing",method:"post",headers:{"Content-Type":"application/json","Access-Control-Allow-Origin":"*"},data:e})}function y(e){return Object(l["a"])({url:"/deliver/order/getcharg",method:"post",headers:{"Content-Type":"application/json","Access-Control-Allow-Origin":"*"},data:e})}function b(e){return Object(l["a"])({url:"./../wms",method:"post",data:e,headers:{"Content-Type":"application/json","Access-Control-Allow-Origin":"*"}})}function g(){return Object(l["a"])({url:"/deliver/order/generate",method:"get"})}}}]);