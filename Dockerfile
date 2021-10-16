FROM ruby:3.0.1-alpine

# install OS dependencies
RUN apk update && apk add --no-cache build-base git

WORKDIR /app

# initialize bundle config for production
RUN bundle config set --local without development:test
RUN bundle config set --local path vendor/bundle

# installing bundle
COPY Gemfile Gemfile.lock /app/
RUN bundle install

COPY . /app/


RUN apk add nodejs
# RUN apk add curl bash
# RUN curl -fsSL https://fnm.vercel.app/install | bash

RUN export RAILS_ENV=production

RUN apk add tzdata

CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]
