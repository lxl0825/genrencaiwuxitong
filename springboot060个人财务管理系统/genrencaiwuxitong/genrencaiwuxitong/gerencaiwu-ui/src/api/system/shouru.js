import request from '@/utils/request'

// 查询收入账单列表
export function listShouru(query) {
  return request({
    url: '/system/shouru/list',
    method: 'get',
    params: query
  })
}

// 查询收入账单详细
export function getShouru(id) {
  return request({
    url: '/system/shouru/' + id,
    method: 'get'
  })
}

// 新增收入账单
export function addShouru(data) {
  return request({
    url: '/system/shouru',
    method: 'post',
    data: data
  })
}

// 修改收入账单
export function updateShouru(data) {
  return request({
    url: '/system/shouru',
    method: 'put',
    data: data
  })
}

// 删除收入账单
export function delShouru(id) {
  return request({
    url: '/system/shouru/' + id,
    method: 'delete'
  })
}
