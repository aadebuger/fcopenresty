from ubuntu
run apt-get update
run apt-get -y install libreadline-dev libncurses5-dev libpcre3-dev 
run apt-get -y install     libssl-dev perl make build-essential 
run apt-get -y install wget
#run wget https://openresty.org/download/ngx_openresty-1.9.3.2.tar.gz
#run tar xzvf  ngx_openresty-1.9.3.2.tar.gz
add ngx_openresty-1.9.3.2.tar.gz /code
ENV PATH /usr/local/openresty/nginx/sbin:$PATH
run cd /code/ngx_openresty-1.9.3.2 && ./configure && make && make install
add nginx.conf /conf/
add nginxapplua.conf /conf/
add nginxredistestlua.conf /conf/
add app.lua /conf/
add redistest.lua /conf/
