# frozen_string_literal: true

# module
module MyEnumerable
  def all?
    bool = true
    each { |elm| bool = false unless yield elm }
    bool
  end

  def any?
    bool = false
    each { |elm| bool = true if yield elm }
    bool
  end

  def filter
    filtered_arr = []
    each { |elm| filtered_arr.push(n) if yield elm }
    filtered_arr
  end
end
