require 'test_helper'

class AjaxMailerTest < ActionMailer::TestCase
  test "welcome" do
    mail = AjaxMailer.welcome
    assert_equal "Welcome", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "sign_up" do
    mail = AjaxMailer.sign_up
    assert_equal "Sign up", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
