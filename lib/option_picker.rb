require "option_picker/version"

module OptionPicker
  
  class Options

    def initialize(default_value, options={})
      options_hash = options.is_a?(Array) ? Hash[options.map {|o| [o,o] }] : options

      @options = options_hash.each_with_object(Hash.new(default_value)) do |(key, value), memo|
        memo[key.to_sym] = value
      end
    end

    def [](index)
      index = index.to_sym if index.respond_to?(:to_sym)
      @options[index]
    end

  end

end
