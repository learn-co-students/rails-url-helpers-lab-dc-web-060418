class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def is_active
    if self.active == true
      "This student is currently active."
    else
      "This student is currently inactive."
    end
  end

  def toggle_active
    if self.active
      self.active = false
    else
      self.active = true
    end
    self.save
  end

end
