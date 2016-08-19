require 'test_helper'

class SchoolTest < ActiveSupport::TestCase
  test "searching schools" do
    test_data = [
      {name: "My school", street: "1234 Test", country: "Uganda", search: []},

      # test case-insensitive
      {name: "Other school", street: "5678 Test", country: "Spain", search: ["other"]},

      # test second-word search and out-of-order word search
      {name: "Really wicked cool school", street: "1938 Test", country: "England", search: ["wicked", "cool wicked really"]}
    ]


    test_data.each do |test_datum|
      a = Address.create street: test_datum[:street], country: test_datum[:country]
      test_datum[:id] = School.create name: test_datum[:name], address: a
    end

    test_data.each do |test_datum|
      test_datum[:search].each do |search_term|
        result = School.search search_term
        assert_not_nil result, "searching for #{search_term} turned up no results in #{School.all.map { |school| school[:name]}}"
        assert_equal result[:name], test_datum[:name]
      end
    end

  end
end
