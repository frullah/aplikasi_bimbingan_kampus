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

CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]
