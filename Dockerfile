FROM ruby:2.0.0

RUN apt-get update -qq && apt-get install -y build-essential

# for aptutils
RUN apt-get install -y apt-utils

# for postgres
RUN apt-get install -y libpq-dev postgresql-server-dev-9.4 postgresql-client

# for nokogiri
RUN apt-get install -y libxml2-dev libxslt1-dev

# for capybara-webkit
RUN apt-get install -y libqt4-webkit libqt4-dev xvfb

# for a JS runtime
RUN apt-get install -y nodejs

ENV APP_HOME /weft-gitrob
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

ADD Gemfile* $APP_HOME/
RUN bundle install

# for our own scripting needs plus gitrob itself!
RUN gem install gitrob foreman

ADD . $APP_HOME