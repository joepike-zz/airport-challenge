require 'airport'
require 'plane'

describe Airport do
    
    it 'lands a plane at the airport' do
        plane = Plane.new
        expect(subject.land_plane(plane)).to eq([plane])
    end
    
    it 'a plane takes off from the airport' do
        plane = Plane.new
        subject.land_plane(plane)
        expect(subject.take_off_plane).to eq(plane)
    end
    
    it 'should raise an error if weather is stormy before plane takes off' do
        plane = Plane.new
        subject.land_plane(plane)
        weather = double(:weather, weather_state?: false)
        expect(subject.take_off_plane).to raise_error("Plane cannot take off in stormy weather")
    end
    
    it 'should raise an error saying that the airport is full' do
        plane = Plane.new
        plane2 = Plane.new
        subject.land_plane(plane)
        expect(subject.land_plane(plane2)).to raise_error "Airport is full"
    end
    
end