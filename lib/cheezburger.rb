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
        end
      end
      alias :thiz :expect
      alias :tihs :expect
      alias :dis :expect
      alias :i_hoep :expect
      alias :meh_hoeps :expect

      alias_method :shud, :should
      alias_method :shoodz, :should
      alias_method :should_nawt, :should_not
      alias_method :shud_nawt, :should_not
      alias_method :shoodz_nawt, :should_not

      alias_example_to :I
      alias_example_to :specify
      alias_example_to :srsly, :focused => true
      alias_example_to :fur_laterz, :pending => true

      alias_it_should_behave_like_to :it_maeks_tings_liek, "maeks tings liek"

      class << self
        alias_method :discrieb, :describe
        alias_method :suroundid_bai, :context
      end
      
    end

    module ObjectExtensions
      alias :discrieb :describe
      alias :suroundid_bai :context
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

  module Mocks
    module Methods
      alias_method :sez, :stub
      alias_method :unsez, :unstub

      alias_method :shud_get, :should_receive
      alias_method :shud_nawt_get, :should_not_receive
    end
  end

end
