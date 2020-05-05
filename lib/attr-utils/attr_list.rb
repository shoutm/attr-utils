module AttrUtils
  module AttrList
    def self.included(mod)
      mod.extend(ClassMethods)
    end

    module ClassMethods
      # Return attributes' name which has getter and setter methods in the class.
      # Hopefully they may identical with attributes defined as "attr_accessor".
      #
      # @return [Array<Symbol>]
      def list_attr_accessors
        my_methods = instance_methods - %w(== === !=).map(&:to_sym)
        my_methods.select{|m| my_methods.find{|m2| "#{m.to_s}=" == m2.to_s  } }
      end
    end

    # Return attributes' name which has getter and setter methods in the instannce.
    # Hopefully they may identical with attributes defined as "attr_accessor".
    #
    # @return [Array<Symbol>]
    def list_attr_accessors
      my_methods = methods - %w(== === !=).map(&:to_sym)
      my_methods.select{|m| my_methods.find{|m2| "#{m.to_s}=" == m2.to_s  } }
    end
  end
end
