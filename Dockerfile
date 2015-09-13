FROM heroku/ruby

# Ensure Gemfile.lock is up to date
RUN bundle config --global frozen 1

# Install latest released Napa to get baseline dependencies
RUN gem install napa

# Add a simple Procfile parser
ADD contrib/start.rb /start

# Copy Gemfile and Gemfile.lock and run bundle install
ONBUILD COPY Gemfile /app/
ONBUILD COPY Gemfile.lock /app/
ONBUILD RUN bundle install

# Copy rest of app
ONBUILD COPY . /app

CMD ["/start", "web"]