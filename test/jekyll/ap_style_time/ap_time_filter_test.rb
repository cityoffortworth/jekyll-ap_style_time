require 'jekyll/ap_style_time'
require 'minitest/autorun'

describe Jekyll::APStyleTime::APTimeFilter do

  let(:ap_time_filter) { Object.new.extend(Jekyll::APStyleTime::APTimeFilter) }

  it 'does nothing' do
    new_date = ap_time_filter.ap_time('2015-01-01 00:00:00 -0600')
    assert_equal '2015-01-01 00:00:00 -0600', new_date
  end

end
