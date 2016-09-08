FROM quay.io/natostanco/alppytctr

RUN apk add --update --no-cache zlib-dev jpeg-dev gcc musl-dev libxml2-dev libxslt-dev  \
 && ln -s /usr/include/libxml2/libxml/ /usr/include/ \
 && pip3 install newspaper3k \
 && pip3 install flask \
 && apk del zlib-dev jpeg-dev gcc musl-dev libxml2-dev libxslt-dev \
 && apk add jpeg libxslt \
 && rm /var/cache/apk/*

CMD ["/bin/bash"]
