require 'rails_helper'

describe Lesson do
  it { should validate_presence_of :name }

  it { should validate_uniqueness_of :name }

  it { should validate_presence_of :lesson_number }

  it { should validate_uniqueness_of :lesson_number }
end
