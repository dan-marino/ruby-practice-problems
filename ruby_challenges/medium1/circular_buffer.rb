require 'pry'

class CircularBuffer
  attr_reader :buffer, :buff_size

  class BufferEmptyException < StandardError; end
  class BufferFullException < StandardError; end

  def initialize(buff_size)
    @buff_size = buff_size
    clear
  end

  def read
    raise BufferEmptyException if all_empty?
    sort_buffer!
    @buffer.first.shift
  end

  def write(input)
    raise BufferFullException if all_full?
    sort_buffer!
    @buffer.last << input unless input.nil?
  end

  def write!(input)
    return if input.nil?
    if all_full? then read; end
    write(input)
  end

  def sort_buffer!
    @buffer = buffer.reject(&:empty?) + buffer.select(&:empty?)
  end

  def clear
    @buffer = []
    buff_size.times { @buffer << Array.new }
  end

  def all_empty?
    @buffer.all?(&:empty?)
  end

  def all_full?
    @buffer.none?(&:empty?)
  end
  
end