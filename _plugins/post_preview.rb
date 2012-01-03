module Jekyll

  class Post
    alias orig_to_liquid to_liquid
    def to_liquid
      h = orig_to_liquid
      h['preview'] = self.preview
      h
    end

    def preview
      self.content.split("\n")[0]
    end
  end

end
