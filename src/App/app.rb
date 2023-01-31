require "./src/controller/manager"
require "./src/note"

module App
    def self.run
        menu = Menu.new
        begin
            puts "Note Application".center(70, "*")
            puts "a) Add"
            puts "b) Edit"
            puts "c) Delete"
            puts "d) Show All"
            puts "q) Quit"
            print "Select: "
            choice = gets.chomp

            case choice
            when "a" then menu.add
            when "d" then menu.show_all
            end

        end while choice != "q"
    end

    class Menu
        def initialize
            @manager = Manager.new
        end

        def add
            print "Note: "
            text =  gets.chomp
            note =  Note.new(text)
            @manager.store(note)
        end

        def show_all
            @manager.show_all
        end

    end

end