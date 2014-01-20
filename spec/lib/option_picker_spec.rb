require 'spec_helper'

describe OptionPicker::Options do
  
  let(:options) { OptionPicker::Options.new('foo') }
  
  it "returns the default option for any missing keys" do
    expect(options[:something]).to eql('foo')
  end

  context "with a hash of mappings" do
    let(:options) { OptionPicker::Options.new('two', foo: 'one', bar: 'two') }

    it "maps the input key to the expected output" do
      expect(options[:foo]).to eql('one')
    end
  end

  context "with an array of options" do
    let(:options) { OptionPicker::Options.new('two', ['one', 'two']) }

    it "returns the key if it exists in the list of options" do
      expect(options['one']).to eql('one')
    end
  end

  context "mixed key types" do
    let(:options) { OptionPicker::Options.new('two', foo: 'one', bar: 'two') }

    it "finds the matching key" do
      expect(options['foo']).to eql('one')
    end
  end

end
