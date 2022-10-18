require "./item.rb"


class List
    attr_writer :items

    def initialize()
        @items = Array.new()
    end

    def add_items(text)
        item = Item.new(text)
        @items.push(item)
    end

    def remove_items(index)
        @items.delete(index)
    end    

    def check(index)
        @items[index].check = true
    end
    
    def remove_all
        @items.clear
    end

    def show_all
        if @items.length == 0
            pust "No hay ningun articulo en tu lista!"
        else
            @items.each_index do |index|
                pust index.to_s + " - "+ @items[index].to_s
            end
        end
    end

    
end