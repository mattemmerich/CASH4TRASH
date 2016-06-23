require 'net/http'
require 'json'  

module Metal
	class Client


		def aluminium_api_response
			uri = URI ("https://www.quandl.com/api/v3/datasets/ODA/PALUM_USD.json?start_date=2014-12-01&api_key=PSfJy_uEog7spRv_K5mY")
			response = Net::HTTP.get(uri)
			parsed = JSON.parse(response)
			parsed["dataset"]
			# return parsed
		end


		# this is from 1890
		def iron_api_response
			uri = URI("https://www.quandl.com/api/v3/datasets/FRED/M0442AUS37980M290NNBR.json?api_key=PSfJy_uEog7spRv_K5mY")
			response = Net::HTTP.get(uri)
			parsed = JSON.parse(response)
			parsed["results"]
			# included print for testing purposes
			print parsed
		end

		def copper_api_response
			uri = URI("https://www.quandl.com/api/v3/datasets/ODA/PCOPP_USD.json?start_date=2014-12-01&api_key=PSfJy_uEog7spRv_K5mY")
			response = Net::HTTP.get(uri)
			parsed = JSON.parse(response)
			parsed["results"]
			# return parsed
		end
	end

	def twelve
		for i in 0..11
			print @data[1]
		end
	end




end