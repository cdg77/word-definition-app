require ('sinatra')
require ('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word')
require('./lib/definition')


get('/') do
  @word = Word.all()
  erb(:index)
end

get('/word') do
  @word = Word.all()
  erb(:word)
end

# post('/lemons') do
#   make = params.fetch('make')
#   model = params.fetch('model')
#   year = params.fetch('year')
#   vehicle = Vehicle.new(make, model, year)
#   vehicle.save()
#   erb(:success)
# end


post('/word') do
  definition  = params.fetch('definition')
  id_number   = params.fetch('id')
  @definition = Definition.new(:definition => definition)
  @definition.save()
  @word = Word.find(id_number.to_i)
  @word.add_definition(@definition)
  erb(:word)
end

get('/word/:id/') do
  @word = Word.find(params.fetch('id').to_i)
  erb(:word)
end


get('/word/new') do
  @words = Word.all()
  erb(:word_form)
end
