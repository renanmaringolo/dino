require 'sequel'

class Sqlite3Adapter
  def initialize
    @database = Sequel.sqlite('./session_7/database/data/sqlite/dino.db')
    populate_database
  end

  def list_users
    @database['SELECT * FROM users'].map { |row| row[:name] }
  end

  private

  def populate_database
    cmd = <<SQL
CREATE TABLE IF NOT EXISTS users (
id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
name TEXT NOT NULL,
cpf TEXT NOT NULL,
UNIQUE(cpf)
);
INSERT OR IGNORE INTO users (cpf, name) VALUES ('123', 'John');
INSERT OR IGNORE INTO users (cpf, name) VALUES ('456', 'Jessie');
SQL
    @database.run(cmd)
  end
end
