require 'sqlite3'

def number_of_rows(db, table_name)
  # TODO: count number of rows in table table_name
  results = db.execute("SELECT COUNT(*) FROM #{table_name}").flatten.first
end

def sorted_artists(db)
  # TODO: return array of artists' names sorted alphabetically
  results = db.execute("SELECT name FROM artists ORDER BY name").flatten
end

def love_tracks(db)
  # TODO: return array of love songs sorted alphabetically
  results = db.execute("SELECT name FROM tracks WHERE name LIKE '%love%' ORDER BY name").flatten
end

def long_tracks(db, min_length)
  # TODO: return an array of tracks verifying: duration > min_length (minutes) sorted by length (ascending)
  results = db.execute("SELECT name FROM tracks
    WHERE milliseconds > #{min_length} * 60000
    ORDER BY milliseconds ASC").flatten
end
