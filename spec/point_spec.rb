require 'spec_helper'

describe Point do
  subject(:point) { Point.new }
  let(:vector) { Vector.new }

  before do
    point.x = 1
    point.y = 0
    vector.x = 2
    vector.y = 3
  end

  describe '#add_vector' do

    it 'returns a new point at the correct position' do
      p2 = point.add_vector(vector)
      p2.x.should eq(3)
      p2.y.should eq(3)
    end

  end
end
