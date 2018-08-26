FROM ruby:2.5.0

# node.js
RUN echo "Installing nodejs ..." && \
    apt-get update -qq && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y curl apt-transport-https graphicsmagick build-essential default-libmysqlclient-dev --fix-missing && \
    curl -sS https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add - && \
    echo 'deb https://deb.nodesource.com/node_8.x jessie main' > /etc/apt/sources.list.d/nodesource.list && \
    apt-get update -qq && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends nodejs && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV RAILS_ROOT /var/www/ymeetme_api
RUN mkdir -p $RAILS_ROOT

# Set working directory
WORKDIR $RAILS_ROOT

# Setting env up
ENV RAILS_ENV=production
ENV RAKE_ENV=production

# Adding project files
COPY . .

RUN gem install bundler
RUN bundle config --global frozen 1
RUN bundle install --path /bundle --jobs 20 --retry 5 --without development test

EXPOSE 3000
