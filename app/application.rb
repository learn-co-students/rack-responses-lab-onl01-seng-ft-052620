
class Application 
    def call(env)
        now = Time.now.hour 
        resp = Rack::Response.new
        if now > 12
            resp.write "Good Afternoon!"
        else 
            resp.write "Good Morning!"
        end 
        resp.finish 
    end 
end 