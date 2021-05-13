FROM ruby:2.6.6

ENV APP_DIR /usr/app
RUN mkdir -p ${APP_DIR}
WORKDIR ${APP_DIR}

COPY config.ru .
COPY Gemfile .
COPY Gemfile.lock .
COPY server.rb .
COPY lib lib

RUN gem install bundler && bundle install

EXPOSE 4567

CMD [ "bundle", "exec", "rackup", "--host", "0.0.0.0", "-p", "4567"]