require_relative './startup.rb'
require_relative './venture_capitalist.rb'

stevehurst = Startup.new("Stevehurst", "Steve", "Chemicals")
saber = Startup.new("Saber", "Arran", "Wearables")
buttons = Startup.new("buttons", "Josh", "Wearables")

venture = VentureCapitalist.new('venture1', -100)
puts venture.total_worth