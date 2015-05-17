require 'jekyll'

module Jekyll
  module APStyleTime
    module Filter

      def ap_date(input)
        date = DateTime.parse(input)
        format_as_ap_date(date)
      end

      def ap_time(input)
        date = DateTime.parse(input)
        date_str = format_as_ap_date(date)

        time = date.strftime('%l:%M').strip
        meridian = date.strftime('%p').gsub('AM', 'a.m.').gsub('PM', 'p.m.')

        if (date.hour == 0 && date.minute == 0)
          time_str = 'midnight'
        elsif (date.hour == 12 && date.minute == 0)
          time_str = 'noon'
        else
          time_str = "#{time} #{meridian}"
        end

        "#{time_str} #{date_str}"
      end

      private

      def format_as_ap_date(date)
        year = date.strftime('%Y')

        month = "#{date.strftime('%b')}."
        case date.month
        when 3, 4, 5, 6, 7
          month = date.strftime('%B')
        when 9
          month = 'Sept.'
        end

        day = date.strftime('%e').strip

        "#{month} #{day}, #{year}"
      end

    end
  end
end

Liquid::Template.register_filter(Jekyll::APStyleTime::Filter)
