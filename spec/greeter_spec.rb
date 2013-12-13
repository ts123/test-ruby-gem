# -*- coding: utf-8 -*-
require 'spec_helper'

describe Greeter do
    it 'should have a version number' do
        Greeter::VERSION.should_not be_nil
    end
end

describe Greeter::Greeter do
    before do
        @greeter=Greeter::Greeter.new
    end

    [
     [00, 00, 00, 'こんばんは'],
     [00, 00, 01, 'こんばんは'],
     [04, 59, 59, 'こんばんは'],
     [05, 00, 00, 'おはよう'],
     [11, 59, 59, 'おはよう'],
     [12, 00, 00, 'こんにちは'],
     [17, 59, 59, 'こんにちは'],
     [18, 00, 00, 'こんばんは'],
     [23, 59, 59, 'こんばんは'],
     [24, 00, 00, 'こんばんは'],
     # [99, 59, 59, 'こんばんは'],
    ].each do | h, m, s, expect | 
        specify "at #{Time.new(2000, 1, 1, h, m, s)} greet #{expect}" do
            Time.stub(:now).and_return(Time.new(2000, 1, 1, h, m, s))
            @greeter.greet().should eq expect
        end
    end
end

