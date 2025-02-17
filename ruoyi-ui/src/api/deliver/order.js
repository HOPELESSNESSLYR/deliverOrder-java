import request from '@/utils/request'
import Cookies from 'js-cookie'

// 查询送货单列表
export function listOrder(query) {
  return request({
    url: '/deliver/order/list',
    method: 'get',
    params: query
  })
}

// 查询送货单详细
export function getOrder(id) {
  return request({
    url: '/deliver/order/' + id,
    method: 'get',
  })
}
// 新增送货单
export function addOrder(data) {
  return request({
    url: '/deliver/order/add',
    method: 'post',
    data: data
  })
}
export function adddOrder(data) {
  return request({
    url: '/deliver/order/addd',
    method: 'post',
    data: data
  })
}
// 修改送货单
export function updateOrder(data) {
  return request({
    url: '/deliver/order',
    method: 'put',
    data: data
  })
}
// 删除送货单
export function delOrder(id) {
  return request({
    url: '/deliver/order/' + id,
    method: 'delete'
  })
}

//更新/批量更新 2种审核状态
export function updateStatusPut(ids) {
  return request({
    url: '/deliver/order/put/' + ids,
    method: 'put',
  })
}
export function updateStatus(ids) {
  return request({
    url: '/deliver/order/status/' + ids,
    method: 'put',
  })
}

//采购列表

// export function getPurchaseDataOne(username,materialNo,purchaseNo,productDay,createDay,page) {
//   return request({
//     url: '/deliver/order/getPurchaseOne/'+page,
//     method: 'post',
//     headers: {
//       'Content-Type': 'application/json',
//       "Access-Control-Allow-Origin": "*"
//      },
//      data: "username"+username+"   materialNo="+materialNo+"   purchaseNo="+purchaseNo+
//           "   productDay="+productDay+"   createDay="+createDay+"&page="+page
//     })
// }
export function getPurchaseDataOne(data) {
  return request({
    url: '/deliver/order/getPurchaseOne',
    method: 'post',
    headers: {
      'Content-Type': 'application/json',
      "Access-Control-Allow-Origin": "*"
     },
    data: data
  })
}
export function getPurchase(data) {
  return request({
    url: '/deliver/order/purchaseSearch',
    method: 'post',
    headers: {
      'Content-Type': 'application/json',
      "Access-Control-Allow-Origin": "*"
     },
    data: data
  })
}
export function getSalecate(data) {
  return request({
    url: '/deliver/order/salecate',
    method: 'post',
    headers: {
      'Content-Type': 'application/json',
      "Access-Control-Allow-Origin": "*"
     },
    data: data
  })
}
export function getSalecateSearch(data) {
  return request({
    url: '/deliver/order/salecateSearch',
    method: 'post',
    headers: {
      'Content-Type': 'application/json',
      "Access-Control-Allow-Origin": "*"
     },
    data: data
  })
}
// 冲销
export function getPushSale(data) {
  return request({
    url: '/deliver/order/pushsale',
    method: 'post',
    headers: {
      'Content-Type': 'application/json',
      "Access-Control-Allow-Origin": "*"
     },
    data: data
  })
}

export function selectRemain(data) {
  return request({
    url: '/deliver/order/remain',
    method: 'post',
    headers: {
      'Content-Type': 'application/json',
      "Access-Control-Allow-Origin": "*"
     },
    data: data
  })
}


//工单列表
export function getOutSourcingData(page) {
  return request({
    url: '/deliver/order/getOutSourcing',
    method: 'post',
    headers: {
      'Content-Type': 'application/json',
      "Access-Control-Allow-Origin": "*"
     },
    data: page
  })
}

// 获取批次方法
export function getCharg(data) {
  return request({
    url: '/deliver/order/getcharg',
    method: 'post',
    headers: {
      'Content-Type': 'application/json',
      "Access-Control-Allow-Origin": "*"
     },
    data: data
  })
}
export function savePrintData(data) {
  return request({
    url: '/deliver/order/savePrintData',
    method: 'post',
    data: data
  })
}

//wms
export function getOrderWms(data) {
  return request({
    url: './../wms',
    method: 'get',
    data: data,
  })
}
export function addOrderWms(data) {
  return request({
    url: './../wms',
    method: 'post',
    data: data,
    headers: {
      'Content-Type': 'application/json',
      "Access-Control-Allow-Origin": "*"
    }
  })
}

//generate生成送货单号
export function getOrderID() {
  return request({
    url: '/deliver/order/generate',
    method: 'get'
  })
}

