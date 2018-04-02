require_relative './database/adapters/fs_adapter.rb'
require_relative './database/adapters/sqlite3_adapter.rb'
require_relative './dao/users_dao.rb'

## File system database
adapter = FSAdapter.new
dao = UsersDAO.new(adapter)
puts 'File system database: '
puts dao.list_users
puts '---------'

## Sqlite (relational) database
adapter = Sqlite3Adapter.new
dao = UsersDAO.new(adapter)
puts 'Sqlite database: '
puts dao.list_users
puts '---------'
