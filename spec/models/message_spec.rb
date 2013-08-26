require 'spec_helper'
require "active_attr/rspec"

describe Message do
  it do
    should have_attribute(:name)
    should have_attribute(:email)
    should have_attribute(:content)
  end
end

