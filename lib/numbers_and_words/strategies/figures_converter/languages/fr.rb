# frozen_string_literal: true

module NumbersAndWords
  module Strategies
    module FiguresConverter
      module Languages
        class Fr < Base
          def capacity_iteration
            words = []
            capacity_words = words_in_capacity(@current_capacity)
            words.push(megs) unless capacity_words.empty?
            words += capacity_words unless thousand? && one?
            words
          end

          def hundreds
            super({ pluralize: simple_number_to_words.empty? && (@parent_figures.nil? || @parent_figures.size == 3) })
          end

          def tens
            super({ alone: @current_capacity&.positive? ? false : nil })
          end

          def megs
            super({ number: @figures.number_in_capacity(@current_capacity) })
          end

          private

          def one?
            words_in_capacity(@current_capacity) == [translations.ones(1)]
          end

          def thousand?
            @current_capacity == FiguresArray::THOUSAND_CAPACITY
          end
        end
      end
    end
  end
end
