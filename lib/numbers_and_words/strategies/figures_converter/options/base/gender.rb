# frozen_string_literal: true

module NumbersAndWords
  module Strategies
    module FiguresConverter
      module Options
        module Base
          class Gender < Helpers
            def result
              active? ? @options[:gender].to_sym : :male
            end

            private

            def active?
              @options[:gender]
            end
          end
        end
      end
    end
  end
end
