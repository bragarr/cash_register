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
            when "b" then menu.edit
            when "c" then menu.delete
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

        def edit
            begin
                @manager.show_all
                entries = @manager.get_all
                if entries.length > 0
                    print "Enter index number to Edit: "
                    index = gets.chomp.to_i
                    note = entries.fetch(index-1)
                    print "Note: "
                    text = gets.chomp
                    note.set_text(text)
                    @manager.store(note)
                    puts "Data updated".center(50, "*")
                end
            rescue Exception => e
                puts "Invalid value!".center(50, "*")
            end
        end

        def delete
            begin
                @manager.show_all
                entries = @manager.get_all
                if entries.length > 0
                    print "Enter index number to Delete: "
                    index = gets.chomp.to_i
                    note = entries.fetch(index-1)
                    @manager.delete(note)
                    puts "Data deleted".center(50, "*")
                end
            rescue Exception => e
                puts "Invalid value!".center(50, "*")
            end            
        end

    end

end