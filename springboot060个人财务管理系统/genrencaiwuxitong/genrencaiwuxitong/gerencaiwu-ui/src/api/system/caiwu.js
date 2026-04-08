import request from '@/utils/request'

export function getAmount(data) {
  return request({
    url: '/system/caiwu/total',
    method: 'post',
    data: data
  })
}

export function gettongji(data) {
  return request({
    url: '/system/caiwu/gettongji',
    method: 'post',
    data: data
  })
}

