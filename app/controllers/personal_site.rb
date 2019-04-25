require "rack"

class PersonalSite

  def self.call(env)
    case env["PATH_INFO"]
    when '/' then index
    else
      error
    end
  end

  def self.index
    #this is the HTTP response status code, response headers and body
    ['200', {'Content_Type' => 'text/html'}, [File.read('./app/views/index.html')]]
  end

  def self.error
    ['404', {'Content_Type' => 'text/html'}, [File.read('./app/views/error.html')]]
  end
end
