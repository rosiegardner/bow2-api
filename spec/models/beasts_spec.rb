require 'rails_helper'

describe Beast do
  it { should validate_presence_of :daemon }
  it { should validate_presence_of :breed }
  it { should validate_presence_of :name }
  it { should validate_presence_of :age }
  it { should validate_presence_of :desc }
  it { should validate_presence_of :strength }
  it { should validate_presence_of :weapon }
end