require 'gilded_rose'
require 'spec_helper'

describe GildedRose do

  describe "#update_quality" do
    it "does not change the name" do
      items = [Item.new("foo", 0, 0)]
      GildedRose.new(items).update_quality()
      expect(items[0].name).to eq "foo"
    end

    it "does not change the sell in value" do
      items = [Item.new("foo", 1, 2)]
      GildedRose.new(items).update_quality()
      p items
      expect(items[0].sell_in).to eq 0
    end

    it "does not change the sell in value" do
      items = [Item.new("foo", 1, 2)]
      GildedRose.new(items).update_quality()
      p items
      expect(items[0].sell_in).to eq 0
    end

    it "prints the end result" do
      items = [Item.new("Backstage passes to a TAFKAL80ETC concert", 1, 2)]
      rose = GildedRose.new(items)
      30.times { rose.update_quality() }
      p 'These are the items!'
      p rose.items
      expect(items[0].name).to eq "Aged Brie"
      expect(items[0].sell_in).to eq -29
      expect(items[0].quality).to eq 50
      # [#<Item:0x007fc868026c18 @name="Aged Brie", @sell_in=-29, @quality=50>]
      # [#<Item:0x007fa27401e398 @name="Sulfuras, Hand of Ragnaros", @sell_in=1, @quality=2>]
      # [#<Item:0x007ffc1db29d20 @name="Backstage passes to a TAFKAL80ETC concert", @sell_in=-29, @quality=0>]
    end


  end


end
