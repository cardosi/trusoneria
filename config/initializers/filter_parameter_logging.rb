# Be sure to restart your server when you modify this file.

# Configure sensitive parameters which will be filtered from the log file.
# frozen_string_literal: true

Rails.application.config.filter_parameters += [:password]
