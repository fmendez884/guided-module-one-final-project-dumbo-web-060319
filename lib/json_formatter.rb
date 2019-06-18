require 'json'

class JsonFormatter
	def initialize(file_to_read = '_pokedex.json', file_to_write = './db/seeds.json')
		json = JSON.load File.open file_to_read
		
		pokedex = json.select {|j| j['id'] < 152}
		.each {|j| j['type'] = j['type'].first}
		.each {|j| j['element_type'] = j.delete('type')}
		.each {|j| j['name'] = j['name']['english']}
		.each {|j| j.delete('base')}

		File.open(file_to_write, 'w') do |f|
			f.write(@pokedex.to_json)
		end
	end

end