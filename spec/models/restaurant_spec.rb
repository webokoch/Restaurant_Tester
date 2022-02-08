require 'rails_helper'

RSpec.describe Restaurant, type: :model do
  subject{
    described_class.new(name: 'YumYum',
                        cuisine: 'Korean',
                        location: 'Mitte')
  }
  it 'should be valid with valid atrributes' do
    except(subject).to be_valid
  end

  it 'should not be valid without a name' do
    subject.name = nil
    except(subject).to_not be_valid
  end

  it 'should not be valid without a cuisine' do
    subject.cuisine = nil 
    except(subject).to_not be_valid
  end

  it 'should not be valid without a location' do
    subject.location = nil
    except(subject).to_not be_valid
  end
end
