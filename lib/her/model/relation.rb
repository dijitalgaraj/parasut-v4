module Her
  module Model
    class Relation

      def page(page)
        Kaminari.paginate_array(self).page(page)
      end
      
    end
  end
end
