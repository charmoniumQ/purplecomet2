require 'test_helper'

class SchoolTest < ActiveSupport::TestCase
  test "searching schools" do
    test_data = [
      {t: schools(:my_school), search: ["My School"]},

      # test case-insensitive
      {t: schools(:other_school), search: ["other"]},

      # test second-word search and out-of-order word search
      {t: schools(:cool_school), search: ["wicked", "cool wicked really"]}
    ]


    # test_data.each do |test_datum|
    #   a = Address.create street: test_datum[:street], country: test_datum[:country]
    #   test_datum[:id] = School.create name: test_datum[:name], address: a
    # end

    test_data.each do |test_datum|
      test_datum[:search].each do |search_term|
        result = School.search search_term
        assert_equal result[0][:name], test_datum[:t][:name]
      end
    end

  end
end
