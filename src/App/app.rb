require "../controller/manager"

module App
    def self.run
        menu = Menu.new
        begin
            puts "Note Application".center(70, "-")
            puts "a) Add"
            puts "b) Edit"
            puts "c) Delete"
            puts "d) Show All"
            puts "q) Quit"
            print "Select: "
            choice = gets.chomp

            case choice
            when "a" then menu.add
            end

        end while choice != "q"
    end

    class Menu
        def initialize
            @manager = Manager.new
        end

        def add

        end

    end

end