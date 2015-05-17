require 'jekyll/ap_style_time'
require 'minitest/autorun'

describe Jekyll::APStyleTime::Filter do

  let(:filter) { Object.new.extend(Jekyll::APStyleTime::Filter) }

  describe 'when displaying date' do

    it 'displays January correctly' do
      new_date = filter.ap_date('2015-01-10')
      assert_equal 'Jan. 10, 2015', new_date
    end

    it 'displays February correctly' do
      new_date = filter.ap_date('2015-02-10')
      assert_equal 'Feb. 10, 2015', new_date
    end

    it 'displays March correctly' do
      new_date = filter.ap_date('2015-03-10')
      assert_equal 'March 10, 2015', new_date
    end

    it 'displays April correctly' do
      new_date = filter.ap_date('2015-04-10')
      assert_equal 'April 10, 2015', new_date
    end

    it 'displays May correctly' do
      new_date = filter.ap_date('2015-05-10')
      assert_equal 'May 10, 2015', new_date
    end

    it 'displays June correctly' do
      new_date = filter.ap_date('2015-06-10')
      assert_equal 'June 10, 2015', new_date
    end

    it 'displays July correctly' do
      new_date = filter.ap_date('2015-07-10')
      assert_equal 'July 10, 2015', new_date
    end

    it 'displays August correctly' do
      new_date = filter.ap_date('2015-08-10')
      assert_equal 'Aug. 10, 2015', new_date
    end

    it 'displays September correctly' do
      new_date = filter.ap_date('2015-09-10')
      assert_equal 'Sept. 10, 2015', new_date
    end

    it 'displays October correctly' do
      new_date = filter.ap_date('2015-10-10')
      assert_equal 'Oct. 10, 2015', new_date
    end

    it 'displays November correctly' do
      new_date = filter.ap_date('2015-11-10')
      assert_equal 'Nov. 10, 2015', new_date
    end

    it 'displays December correctly' do
      new_date = filter.ap_date('2015-12-10')
      assert_equal 'Dec. 10, 2015', new_date
    end

    it 'omits leading zeros on day' do
      new_date = filter.ap_date('2015-01-01')
      assert_equal 'Jan. 1, 2015', new_date
    end

  end

  describe 'when displaying time' do

    it 'displays noon correctly' do
      new_date = filter.ap_time('2015-01-10 12:00:00 -600')
      assert_equal 'noon Jan. 10, 2015', new_date
    end

    it 'displays midnight correctly' do
      new_date = filter.ap_time('2015-01-10 00:00:00 -600')
      assert_equal 'midnight Jan. 10, 2015', new_date
    end

    it 'displays non-noon and non-midnight correctly' do
      new_date = filter.ap_time('2015-01-10 14:23:00 -600')
      assert_equal '2:23 p.m. Jan. 10, 2015', new_date
    end

    it 'omits minutes if zero' do
      new_date = filter.ap_time('2015-01-10 14:00:00 -600')
      assert_equal '2 p.m. Jan. 10, 2015', new_date
    end

  end
end
