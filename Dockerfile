FROM vzvu3k6k/redmine:r18593
COPY database.yml additional_environment.rb config/
COPY Gemfile.local Gemfile.local
RUN git clone --depth 1 https://github.com/vzvu3k6k/heroku-redmine-trunk-updater.git plugins/heroku-redmine-trunk-updater
RUN bundle install --without development test
