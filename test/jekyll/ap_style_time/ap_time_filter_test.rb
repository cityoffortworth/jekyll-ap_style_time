require 'jekyll/ap_style_time'
require 'minitest/autorun'

describe Jekyll::APStyleTime::APTimeFilter do

  let(:ap_time_filter) { Object.new.extend(Jekyll::APStyleTime::APTimeFilter) }

  it 'displays January correctly' do
    new_date = ap_time_filter.ap_time('2015-01-10')
    assert new_date.end_with? 'Jan. 10, 2015'
  end

  it 'displays noon correctly' do
    new_date = ap_time_filter.ap_time('2015-01-10 12:00:00 -600')
    assert_equal 'noon Jan. 10, 2015', new_date
  end

  it 'displays midnight correctly' do
    new_date = ap_time_filter.ap_time('2015-01-10 00:00:00 -600')
    assert_equal 'midnight Jan. 10, 2015', new_date
  end

  it 'displays non-noon and non-midnight correctly' do
    new_date = ap_time_filter.ap_time('2015-01-10 14:23:00 -600')
    assert_equal '2:23 p.m. Jan. 10, 2015', new_date
  end

end
