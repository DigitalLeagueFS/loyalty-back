FROM ruby:2.6.4

EXPOSE 3000

RUN mkdir /usr/src/app
RUN gem install bundler -v '2.0.2'

ADD Gemfile /usr/src/app/Gemfile
ADD Gemfile.lock /usr/src/app/Gemfile.lock

RUN cd /usr/src/app
WORKDIR /usr/src/app

RUN bundle install

ADD . /usr/src/app

ENTRYPOINT bin/rails s -p 3005