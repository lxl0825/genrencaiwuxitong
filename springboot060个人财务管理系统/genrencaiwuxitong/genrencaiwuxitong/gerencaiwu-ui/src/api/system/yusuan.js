import request from '@/utils/request'

// 查询预算管理列表
export function listYusuan(query) {
  return request({
    url: '/system/yusuan/list',
    method: 'get',
    params: query
  })
}

// 查询预算管理详细
export function getYusuan(id) {
  return request({
    url: '/system/yusuan/' + id,
    method: 'get'
  })
}

// 新增预算管理
export function addYusuan(data) {
  return request({
    url: '/system/yusuan',
    method: 'post',
    data: data
  })
}

// 修改预算管理
export function updateYusuan(data) {
  return request({
    url: '/system/yusuan',
    method: 'put',
    data: data
  })
}

// 删除预算管理
export function delYusuan(id) {
  return request({
    url: '/system/yusuan/' + id,
    method: 'delete'
  })
}
