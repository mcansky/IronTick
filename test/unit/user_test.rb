require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert User.new.valid?
  end

  def test_should_have_a_login
    assert User.login.valid?
  end

  def test_should_have_a_firstname
    assert User.firstname.valid?
  end

  def test_should_have_a_lastname
    assert User.lastname.valid?
  end

  def test_should_have_an_email
    assert User.email.valid?
  end

  def test_should_have_a_phone_number
    assert User.phone.valid?
  end

  def test_should_belongs_to_company
    assert User.company.valid?
  end
end
