FROM ruby:2.6-alpine
COPY . .
RUN gem install sinatra bundler
EXPOSE 9292/tcp
CMD ["bundle", "exec", "rackup", "--host", "0.0.0.0"]