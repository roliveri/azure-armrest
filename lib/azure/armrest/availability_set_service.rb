# Azure namespace
module Azure
  # Armrest namespace
  module Armrest
    # Base class for managing availability sets.
    class AvailabilitySetService < ResourceGroupBasedService
      # Create and return a new AvailabilitySetService instance.
      #
      def initialize(armrest_configuration, options = {})
        super(armrest_configuration, 'availabilitySets', 'Microsoft.Compute', options)
      end

      def list_all
        list_in_all_groups
      end
    end # AvailabilitySetService
  end # Armrest
end # Azure
