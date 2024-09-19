FROM ubuntu/apache2
COPY ./index.html /usr/share/nginx/html/

ADD https://www.eicar.org/download/eicar-com/?wpdmdl=8840&refresh=66ec9371ca4671726780273 /tmp/eicar.com