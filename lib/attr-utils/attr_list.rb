module AttrUtils
  module AttrList
    # Return attributes' name which has getter and setter methods in the class.
    # Hopefully they may identical with attributes defined as "attr_accessor".
    #
    # @return [Array<Symbol>]
    def list_attr_accessors
      methods = instance_methods - %w(== === !=).map(&:to_sym)
      methods.select{|m| methods.find{|m2| "#{m.to_s}=" == m2.to_s  } }
    end
  end
end
