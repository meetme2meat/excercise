require 'spec_helper'

RSpec.describe 'Person Function Test' do
  describe 'Person#initialize' do
    it 'should initialize person' do
      person = Person.new({'first_name' => 'Vikram', 'last_name' => 'Rathod', 'birthdate' => '1996-12-01', 'city' => 'New York'}, '%Y-%m-%d')
      expect(person.birth_date.to_s).to eq('1996-12-01')
      person = Person.new({'first_name' => 'Vikram', 'last_name' => 'Rathod', 'birthdate' => '1996-16-01', 'city' => 'New York'}, '%Y-%m-%d')
      expect(person.birth_date).to eq(nil)
    end
  end

  describe 'Person#to_s' do
    it 'should return person stringify' do
      person = Person.new({'first_name' => 'Vikram', 'last_name' => 'Rathod', 'birthdate' => '1996-12-01', 'city' => 'New York'}, '%Y-%m-%d')
      expect(person.to_s).to eq('Vikram, New York, 12/1/1996')

      person = Person.new({'first_name' => 'Vikram', 'birthdate' => '1996-08-01', 'city' => 'New York'}, '%Y-%m-%d')
      expect(person.to_s).to eq('Vikram, New York, 8/1/1996')

    end
  end
end
