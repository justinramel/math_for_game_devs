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

  describe 'moving' do
    let(:inky) { Point.new }

    before do
      point.x = 0
      point.y = -1
      inky.x = 1
      inky.y = 1
    end

    it 'moves inky to pacmans position' do
      v = point - inky

      v.x.should eq(-1)
      v.y.should eq(-2)
    end

    it 'can calculate the length' do
      v = point - inky
      v.length.should eq(2.23606797749979)
    end

    context 'comparison' do
      let(:clive) { Point.new }

      before do
        clive.x = 2
        clive.y = -1
      end

      it 'can calculate the length square' do
        ip = point - inky
        cp = point - clive

        ip.length_sqr.should eq(5)
        cp.length_sqr.should eq(4)
      end
    end
  end
end
