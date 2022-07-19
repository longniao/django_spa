import axios from "axios";

const http = axios.create({
    baseURL: 'http://localhost:8000/'
  })

// request拦截器
http.interceptors.request.use(config => {
  // Do something before request is sent
  if (localStorage.token) {
    config.headers['Content-Type'] = 'application/json';
    config.headers['Authorization'] = `Bearer ${localStorage.token}`;
  }
  return config
}, error => {
  // console.log(error) // for debug
  Promise.reject(error)
})

// respone拦截器
http.interceptors.response.use(
  response => {
    return response;
  },
  error => {
    console.log('data:', error.response.data);
  })

export default http;
