FROM ruby:3.0.1-alpine

WORKDIR /app

COPY Gemfile Gemfile.lock /app/
RUN bundle install


