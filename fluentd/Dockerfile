# Wirepas Oy

FROM fluent/fluentd:v1.3
RUN apk add --update --virtual .build-deps \
        sudo build-base ruby-dev \
    && sudo gem install \
        fluent-plugin-elasticsearch \
        fluent-plugin-genhashvalue \
    && sudo gem sources --clear-all \
    && apk del .build-deps \
    && rm -rf /var/cache/apk/* \
           /home/fluent/.gem/ruby/2.5.0/cache/*.gem
USER fluent
