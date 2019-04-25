require "rack"

class PersonalSite

  def self.call(env)
    case env["PATH_INFO"]
    when '/' then index
    when '/about' then about
    when '/main.css' then css
    else
      error
    end
  end

  def self.index
    serve_page("index")
  end

  def self.error
    serve_page("error", 404)
  end

  def self.about
    serve_page("about")
  end

  def self.css
    serve_css("main")
  end

  def self.serve_page(path, code = 200)
    #this is the HTTP response status code, response headers and body
    [code, {'Content_Type' => 'text/html'}, [File.read("./app/views/#{path}.html")]]
  end

  def self.serve_css(path)
    [200, {'Content_Type' => 'text/html'}, [File.read("./app/public/#{path}.css")]]
  end

end
