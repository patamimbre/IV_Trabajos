require 'sinatra'

get '/' do
  "Hola, accede a /video para ver el ejemplo.
  \nSi quieres subir un archivo (PUT) hazlo mediante \n
  curl -v --location --upload-file file.txt http://localhost:4567/upload/"
end

get '/video' do
  File.read(File.join('.','index.html'))
end

put '/upload/:id' do
    File.open(params[:id],'w+') do |file|
      file.write(request.body.read)
    end
end
