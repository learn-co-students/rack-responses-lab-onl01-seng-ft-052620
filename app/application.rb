class Application
    def call(env)
        resp = Rack::Response.new
        
        t = Time.now.hour + Time.now.min.to_f/100
        if t > 12 
            resp.write "Good Afternoon!" 
        else
            resp.write "Good Morning!"
        end

        resp.finish
    end
end