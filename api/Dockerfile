FROM ruby:2.2.5

COPY Gemfile* /tmp/

WORKDIR /tmp

RUN gem install bundler && bundle install

COPY . /app/user

RUN apt update && apt install -y python-dev python-pip libffi-dev libssl-dev
RUN pip install --upgrade pip
RUN pip install awscli
