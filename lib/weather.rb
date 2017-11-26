
class Weather
    def initialize
        @weather = Random.new.rand(1..10)
    end
    
    def weather_state?
        if @weather.between?(1, 9)
            @weather = true
        else
            @weather = false
        end
    end
end