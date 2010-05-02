class Heroku::Command::Sendgrid < Heroku::Command::Base
  def index
    app  = extract_app
    vars = heroku.config_vars(app)
    display resource["/monthly_usage"].post(:api_user => vars["SENDGRID_USERNAME"],
                                            :api_key  => vars["SENDGRID_PASSWORD"])
  end

  private
  def resource
    @resource ||= RestClient::Resource.new("https://sendgrid-stats.heroku.com")
  end
end
