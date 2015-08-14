require('rspec')
require('word')
require('definition')

describe(Definition) do

  before() do
    Definition.clear()
  end

  describe('#definition') do
    it('returns the definition') do
      test_definition = Definition.new({:definition =>  'a statement that describes what something is'})
      expect(test_definition.definition()).to(eq( 'a statement that describes what something is'))
    end
  end

  describe('#id') do
    it('returns id number') do
      test_definition = Definition.new({:definition =>  'a statement that describes what something is'})
      expect(test_definition.id()).to(eq(1))
    end
  end

  describe('.all') do
    it('returns an empty array') do
      test_definition = Definition.new({:definition =>  'a statement that describes what something is'})
      expect(Definition.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('returns the saved array') do
      test_definition = Definition.new({:definition =>  'a statement that describes what something is'})
      test_definition.save()
      expect(Definition.all()).to(eq([test_definition]))
    end
  end

  describe('.clear') do
    it('returns the cleared array') do
      test_definition = Definition.new({:definition =>  'a statement that describes what something is'})
      expect(Definition.clear()).to(eq([]))
    end
  end

  describe('.find') do
    it('returns the contact by id') do
      test_definition = Definition.new({:definition =>  'a statement that describes what something is'})
      test_definition.save
      expect(Definition.find(1)).to(eq(test_definition))
    end
  end

end
