FROM ruby:2.6.3
ENV APP_HOME /rails-docker
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev \
  && mkdir /app \
  && apt-get clean autoclean \
  && apt-get autoremove -y \
  && rm -rf \
  /var/lib/apt \
  /var/lib/dpkg \
  /var/lib/cache \
  /var/lib/log
RUN mkdir $APP_HOME
WORKDIR $APP_HOME
ADD Gemfile* $APP_HOME/
RUN gem install bundler:2.1.2 \
    && bundle update --bundler \
    && bundle install
ADD . $APP_HOME

CMD RAILS_ENV=${RAILS_ENV} bundle exec rails db:create db:migrate db:seed && bundle exec rails s -p ${PORT} -b '0.0.0.0'