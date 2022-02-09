require 'rails_helper'

RSpec.describe Restaurant, type: :model do
  subject{
    described_class.new(name: 'YumYum',
                        cuisine: 'Korean',
                        location: 'Mitte')
  }

  it 'should be valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'should not be valid without a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end
  
  it 'should not be valid without a cuisine' do
    subject.cuisine = nil 
    expect(subject).to_not be_valid
  end
  
  it 'should not be valid without a location' do
    subject.location = nil
    expect(subject).to_not be_valid
  end

  context 'name uniquness' do
    before { described_class.create!( name: 'YumYum',
                                      cuisine: 'Chinese',
                                      location: 'Mitte') 
    }
    it 'should not be valid with same name' do
      expect(subject).to_not be_valid
    end
  end
end
