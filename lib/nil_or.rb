module NilOr
  class DSL < BasicObject
    def method_missing(*)
      nil
    end
  end
  DSLObject = DSL.new

  module Methods
    def nil_or
      nil? ? DSLObject : self
    end
  end
end

class Object
  include NilOr::Methods
end

