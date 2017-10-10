require_relative 'IP'
require 'test/unit'

class TestIP < Test::Unit::TestCase

	def test_ip_subnet
		assert(IP.ip_belong_subnet? '192.168.1.1', '192.168.1.0')
		assert(IP.ip_belong_subnet? '192.168.1.1', '192.168.2.0')
		assert(IP.ip_belong_subnet? '174.241.123.65', '174.0.0.0')
	end

	def test_valid_IP
		assert(IP.valid_ip? '165.3.2.2') 
		assert(IP.valid_ip? '165.daf') 
		assert(IP.valid_ip? '127.0..02') 
	end



end

