FROM ruby:2.6.7-alpine

ENV REDESIGNED_BARNACLE_PORT 6009
ENV APP_DIR /usr/app
WORKDIR ${APP_DIR}

COPY Gemfile .
COPY Gemfile.lock .
RUN mkdir -p ${APP_DIR} && \
    apk update && apk upgrade && apk add --no-cache alpine-sdk gmp-dev && \
    gem install bundler && bundle update && \
    bundle config without test && \
    bundle install

COPY config config
COPY config.ru .
COPY server.rb .
COPY lib lib

EXPOSE ${REDESIGNED_BARNACLE_PORT}

#Rackup command
#CMD [ "bundle", "exec", "rackup", "--host", "0.0.0.0", "-p", "4567"]

#Puma webserver command
CMD ["bundle", "exec", "puma"]