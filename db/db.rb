require "pstore"

class Database

    def initialize
        @store = PStore.new("note.store")
    end

end