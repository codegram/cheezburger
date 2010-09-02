require 'rspec'

module Kernel
  alias :shud :should
  alias :shoodz :should
  alias :should_nawt :should_not
  alias :shud_nawt :should_not
  alias :shoodz_nawt :should_not
end
module RSpec
  module Core
    module Subject
      module ClassMethods
        alias :dey :subject # dey { Object.new }
        alias :deyr :its
      end
      alias :dey :subject # dey.shud_nawt be_nil
    end
    module SharedExampleGroup
      alias :fings_dat_maeks :shared_examples_for
    end
    module Let
      module ClassMethods
        alias :iz :let
      end
    end
    module Pending
      alias :laterz :pending
    end
    class ExampleGroup
      module BlockAliases
        alias_method :to_nawt, :to_not
        def twerk
          to_not Matchers::RaiseError.new, "shoodz werk"
          # RSpec::Expectations::NegativeExpectationHandler.handle_matcher(self, matcher, message, &block)
        end
      end
      alias :thiz :expect
      alias :tihs :expect
      alias :dis :expect

      alias_example_to :I
      alias_example_to :specify
      alias_example_to :srsly, :focused => true
      alias_example_to :fur_laterz, :pending => true

      alias_it_should_behave_like_to :it_maeks_tings_liek, "maeks tings liek"

      class << self
        alias_method :discrieb, :describe
      end
      
    end
  end
  module Matchers
    alias :haz :have
    alias :haz_at_least :have_at_least
    alias :haz_at_most :have_at_most

    class Has
    private
      def predicate(sym)  
        "#{sym.to_s.sub("haz_","has_")}?".to_sym
      end
    end
  end
end
