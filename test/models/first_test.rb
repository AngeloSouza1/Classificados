require "test_helper"

  class FirstTest < ActiveSupport::TestCase
    test "é o primeiro teste" do
      variavel = "Angelo" # Corrigido para "variavel"
      assert_equal "Angelo", variavel
    end
  end
