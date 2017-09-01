FROM ruby:2.3.0

# Install essentials.
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

# Install imagemagick.
RUN apt-get update -qq && apt-get install -y imagemagick imagemagick-doc

# Install some gems in individual steps so they can be taken from cache next
# time we rebuild the image.
# NOTE: this only works if the specified versions are matching the version
# specified in the Gemfile.lock.
RUN gem install nokogiri -v '1.6.7.2'
RUN gem install pg -v '0.18.4'

# Prepare working directory.
RUN mkdir /app
WORKDIR /app

# Install gems specified in Gemfile.
ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock
RUN bundle install

# Add application code.
ADD . /app
