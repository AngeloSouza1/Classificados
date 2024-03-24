require "test_helper"

class UserTest < ActiveSupport::TestCase

        test 'nome é obrigatório' do
          user = User.new(name:nil)
          user.save
          assert user.error[:name].any?
        end

        test 'email  é obrigatório e no formato valido' do
           user = User.new(email:nil)
           user.save
           assert user.error[:email].any?

           user = User.new(email: "invalido")
           user.save
           assert user.error[:email].any?

           user = User.new(email: "valido@exemplo.com")
           user.save
           refute user.error[:email].any?
        end

        test 'email é único' do
            user = User.create!(name:"DV", email: "vd@example.com", password: "secret", password_confirmation: "secret")

            other_user = User.create!(email: "vd@example.com")

            assert other_user.errors[:email].any?
        end


end