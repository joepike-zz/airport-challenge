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
    
    it 'should not allow plane to take off in stormy weather' do
        plane = Plane.new
        subject.land_plane(plane)
        expect(subject.take_off_plane).to raise_error("Plane cannot take off in stormy weather")
    end
    
end