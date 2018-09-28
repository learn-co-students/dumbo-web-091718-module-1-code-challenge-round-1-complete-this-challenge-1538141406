class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find do |restaurant|
      restaurant.name == name
    end
  end

  def reviews
    Review.all.select {|review| review.restaurant.name == self.name}
  end

  def customers
    self.reviews.map {|review| review.customer.full_name}.uniq
  end

  def average_star_rating
    sum = 0
    self.reviews.each {|review| sum += review.rating}
    return sum / self.reviews.length
  end

  def longest_review
    self.reviews.sort_by {|review| review.content.length}[-1].content
  end

end
