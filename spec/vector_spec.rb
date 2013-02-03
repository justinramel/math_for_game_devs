require 'spec_helper'

describe 'speed' do
  let(:vector) { Vector.new(3, 4) }

  it 'has an initial speed' do
    vector.length.should eq(5)
  end

  it 'can move at double speed' do
    doubled = vector * 2
    doubled.length.should eq(10)
  end

  it 'can move at half speed' do
    halved = vector / 2
    halved.length.should eq(2.5)
  end

  context '#normalized' do
    let(:inky) { Point.new(3,4) }
    let(:pacman) { Point.new(1,2) }

    it 'can be normalized' do
      pi = inky - pacman
      normalized = pi.normalized

      normalized.x.should eq(0.7071067811865475)
      normalized.y.should eq(0.7071067811865475)
      normalized.length.should eq(0.9999999999999999)
    end
  end
end
