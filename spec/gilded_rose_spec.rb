require 'gilded_rose'

describe GildedRose do
  items = [Item.new("Aged Brie", 1, 2), Item.new("Sulfuras, Hand of Ragnaros", 1, 2), Item.new("Backstage passes to a TAFKAL80ETC concert", 1, 2)]
  subject(:rose) { described_class.new(items) }

  describe "#update_quality" do
    it "does not change the name during 30 iterations" do
      result = 30.times { rose.update_quality() }
      expect(rose.items[0].name).to eq "Aged Brie"
      expect(rose.items[1].name).to eq "Sulfuras, Hand of Ragnaros"
      expect(rose.items[2].name).to eq "Backstage passes to a TAFKAL80ETC concert"
    end

    it "does not change the sell_in value during 30 iterations" do
      expect(rose.items[0].sell_in).to eq -29
      expect(rose.items[1].sell_in).to eq 1
      expect(rose.items[2].sell_in).to eq -29
    end

    it "does not change the quality value during 30 iterations" do
      expect(rose.items[0].quality).to eq 50
      expect(rose.items[1].quality).to eq 2
      expect(rose.items[2].quality).to eq 0
    end

    it "does not change the number of items during 30 iterations" do
      expect(rose.items.length).to eq 3
    end

    it "does not change the properties of the items during 30 iterations" do
      p 'these are rose items'
      p rose.items
      expect(rose.items).to eq rose.items
    end

    it "is my golden key which does not change the values of the items" do
      items = [Item.new("Aged Brie", 1, 2), Item.new("Sulfuras, Hand of Ragnaros", 1, 2), Item.new("Backstage passes to a TAFKAL80ETC concert", 1, 2)]
      rose = GildedRose.new(items)
      30.times { rose.update_quality() }
      p 'These are the items!'
      p rose.items
      expect(items[0].name).to eq "Aged Brie"
      expect(items[0].sell_in).to eq -29
      expect(items[0].quality).to eq 50

      expect(items[1].name).to eq "Sulfuras, Hand of Ragnaros"
      expect(items[1].sell_in).to eq 1
      expect(items[1].quality).to eq 2

      expect(items[2].name).to eq "Backstage passes to a TAFKAL80ETC concert"
      expect(items[2].sell_in).to eq -29
      expect(items[2].quality).to eq 0
    end
  end
end

  describe Item do
    subject(:brie_item) { described_class.new("Aged Brie", 1, 2) }
    subject(:sulfurus_item) { described_class.new("Sulfuras, Hand of Ragnaros", 1, 2) }
    subject(:backstage_item) { described_class.new("Backstage passes to a TAFKAL80ETC concert", 1, 2) }

    describe "#to_s" do
    it "corrrectly prints all 3 different types of items" do
      expect(brie_item.to_s()).to eq "Aged Brie, 1, 2"
      expect(sulfurus_item.to_s()).to eq "Sulfuras, Hand of Ragnaros, 1, 2"
      expect(backstage_item.to_s()).to eq "Backstage passes to a TAFKAL80ETC concert, 1, 2"
    end
  end
end
