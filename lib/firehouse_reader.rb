class FirehouseReader

  attr_reader :url

  def initialize(url)
    @url = url
  end

  def seed_db
    JSON.parse(RestClient.get(url))["data"].each do |line|
      next if line.last == "Borough"
      f = Firehouse.create
      f.address = "#{line[9]} #{line[10]}, NY"
      f.save
      puts "Geocoding: #{f.address}"
      sleep 5
    end
  end

end