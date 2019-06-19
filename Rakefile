require_relative 'config/environment'
require_relative 'models/pokeball.rb'
require_relative 'models/pokemon.rb'
require_relative 'models/user.rb'
require_relative 'models/battle.rb'
require_relative 'lib/cli.rb'
require 'sinatra/activerecord/rake'
require 'tty-prompt'

desc 'starts a console'
task :console do
	Pry.start
end

desc 'runs CLI'
task :cli do
	cli = CommandLineInterface.new
	cli.main_menu
end

desc 'Tests battle interface'
task :battle do
	u1 = User.all.first
	u2 = User.all.last
	Battle.do_battle(u1, u2)
end

desc "Rewrites abridged _pokedex.json as ./db/seeds.json "
task :format_json do
	JsonFormatter.new
end

desc "tty prompt test"
task :tty do
	prompt = TTY::Prompt.new 
	user = User.all.last 
	Pry.start
end