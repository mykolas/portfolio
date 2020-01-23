FROM starefossen/ruby-node:2-10-slim
RUN apt-get update -qq && \
    apt-get install -y git nano build-essential libpq-dev && \
    gem install bundler
RUN mkdir /project
COPY Gemfile Gemfile.lock /project/
WORKDIR /project
RUN bundle install
COPY . /project
