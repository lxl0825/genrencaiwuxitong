import request from '@/utils/request'

// 查询支出账单列表
export function listZhichu(query) {
  return request({
    url: '/system/zhichu/list',
    method: 'get',
    params: query
  })
}

// 查询支出账单详细
export function getZhichu(id) {
  return request({
    url: '/system/zhichu/' + id,
    method: 'get'
  })
}

// 新增支出账单
export function addZhichu(data) {
  return request({
    url: '/system/zhichu',
    method: 'post',
    data: data
  })
}

export function checkBudget(data) {
  return request({
    url: '/system/zhichu/checkBudget',
    method: 'post',
    data: data
  })
}

// 修改支出账单
export function updateZhichu(data) {
  return request({
    url: '/system/zhichu',
    method: 'put',
    data: data
  })
}

// 删除支出账单
export function delZhichu(id) {
  return request({
    url: '/system/zhichu/' + id,
    method: 'delete'
  })
}
