#!/usr/bin/env ruby

require_relative './PasswordDial'
inputs = File.read('./2025/day01/inputs.txt').split

@dial = PasswordDial.new

inputs.each { |input|
    @dial.move_dial(input)
    @dial.add_zero_count
}

puts "Day 1, Part 1: #{@dial.zero_count}"
