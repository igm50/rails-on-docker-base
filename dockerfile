FROM ruby:2.6.0

ENV APP_ROOT /usr/src/project_name

WORKDIR ${APP_ROOT}

RUN apt-get update && \
    apt-get install -y nodejs

COPY Gemfile ${APP_ROOT}
COPY Gemfile.lock ${APP_ROOT}

RUN bundle install

EXPOSE 3000

CMD bundle exec rails server