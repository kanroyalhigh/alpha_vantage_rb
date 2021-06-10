# frozen_string_literal: true

require "httparty"
require "humanize"
require "open-uri"
require "ostruct"

require_relative "alpha_vantage_rb/version"
require_relative "alpha_vantage_rb/helper_function"
require_relative "alpha_vantage_rb/timeseries"
require_relative "alpha_vantage_rb/indicator"
require_relative "alpha_vantage_rb/stock"
require_relative "alpha_vantage_rb/errors"
require_relative "alpha_vantage_rb/exchange"
require_relative "alpha_vantage_rb/exchange_timeseries"
require_relative "alpha_vantage_rb/crypto"
require_relative "alpha_vantage_rb/crypto_Timeseries"
require_relative "alpha_vantage_rb/sector"
require_relative "alpha_vantage_rb/client"

module AlphaVantageRb
  class Error < StandardError; end
  #
end
