require('minitest/autorun')
require('minitest/reporters')
require_relative('../movies')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class Test_Movies < MiniTest::Test

    def test_name()
      test_new_name = Movies.new("Titanic", 1990, "Drama")
      assert_equal("Titanic", test_new_name.name)
    end

    def test_year()
      test_new_year = Movies.new("Titanic", 1990, "Drama")
      assert_equal(1990, test_new_year.year)
      end

    def test_genre()
      test_new_genre = Movies.new("Titanic", 1990, "Drama")
      assert_equal("Drama", test_new_genre.genre)
    end

    def test_new_movie()
      test_new_movie = Movies.new("Titanic", 1990, "Drama")
      test_new_movie.name = "Saving Private Ryan"
      assert_equal("Saving Private Ryan", test_new_movie.name)
    end

    def test_new_genre()
      test_new_genre = Movies.new("Titanic", 1990, "Drama")
      test_new_genre.genre = "Action"
      assert_equal("Action", test_new_genre.genre)
    end

    def test_remove_name
      test_remove_name = Movies.new("Titanic", 1990, "Drama")
      test_remove_name.name = "Saving Private Ryan"
      assert_equal("Saving Private Ryan", test_remove_name.name)
    end

    def test_entry()
      test_entry = Movies.new("Titanic", 1990, "Drama")
      test_entry.yes_no("Enter")
      assert_equal("Titanic", test_entry.name)
    end

end
