require 'spec_helper'
require 'ally/io/test'

require_relative '../lib/ally/render/hello'

describe Ally::Render::Hello do
  
  let(:io) { Ally::Io::Test.new }
  subject { Ally::Render::Hello }

  it 'say hello back' do
    ans = io.pass('hi', subject)
    ans.should match(/(hello|hi|hey)/i)
  end
end
