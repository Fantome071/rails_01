# Use of Ruby Container
FROM ruby:2.7

# Copy Denpendencies Files
COPY ./Gemfile /app/Gemfile
COPY ./Gemfile.lock /app/Gemfile.lock

# Make App folder current dir
WORKDIR /app

# Update Bundle Dependency Software
RUN bundle update --bundler

# Install SQLite3
RUN apt-get update && apt-get install -y nodejs libsqlite3-dev

# Update Dependencies for development
RUN bundle config set without 'production'
RUN bundle install

# Copy Source code of app
COPY . /app

# Update Database
RUN rails db:migrate RAILS_ENV=test

# Check Dependencies
RUN bundle exec rake

# Remove Old Server Instance
RUN rm -f /app/tmp/pids/server.pid

# Start Rails Server
CMD ["rails", "server", "-b", "0.0.0.0", "-p", "3000"]
