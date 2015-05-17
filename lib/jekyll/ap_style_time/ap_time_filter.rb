require 'jekyll'

module Jekyll
  module APStyleTime
    module APTimeFilter

      def ap_time(input)
        date = DateTime.parse(input)

        month = "#{date.strftime('%b')}."
        case date.month
        when 4, 5, 6, 7
          month = date.strftime('%B')
        when 9
          month = 'Sept.'
        end

        day = date.strftime('%e').strip
        year = date.strftime('%Y')
        date_str = "#{month} #{day}, #{year}"

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

    end
  end
end

Liquid::Template.register_filter(Jekyll::APStyleTime::APTimeFilter)
