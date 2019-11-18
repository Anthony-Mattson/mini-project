FROM ruby:2.6-alpine
COPY . .
RUN gem install sinatra
EXPOSE 4567/tcp