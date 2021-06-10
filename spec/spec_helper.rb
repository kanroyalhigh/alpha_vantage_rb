# frozen_string_literal: true
=begin

require "rspec"
require "pry-byebug"
require "yaml"
require "openssl"
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
require "alpha_vantage_rb"
# require_relative "../lib/alphavantagerb"
=end

require 'bundler/setup'
Bundler.setup

require 'alpha_vantage_rb'

RSpec.configure do |config|

  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

	config.before(:all) do
		@api_key = ENV.fetch('ALPHA_VANTAGE_API_KEY')
		@client  = AlphaVantageRb::Client.new key: @api_key
		@stock   = @client.stock(symbol: 'MSFT')
	end
end
