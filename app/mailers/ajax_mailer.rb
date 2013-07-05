class AjaxMailer < ActionMailer::Base
  default from: "jon@dodec.co.uk"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.ajax_mailer.welcome.subject
  #
  def welcome
    @greeting = "Hi"

    mail to: "jon@dodec.co.uk"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.ajax_mailer.sign_up.subject
  #
  def sign_up
    @greeting = "Hi"

    mail to: "jon@dodec.co.uk"
  end
end
