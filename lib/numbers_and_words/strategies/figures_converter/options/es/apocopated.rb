# frozen_string_literal: true

module NumbersAndWords
  module Strategies
    module FiguresConverter
      module Options
        module Es
          class Apocopated < Base::Helpers
            def result
              return :apocopated if active?
            end

            private

            def active?
              @options[:apocopated]
            end
          end
        end
      end
    end
  end
end
