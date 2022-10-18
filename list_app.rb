require "./list.rb"
require "./item.rb"

class ListApp 
    attr_writer :list

    def initialize
        @list = List.new
    end
    def run 
        print "Bienvenido a la lista de compra!"
    end
end

list = ListApp.new

list.run
