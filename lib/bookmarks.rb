require 'pg'

class Bookmarks

    def self.all
     #connection = PG.connect(dbname: 'bookmark-manager')
     
    results = set_environment.exec("SELECT * FROM bookmarks")
     results.map do |bookmark|
        bookmark['url'] 
     end
    end

    def self.set_environment
        if   ENV['ENVIRONMENT'] == "test"
            PG.connect(dbname: 'bookmark_manager_test')
        else
            PG.connect(dbname: 'bookmark_manager')
        end    
    end

    def self.add(url)
      set_environment.exec("INSERT INTO bookmarks (url) VALUES ('#{url}')")
    end
end