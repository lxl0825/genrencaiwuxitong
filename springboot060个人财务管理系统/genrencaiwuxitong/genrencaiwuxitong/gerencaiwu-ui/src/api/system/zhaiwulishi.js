import request from '@/utils/request'

// 查询债务历史列表
export function listZhaiwulishi(query) {
  return request({
    url: '/system/zhaiwulishi/list',
    method: 'get',
    params: query
  })
}

// 查询债务历史详细
export function getZhaiwulishi(id) {
  return request({
    url: '/system/zhaiwulishi/' + id,
    method: 'get'
  })
}

// 新增债务历史
export function addZhaiwulishi(data) {
  return request({
    url: '/system/zhaiwulishi',
    method: 'post',
    data: data
  })
}

// 修改债务历史
export function updateZhaiwulishi(data) {
  return request({
    url: '/system/zhaiwulishi',
    method: 'put',
    data: data
  })
}

// 删除债务历史
export function delZhaiwulishi(id) {
  return request({
    url: '/system/zhaiwulishi/' + id,
    method: 'delete'
  })
}
