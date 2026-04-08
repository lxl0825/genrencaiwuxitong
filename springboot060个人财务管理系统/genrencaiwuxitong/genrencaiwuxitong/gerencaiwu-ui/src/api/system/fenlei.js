import request from '@/utils/request'

// 查询账单分类列表
export function listFenlei(query) {
  return request({
    url: '/system/fenlei/list',
    method: 'get',
    params: query
  })
}

// 查询账单分类详细
export function getFenlei(id) {
  return request({
    url: '/system/fenlei/' + id,
    method: 'get'
  })
}

// 新增账单分类
export function addFenlei(data) {
  return request({
    url: '/system/fenlei',
    method: 'post',
    data: data
  })
}

// 修改账单分类
export function updateFenlei(data) {
  return request({
    url: '/system/fenlei',
    method: 'put',
    data: data
  })
}

// 删除账单分类
export function delFenlei(id) {
  return request({
    url: '/system/fenlei/' + id,
    method: 'delete'
  })
}
