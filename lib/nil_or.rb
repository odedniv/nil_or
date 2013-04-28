module NilOr
  class NilOrDelegate < BasicObject
    attr_accessor :delegation_target

    def initialize(delegation_target)
      @delegation_target = delegation_target
    end

    def method_missing(method, *attributes, &block)
      @delegation_target.nil? ? nil :
        @delegation_target.__send__(method, *attributes, &block)
    end
  end

  def nil_or
    NilOrDelegate.new(self)
  end
end

class BasicObject
  include ::NilOr
end

