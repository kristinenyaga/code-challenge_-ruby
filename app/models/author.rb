class Author
  attr_reader :name


  def initialize(name)
    @name = name
  
  end

  def articles
    Article.all.filter do |article|
      article.author == self
    end
  end

  def magazines
    result=articles.map do |article|
      article.magazine
    end
    result.uniq

  end

 def add_article(magazine, title)
  Article.new(self,magazine,title)
 end
 
 def topic_areas
   returnedArticles=Article.all.filter do |article|
    article.author == self
   end
   result=returnedArticles.map do |article|
    article.magazine.category
   end
   result.uniq
 end

end
