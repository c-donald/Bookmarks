def setup_test_env
  y=PG.connect(dbname: 'bookmark_manager_test')
  y.exec("TRUNCATE bookmarks")
  y.exec("INSERT INTO bookmarks (url) VALUES ('www.google.com');")
  y.exec("INSERT INTO bookmarks (url) VALUES ('www.github.com');")
  y.exec("INSERT INTO bookmarks (url) VALUES ('www.facebook.com');")
end