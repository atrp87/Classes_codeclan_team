class CodeClan

  attr_reader :name, :cohort, :talk, :fave
  attr_writer :name, :cohort, :talk, :fave

  def initialize(name, cohort, talk, fave)
    @name = name
    @cohort = cohort
    @talk = talk
    @fave = fave
  end



end
