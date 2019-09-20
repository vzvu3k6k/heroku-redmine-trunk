if ENV["RAILS_LOG_TO_STDOUT"].present?
  logger           = ActiveSupport::Logger.new(STDOUT)
  logger.formatter = config.log_formatter
  config.logger = ActiveSupport::TaggedLogging.new(logger)

  config.lograge.enabled = true
  config.lograge.keep_original_rails_log = true
  config.lograge.logger = logger
end
