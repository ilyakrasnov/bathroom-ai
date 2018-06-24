module RoomsHelper
  def occupied_class(occupied)
    occupied ? "red" : "green"
  end

  def occupied_message(occupied)
    occupied ? "Occupied" : "Free"
  end
end
