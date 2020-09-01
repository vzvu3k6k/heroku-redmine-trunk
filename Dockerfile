FROM vzvu3k6k/redmine:r20002
COPY database.yml additional_environment.rb config/
COPY Gemfile.local Gemfile.local
RUN git clone --depth 1 https://github.com/vzvu3k6k/heroku-redmine-trunk-updater.git plugins/heroku-redmine-trunk-updater
RUN git clone --depth 1 https://github.com/vzvu3k6k/redmine_login_bypass.git plugins/redmine_login_bypass
RUN bundle install --without development test
ENV ENABLE_REDMINE_LOGIN_BYPASS 1
