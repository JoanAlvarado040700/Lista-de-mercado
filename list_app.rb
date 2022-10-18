require "./list.rb"
require "./item.rb"

class ListApp 
    attr_writer :list

    def initialize
        @list = List.new
    end

    def run 
        print "Bienvenido a la lista de compra!"

        loop do
            puts " \na - Agregar un articulo"
            puts "r - Remover un articulo"
            puts "v - Mostrar todos los articulos"
            puts "m - Marcar articulo"
            puts "b - Borrar todos los articulos"
            puts "s - Salir de la lista"
        
            input = gets.chomp

            case input
             when "a"
                puts "Ingrese el articulo que planea agregar:" 
                item = gets.chomp
                @list.add_items(item)
                puts "--> #{item} agregado exitosamente \n"
                @list.show_all
                

             when "r"
                puts "Ingrese el articulo que desea borrar:" 
                index = gets.chomp
                item = @list.remove_items(index.to_i)
                40.times {print "*"}
                print "\n#{item.text} ha sido eliminado exitosamente!  \n"
                40.times { print "*"}
             when "m"
                puts "Cual es el articulo que desea marcar? "
                index = gets.chomp
                @list.check_item(index.to_i)
            
            when "v"
                @list.show_all
            when "b"
                @list.remove_all
            when "s"
                break
            else
                puts "Error, opcion no reconocida"
            end
            
        end
        puts "Gracias por usar nuestra aplicacion!!"
    end
end

list = ListApp.new

list.run
