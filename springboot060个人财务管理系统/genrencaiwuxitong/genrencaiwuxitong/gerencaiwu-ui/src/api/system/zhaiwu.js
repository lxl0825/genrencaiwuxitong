import request from '@/utils/request'

// 查询债务列列表
export function listZhaiwu(query) {
  return request({
    url: '/system/zhaiwu/list',
    method: 'get',
    params: query
  })
}

// 查询债务列详细
export function getZhaiwu(id) {
  return request({
    url: '/system/zhaiwu/' + id,
    method: 'get'
  })
}

// 新增债务列
export function addZhaiwu(data) {
  return request({
    url: '/system/zhaiwu',
    method: 'post',
    data: data
  })
}

export function changeZhaiwu(data) {
  return request({
    url: '/system/zhaiwu/changeZhaiwu',
    method: 'post',
    data: data
  })
}

// 修改债务列
export function updateZhaiwu(data) {
  return request({
    url: '/system/zhaiwu',
    method: 'put',
    data: data
  })
}

// 删除债务列
export function delZhaiwu(id) {
  return request({
    url: '/system/zhaiwu/' + id,
    method: 'delete'
  })
}
