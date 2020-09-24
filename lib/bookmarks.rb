require 'pg'

class Bookmarks

    def self.all
     connection = PG.connect(dbname: 'bookmark_manager')
     
    results = connection.exec("SELECT * FROM bookmarks")
     results.map do |bookmark|
        bookmark['url'] 
     end
    end

end