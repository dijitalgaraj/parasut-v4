module Her
  module Model
    module Pagination

      def page(page)
        Kaminari.paginate_array(self).page(page)
      end
      
    end
  end
end
