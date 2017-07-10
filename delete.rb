# Write a function that, given two strings:
# finds the minimum delete distance between them, i.e. the number of characters that need to be removed from between them to make them the same string
# returns the sum of the ASCII codes of the characters that would be removed

class Delete
  attr_reader :string1, :string2, :largest_common_string

  def initialize(string1, string2)
    @string1 = take_out_spaces(string1)
    @string2 = take_out_spaces(string2)
    @largest_common_string = best_match(string1,string2)
  end

  def self.distance(string1, string2)
    new(string1, string2)
    [distance, result]
  end

  def result
  end

  def distance
  end

  def letters_left(string, match)
  end

  def find_common_string(compare, string)
    result = []
    compare.chars.each_with_index do |letter, index|
      string.chars.each_with_index do |letter_two, index_two|
        if letter == letter_two && (result[-1] == nil || result[-1] < index_two )
          result << index_two 
          break
        end
      end
    end

    result.map { |index| string[index] }.join
  end

  def best_match(string1, string2)
    result1 = find_common_string(string1, string2)
    result2 = find_common_string(string2, string1)
    [result1, result2].max { |indexes_array| indexes_array.length }
  end

  def take_out_spaces(string)
    string.tr(' ','')
  end

end