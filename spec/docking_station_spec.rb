require "docking_station"

describe DockingStation do

  describe "#Release bike" do

    it { is_expected.to respond_to (:release_bike) }

    it "Releases a new bike upon .release_bike" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it "Will fail with no bikes" do
      expect{ subject.release_bike }.to raise_error "No bikes available"
    end

  end

  describe "#Dock bike" do

    it { is_expected.to respond_to(:dock).with(1).argument }

    it "accepts an bike in the dock" do
      bike = Bike.new
      expect(subject.dock(bike)).to eq [bike]
    end

  end

  describe "#Fail for bike above capacity" do

    it "Will fail when capacity exceeded" do
      DockingStation::DEFAULT_CAPACITY.times{ subject.dock Bike.new }
      expect{ subject.dock Bike.new }.to raise_error "There are already max bikes docked"
    end

  end

end
