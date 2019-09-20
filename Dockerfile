FROM vzvu3k6k/redmine:r18382
COPY database.yml additional_environment.rb config/
RUN git clone --depth 1 https://github.com/vzvu3k6k/heroku-redmine-trunk-updater.git plugins/heroku-redmine-trunk-updater
