#!/bin/bash

wget 'http://nginx.org/download/nginx-1.9.3.tar.gz'
wget --no-check-certificate -Ongx_devel_kit-0.2.19.tar.gz 'https://github.com/simpl/ngx_devel_kit/archive/v0.2.19.tar.gz'
wget --no-check-certificate -Oset-misc-nginx-module-0.29.tar.gz 'https://github.com/openresty/set-misc-nginx-module/archive/v0.29.tar.gz'
wget --no-check-certificate -Oecho-nginx-module-0.58.tar.gz 'https://github.com/openresty/echo-nginx-module/archive/v0.58.tar.gz'
tar -xzvf nginx-1.9.3.tar.gz
tar -xzvf ngx_devel_kit-0.2.19.tar.gz
tar -xzvf set-misc-nginx-module-0.29.tar.gz
tar -xzvf echo-nginx-module-0.58.tar.gz
cd nginx-1.9.3/
./configure --with-http_gzip_static_module --with-http_ssl_module --add-module=../ngx_devel_kit-0.2.19 --add-module=../set-misc-nginx-module-0.29 --add-module=../echo-nginx-module-0.58
make -j2
sudo make install
