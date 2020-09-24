require 'pg'

class Bookmarks
    attr_reader :title, :url, :id

    def initialize(title, url, id)
        @title = title
        @url = url
        @id = id
    end

    def self.all

         results = set_environment.exec("SELECT * FROM bookmarks")
         results.map do |bookmark|
             Bookmarks.new(bookmark['title'], bookmark['url'], bookmark['id'])
        #bookmark['url'] #Bookmark.new(title, url)
         end
    end
    


    def self.set_environment
        if   ENV['ENVIRONMENT'] == "test"
            PG.connect(dbname: 'bookmark_manager_test')
        else
            PG.connect(dbname: 'bookmark-manager')
        end    
    end

    def self.add(url, title)
      set_environment.exec("INSERT INTO bookmarks (url, title) VALUES ('#{url}', '#{title}')")
    end
end