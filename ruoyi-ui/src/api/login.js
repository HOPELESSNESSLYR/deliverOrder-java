import request from '@/utils/request'
import Cookies from 'js-cookie'

// 登录方法
export function login(username, password, code, uuid) {
  const data = {
    username,
    password,
    code,
    uuid
  }
  return request({
    url: '/login',
    headers: {
      isToken: false,
      repeatSubmit: false
    },
    method: 'post',
    data: data
  })
}

// 供应商登录
export function loginSupply(username, password, rememberMe) {
  const resdata = {
    username,
    password,
    rememberMe
  }
  const config = {
    headers:{
      "Access-Control-Allow-Origin": "*",
      "Content-Type" :"application/json"
    }
  }
  return request({
    config: config,
    url: '/login',
    method: 'post',
    data: "username="+resdata.username+"&password="+resdata.password+"&rememberMe="+resdata.rememberMe
  })
}

// 注册方法
export function register(data) {
  return request({
    url: '/register',
    headers: {
      isToken: false
    },
    method: 'post',
    data: data
  })
}

// 获取用户详细信息
export function getInfo() {
  return request({
    url: '/getInfo',
    method: 'get'
  })
}

// 退出方法
export function logout() {
  return request({
    url: '/logout',
    method: 'post'
  })
}

// 获取验证码
export function getCodeImg() {
  return request({
    url: '/captchaImage',
    headers: {
      isToken: false
    },
    method: 'get',
    timeout: 20000
  })
}

// // 获取数据方法
// export function getPOData(MATNR,EBELN,EINDT,AEDAT,page) {
//   return request({
//     url: './../map/getPOData',
//     method: 'post',
//     headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
//     data: "LIFNR=0000"+Cookies.get("username")+"&MATNR="+MATNR+"&EBELN="+EBELN+"&EINDT="+EINDT+"&AEDAT="+AEDAT+"&page="+page
//   })
// }
// // 获取外协入库数据方法
// export function getOutSourcingData(page) {
//   return request({
//     url: './../map/getOutSourcingData',
//     method: 'post',
//     headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
//     data: "LIFNR=0000"+Cookies.get("username")+"&page="+page
//   })
// }

// 获取批次方法
export function getCharg(MATNR,EBELN,FLAG) {
  return request({
    url: './../map/getCharg',
    method: 'post',
    headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
    data: "lifnr=0000"+Cookies.get("username")+"&matnr="+MATNR+"&flag="+FLAG+"&ebeln="+EBELN
  })
}
//保存数据方法
export function savePrintData(data) {
  return request({
    url: './../map/savePrintData',
    method: 'post',
    headers: { 'Content-Type': 'application/x-www-form-urlencoded' }, 
    data: data
  })
}
