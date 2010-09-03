require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

discrieb "Cheezburger" do

  dey { Array.new }

  deyr(:class) { shud == Array }

  iz(:kitteh) { double('kitteh') }

  fings_dat_maeks "a kitteh" do
    I "haz cheez" do
      i_hoep { ['cheez', 'plz'] }.twerk
    end
  end

  it_maeks_tings_liek "a kitteh"

  srsly "shud haz cheezburger" do
    kitteh
    dey.shud_nawt be_nil

    dey.sez(:size).and_return(3)
    
    [3,4,2].shoodz haz(3).elements
    i_hoep {2 + 3}.twerk
    meh_hoeps {2 + 3}.to_nawt raise_error
    tihs {2 + 3}.shoodz_nawt raise_error
  end

  discrieb "moar kool tings" do

    suroundid_bai "hyoominz" do
      I "shud liek karot" do
        laterz "lol"
      end
    end

    I "shud be kyoot" do
      dey.shud_get(:toothbrush).and_return("wrrrr")
      dey.shud_nawt_get(:confoozled).and_return("kthxbai")

      dey.toothbrush # => "wrrrrrr" kitteh iz kyoot
    end
  end

  fur_laterz "shud haz moar cheezburger"

end
