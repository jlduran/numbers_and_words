# frozen_string_literal: true

module NumbersAndWords
  module Strategies
    module FiguresConverter
      module Options
        module Base
          class Ordinal < Helpers
            def result
              return :ordinal if active?
            end

            private

            def active?
              @options[:ordinal]
            end
          end
        end
      end
    end
  end
end
