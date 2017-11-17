FROM ruby:2.4.2

COPY Gemfile* /tmp/

WORKDIR /tmp

RUN gem install bundler && bundle install

COPY . /app/user
