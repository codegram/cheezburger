require File.expand_path(File.dirname(__FILE__) + '/spec_helper')


describe "Cheezburger" do

  dey { Array.new }

  deyr(:class) { should == Array } # shud or shoodz does not work

  fings_dat_maeks "a kitteh" do
    fur_laterz "haz cheez"
  end

  it_maeks_tings_liek "a kitteh"

  iz(:kitteh) { double('kitteh') }

  srsly "shud haz cheezburger" do
    kitteh
    dey.shud_nawt be_nil
    
    [3,4,2].shoodz haz(3).elements
    expect {2 + 3}.twerk
    tihs {2 + 3}.shoodz_nawt raise_error
  end

  I "shud liek karot" do
    laterz "lollerskates"
  end

  fur_laterz "shud haz moar cheezburger"
end
