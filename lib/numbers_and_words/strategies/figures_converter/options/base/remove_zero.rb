# frozen_string_literal: true

module NumbersAndWords
  module Strategies
    module FiguresConverter
      module Options
        module Base
          class RemoveZero < Helpers
            def result
              active?
            end

            private

            def active?
              @options[:remove_zero]
            end
          end
        end
      end
    end
  end
end
