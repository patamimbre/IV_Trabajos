require 'ipaddr'
require 'socket'

class IP
	def self.ip_belong_subnet?(ip, subnet)
		begin
			anip = IPAddr.new("#{ip}/#{24}") 
		rescue
			puts "Error en el formato de ip"
		end
		anip === subnet 
	
	end

	def self.valid_ip? (ip)
		valid = !(IPAddr.new(ip) rescue nil).nil?
	end

	def self.run 

		ip = ARGV[0]
		subnet = ARGV[1]

		 puts "#{ip} valida: " + TestIP.valid_ip?(ip).to_s
		 puts "#{ip} pertenece a #{subnet}: " + TestIP.ip_belong_subnet(ip, subnet).to_s
	end
end
