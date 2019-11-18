FROM ruby:2.6-alpine
COPY mini-project.rb mini-project.rb
COPY config.ru config.ru
COPY Gemfile Gemfile
RUN gem install bundler
RUN bundle install
EXPOSE 9292/tcp
CMD ["bundle", "exec", "rackup", "--host", "0.0.0.0"]