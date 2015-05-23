require 'coveralls'
Coveralls.wear!
require 'spec_helper'

describe BillboardCharts do
  it 'item count is expected 100' do
    list = BillboardCharts.new.get_list
    expect(list.length).to be == 100
  end
end
