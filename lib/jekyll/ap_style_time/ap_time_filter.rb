require 'jekyll'

module Jekyll
  module APStyleTime
    module APTimeFilter

      def ap_time(input)
        input
      end

    end
  end
end

Liquid::Template.register_filter(Jekyll::APStyleTime::APTimeFilter)
