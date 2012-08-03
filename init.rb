class Heroku::Command::Sendgrid < Heroku::Command::Base
  def index
    app  = app
    date = Hash.new

    args.each do |arg|
      key, value = arg.split("=")
      date[key] = value
    end

    vars = heroku.config_vars(app)
    display resource["/monthly_usage"].post(:api_user => vars["SENDGRID_USERNAME"],
                                            :api_key  => vars["SENDGRID_PASSWORD"],
                                            :year     => date["year"],
                                            :month    => date["month"])
  end

  private
  def resource
    @resource ||= RestClient::Resource.new("https://sendgrid-stats.heroku.com")
  end
end
