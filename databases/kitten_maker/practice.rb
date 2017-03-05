require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("kittens_practice.db")
db.results_as_hash = true

create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS kittens(
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		age INT
	)
SQL

db.execute(create_table_cmd)

db.execute("INSERT INTO kittens (name, age) VALUES ('Bob', 10)")
kittens = db.execute('SELECT * FROM kittens')
puts kittens.class
p kittens


kittens.each |kitten|
	puts "#{kitten['name'] is #{kitten['age']}"
end

def create_kitten(db, name, age)
	db.execute("INSERT INTO kittens (name, age) VALUES (?, ?)", [name, age])
end