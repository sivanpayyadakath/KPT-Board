FROM ruby:2.7.0

ENV LANG C.UTF-8
ENV APP_ROOT /app

RUN mkdir $APP_ROOT
WORKDIR $APP_ROOT
ADD . $APP_ROOT

# Install Base libraries
RUN apt-get update -qq && \
    apt-get install -y build-essential \
                       libpq-dev \
                       nodejs \
                       curl

# Install yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update && apt-get install -y yarn

# Install node.js
RUN curl -sL https://deb.nodesource.com/setup_15.x | bash - && \
    apt-get install nodejs -y && \
    rm -rf /var/lib/apt/lists/*

RUN gem install bundler
RUN bundle install

