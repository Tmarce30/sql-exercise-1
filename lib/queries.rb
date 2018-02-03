require 'sqlite3'

def number_of_rows(db, table_name)
  # TODO: count number of rows in table table_name
  results = db.execute("SELECT COUNT(*) FROM #{table_name}").flatten.first
end

def sorted_artists(db)
  # TODO: return array of artists' names sorted alphabetically
end

def love_tracks(db)
  # TODO: return array of love songs sorted alphabetically
end

def long_tracks(db, min_length)
  # TODO: return an array of tracks verifying: duration > min_length (minutes) sorted by length (ascending)
end