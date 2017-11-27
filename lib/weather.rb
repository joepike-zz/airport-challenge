
class Weather

    attr_reader :stormy

    def stormy?
      rand(10) == 1 ? true : false
    end

end
