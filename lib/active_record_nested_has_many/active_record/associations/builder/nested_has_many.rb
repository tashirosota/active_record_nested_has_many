# frozen_string_literal: true

module ActiveRecord
  module Associations
    module Builder # :nodoc:
      class NestedHasMany < CollectionAssociation #:nodoc:
        def self.macro
          :nested_has_many
        end

        def self.valid_options(options)
          super + %i[primary_key dependent as through source source_type inverse_of counter_cache
                     join_table foreign_type index_errors]
        end

        def self.valid_dependent_options
          []
        end

        private_class_method :macro, :valid_options, :valid_dependent_options
      end
    end
  end
end
