require 'airport'
require 'plane'
require 'weather'

describe Airport do

  let(:weather) { Weather.new }

    before do
      allow(weather).to receive(:stormy) { false }
    end

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
        p weather.stormy?
        p weather
        allow(weather).to receive(:stormy) { true }
        p weather.stormy?
        p weather
        expect{subject.take_off_plane}.to raise_error("Plane cannot take off in stormy weather")
    end

    it 'should raise an error before plane tries to land in stormy weather' do
        plane = Plane.new
        expect{subject.land_plane(plane)}.to raise_error("Plane cannot land in stormy weather")
    end

    it 'should raise an error saying that the airport is full' do
        plane = Plane.new
        plane2 = Plane.new
        subject.land_plane(plane)
        expect{subject.land_plane(plane2)}.to raise_error("Airport is full")
    end

end
