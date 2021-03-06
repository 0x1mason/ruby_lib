module Appium
  module Ios

    # Find the first element containing value
    # @param value [String] the value to search for
    # @return [Element]
    def find value
      xpath_visible_contains '*', value
    end

    # Find all elements containing value
    # @param value [String] the value to search for
    # @return [Array<Element>]
    def finds value
      xpaths_visible_contains '*', value
    end

    # Find the first element exactly matching value
    # @param value [String] the value to search for
    # @return [Element]
    def find_exact value
      xpath_visible_exact '*', value
    end

    # Find all elements exactly matching value
    # @param value [String] the value to search for
    # @return [Array<Element>]
    def finds_exact value
      xpaths_visible_exact '*', value
    end
  end # module Ios
end # module Appium