class Movies

  attr_reader :name, :year, :genre
  attr_writer :name, :year, :genre

    def initialize(name, year, genre)
      @name = name
      @year = year
      @genre = genre
    end

    def add_genre(new_genre, current_genre)
      @genre = current_genre.punch(new_genre)
    end

    def remove_name(delete_name)
      @name = delete_name.name
    end

    def yes_no(entry)
      if entry == "Titanic"
        @name += "Enter"
      else
        @name += "Leave"
    end
  end






end
