import request from '@/utils/request'

// 查询送货计划信息列表
export function listPlan(query) {
  return request({
    url: '/plan/plan/list',
    method: 'get',
    params: query
  })
}

// 查询送货计划信息详细
export function getPlan(id) {
  return request({
    url: '/plan/plan/' + id,
    method: 'get'
  })
}

// 新增送货计划信息
export function addPlan(data) {
  return request({
    url: '/plan/plan',
    method: 'post',
    data: data
  })
}

// 修改送货计划信息
export function updatePlan(data) {
  return request({
    url: '/plan/plan',
    method: 'put',
    data: data
  })
}

// 删除送货计划信息
export function delPlan(id) {
  return request({
    url: '/plan/plan/' + id,
    method: 'delete'
  })
}
