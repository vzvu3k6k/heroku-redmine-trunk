FROM vzvu3k6k/redmine:trunk
COPY database.yml additional_environment.rb config/
RUN git clone https://github.com/vzvu3k6k/heroku-redmine-trunk.git plugins/heroku-redmine-trunk
