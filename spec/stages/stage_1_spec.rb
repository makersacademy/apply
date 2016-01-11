require 'source/javascripts/stages/stage_1.rb'

describe Stages::Stage1 do
  subject(:stage1) { described_class.new }

  it { is_expected.to respond_to :display_code }
  it { is_expected.to respond_to :code }
  it { is_expected.to respond_to :instructions }
  it { is_expected.to respond_to :next_stage }

  it 'has a stage number of 1' do
    expect(stage1.stage_number).to eq 1
  end
end