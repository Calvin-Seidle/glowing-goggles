require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "reply" do
    mail = UserMailer.reply
    assert_equal "Reply", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "admin" do
    mail = UserMailer.admin
    assert_equal "Admin", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
