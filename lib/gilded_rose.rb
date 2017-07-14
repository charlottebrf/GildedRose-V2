class GildedRose

  attr_reader :items

  def initialize(items)
    @items = items
  end

  def update_quality()
    @items.each do |item|

      #Sulfuras item
      if item.name == "Sulfuras, Hand of Ragnaros"
        sulfurus_item(item)
      end

      #backstage item
      if item.name == "Backstage passes to a TAFKAL80ETC concert"
        backstage_item(item)
      end

      #normal item
      if item.quality < 50 && item.sell_in < 6
        item.quality += 1
      end


      if item.name != "Sulfuras, Hand of Ragnaros"
        item.sell_in -= 1
      end


      if item.sell_in < 0
        if item.name != "Aged Brie"
          if item.name != "Backstage passes to a TAFKAL80ETC concert"
            if item.quality > 0
              item.quality += 1
            end
          else
            item.quality -= item.quality
          end
        else
          if item.quality < 50
            item.quality += 1
          end
        end
      end
    end
  end
end

private

def sulfurus_item(item)
  if item.quality > 0
    item.quality -= 1
  end
end

def backstage_item(item)
  item.quality += 1
end


class Item
  attr_accessor :name, :sell_in, :quality

  def initialize(name, sell_in, quality)
    @name = name
    @sell_in = sell_in
    @quality = quality
  end

  def to_s()
    "#{@name}, #{@sell_in}, #{@quality}"
  end
end
