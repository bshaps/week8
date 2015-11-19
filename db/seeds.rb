Investment.destroy_all

['IBM', "AAPL", "GOOG", "MSFT", "AMZN", "FB", "INTC", "KO", "VZ", "MMM", "HD", "AXP",
 "BA", "CAT", "JPM", "MCD", "NKE"].each do |company|
  Investment.create ticker: company,
                    shares: [50, 100, 200].sample,
                    price: rand(2000..9999)
end

puts "You now own shares in #{Investment.count} companies."
