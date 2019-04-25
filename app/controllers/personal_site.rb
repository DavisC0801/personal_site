require "rack"

class PersonalSite
  def self.call(env)
    #this is the HTTP response status code, response headers and body
    ['200', {'Content_Type' => 'text/html'}, [File.read('./app/views/index.html')]]
  end
end
