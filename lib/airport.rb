require 'weather'

class Airport
    
    def initialize(capacity = 1)
        @planes = []
        @capacity = capacity
        @weather = Weather.new
    end
    
    def land_plane(plane)
        raise "Airport is full" if @planes.count == @capacity
        @planes << plane
    end
    
    def take_off_plane
        raise "Plane cannot take off in stormy weather" if !@weather.weather_state?
        @planes.pop
    end
    
    def get_weather
        @current_weather = Weather.new
        
    end
    
end