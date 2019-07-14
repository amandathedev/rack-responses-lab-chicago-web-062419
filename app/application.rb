# https://stackoverflow.com/questions/6828294/how-to-check-given-time-is-after-3pm-or-not-in-rails

class Application
  def call(env)
    resp = Rack::Response.new

    current_time = Time.now
    if current_time.hour <= 12
      resp.write "Good Morning"
    elsif resp.write "Good Afternoon"
    end

    resp.finish
  end
end
