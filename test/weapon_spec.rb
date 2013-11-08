require 'rspec'
require_relative '../lib/weapon'

describe 'Creating weapons' do

  it 'should have a name' do
    Weapon.new('Rusty Sword', 0, 0).name.should == 'Rusty Sword'
  end

  it 'should have a damage range' do
    Weapon.new(nil, 0, 1).should respond_to(:dmg_range)
  end

  it 'should have a min & max damage' do
    w = Weapon.new('', 0, 1)
    w.min_dmg.should == 0
    w.max_dmg.should == 1
  end

  it 'should make sure max damage is larger than min damage' do
    expect { Weapon.new('', 1, 0) }.to raise_error ArgumentError
  end


end