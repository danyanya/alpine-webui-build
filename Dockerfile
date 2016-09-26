FROM mhart/alpine-node

RUN apk update && \
    apk --no-cache add \
        make \ 
        gcc \
        g++ \
        python \
        build-base

RUN npm install -g yo gulp bower
RUN npm install -g generator-gulp-angular

CMD ["sh"]
