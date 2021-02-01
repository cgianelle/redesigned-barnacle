# K6 Load Testing

## Fibonacci REST API - Traditional Calculation
~~~~
k6 run --vus 10000 --duration 120s rest_server.js 

running (2m30.1s), 00000/10000 VUs, 177158 complete and 92 interrupted iterations
default ✓ [======================================] 10000 VUs  2m0s

     ✗ status was 200
      ↳  84% — ✓ 149190 / ✗ 27968

     checks.....................: 84.21% ✓ 149190  ✗ 27968  
     data_received..............: 30 MB  201 kB/s
     data_sent..................: 16 MB  103 kB/s
     http_req_blocked...........: avg=1.78s   min=0s       med=2µs    max=27.39s p(90)=5.95s  p(95)=16.99s
     http_req_connecting........: avg=1.78s   min=0s       med=0s     max=27.39s p(90)=5.95s  p(95)=16.99s
     http_req_duration..........: avg=4.17s   min=0s       med=7.7ms  max=1m0s   p(90)=18.79s p(95)=36.63s
     http_req_receiving.........: avg=6.06ms  min=0s       med=883µs  max=5.42s  p(90)=1.99ms p(95)=2.55ms
     http_req_sending...........: avg=15.67ms min=0s       med=11µs   max=28.5s  p(90)=51µs   p(95)=114µs 
     http_req_tls_handshaking...: avg=0s      min=0s       med=0s     max=0s     p(90)=0s     p(95)=0s    
     http_req_waiting...........: avg=4.15s   min=0s       med=6.55ms max=59.57s p(90)=18.79s p(95)=36.15s
     http_reqs..................: 177158 1180.280871/s
     iteration_duration.........: avg=7.56s   min=544.08µs med=8.26ms max=1m16s  p(90)=33.37s p(95)=1m2s  
     iterations.................: 177158 1180.280871/s
     vus........................: 92     min=92    max=10000
     vus_max....................: 10000  min=10000 max=10000
~~~~

## Fibonacci REST API - Golden Ration Calculation
