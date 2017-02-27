
def create_table_cmd
	create_table_cmd = <<-SQL
		CREATE TABLE IF NOT EXISTS house_info(
			id INTEGER PRIMARY KEY,
			year_1 VARCHAR(255),
			year_2 VARCHAR(255),
			city_id INT,
			square_feet INT,
			FOREIGN KEY (city_id) REFERENCES city(id)
		);
	SQL
end
