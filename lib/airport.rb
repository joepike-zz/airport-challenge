
class Airport
    
    def initialize
        @planes = []
    end
    
    def land_plane(plane)
        @planes << plane
    end
    
    def take_off_plane
        raise "Plane cannot take off in stormy weather"
        @planes.pop
    end
    
end