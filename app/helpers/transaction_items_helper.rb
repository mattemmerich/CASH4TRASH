module TransactionItemsHelper
	# helper_method :type	

	def type
	[:Copper, :Aluminum, :Steel]
end

	# date_method :date_select

	def day_select
		[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]
	end

	def month_select
		[:January, :February, :March, :April, :May, :June, :July, :August, :September, :October, :November, :December ]
	end

	def year_select
		[2016, 2017, 2018, 2019, 2020, 2021, 2022, 2023, 2024, 2025]
	end
end
