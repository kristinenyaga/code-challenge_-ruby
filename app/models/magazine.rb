class Magazine

  attr_accessor :name, :category

  @@all=[]
  def initialize(name, category)
    @name = name
    @category = category
    @@all << self

  end

  def self.all
    @@all
  end

  def contributors
    returnedArticles=Article.all.filter do |article|
      article.magazine == self
    end
    result=returnedArticles.map do |article|
      article.author
    end
    result.uniq
  
  end 

  def self.find_by_name(name)
    self.all.find do |magazine|
      magazine.name == name
    end
  end

  def article_titles
    returnedArticles=Article.all.filter do |article|
      article.magazine == self
    end
    returnedArticles.map do |article|
      article.title
    end
  end

  def contributing_authors
    returnedArticles=Article.all.filter do |article|
      article.magazine == self
    end

  end

 




end
