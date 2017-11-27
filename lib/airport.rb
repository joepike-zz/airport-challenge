require 'weather'

class Airport

    def initialize(weather = Weather.new, capacity = 1)
        @airport = []
        @capacity = capacity
        @weather = weather
    end

    def land_plane(plane)
        raise "Airport is full" if @airport.count == @capacity
        raise "Plane cannot land in stormy weather" if @weather.stormy? == true
        @airport << plane
    end

    def take_off_plane
        raise "Plane cannot take off in stormy weather" if @weather.stormy?
        @airport.pop
    end

end
