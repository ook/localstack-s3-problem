FROM ruby:2.2.5

COPY Gemfile* /tmp/

WORKDIR /tmp

RUN gem install bundler && bundle install

COPY . /app/user
