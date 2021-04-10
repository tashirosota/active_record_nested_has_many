# frozen_string_literal: true

require_relative '/associations/builder/nested_has_many'

module ActiveRecord
  module Associations
    module ClassMethods # :nodoc:
      def nested_has_many(name, scope = nil, **options, &extension)
        reflection = Builder::NestedHasMany.build(self, name, scope, options, &extension)
        Reflection.add_reflection self, name, reflection
      end
    end
  end
end
