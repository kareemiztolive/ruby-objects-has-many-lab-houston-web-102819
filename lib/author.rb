
class Author


    attr_accessor :name 
     
        def initialize(name)
        @name = name
        end
    
        
    
        def posts
            @results = []
            Post.all.each do |post| 
            if post.author == self
            @results.push(post)
            end
     end
        return @results  
        end
    
        def add_post(post)
            post.author= self
          end
    
          def add_post_by_title(title)
          post = Post.new(title)
          add_post(post)
    
          end
    
    
     def self.post_count
    Post.all.length
    
    end
          
    
    
    
    
    end