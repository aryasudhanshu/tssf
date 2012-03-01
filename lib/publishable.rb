module Publishable
  extend ActiveSupport::Concern
  # Class Methods
  module ClassMethods
    def published
      where(:published => true)
    end
    def unpublished
      where("published != ?", true)
    end
  end

  # Insatance Methods
  module InstanceMethods 
    def publish!
      published = true
      save
    end
    def unpublish!
      published = false
      save
    end
    def published?
      published ? true : false
    end
    def unpublished?
      not published?
    end
  end
end
