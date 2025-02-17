class Museum

  attr_reader :name, :exhibits
  def initialize(name)
    @name = name
    @exhibits = []
  end

  def add_exhibit(exhibit_name)
    @exhibits << exhibit_name
  end

  def recommend_exhibits(patron)
    @exhibits.find_all {|exhibit|
      exhibit.include?(patron.interests)}
    end
  end
