class Person
  attr_accessor :partner, :name

  class PartnerError < StandardError
    def message
      "you must give the get_married method an argument of an instance of the person class!"
    end
  end

  def initialize(name)
    @name = name
  end

  def get_married(person)
    if partner.class != Person
      begin 
        raise PartnerError
      rescue PartnerError => error
        puts error.message
      end
    else
      self.partner = person
      person.partner = self
    end
  end

end

beyonce = Person.new("Beyonce")
beyonce.get_married("Jay-Z")
puts beyonce.name




