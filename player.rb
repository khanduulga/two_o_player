
class Player
  attr_accessor :lives, :id

  def  initialize(id)
    @id = id
    @lives = 3
  end

  def to_s
    id
  end

end
