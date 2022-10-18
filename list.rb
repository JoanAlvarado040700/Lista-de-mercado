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
        @items.delete_at(index)
    end    

    def check_item(index)
        @items[index].checked = true
    end
    
    def remove_all
        puts "Desea eliminar todos los items? s/n"
        delete = gets.chomp
        if delete != "s"
            puts "Sigamos con nuestra lista"
        else 
            @items.clear
        end
    end

    def show_all
        if @items.length == 0
            puts "No hay ningun articulo en tu lista!"
        else
            @items.each_index do |index|
                puts index.to_s + " - "+ @items[index].to_s
            end
        end
    end

    
end