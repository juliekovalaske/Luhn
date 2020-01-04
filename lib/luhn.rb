module Luhn
  def self.is_valid?(number)
    numbers = number.to_s.chars.map(&:to_i).reverse
  
      total = numbers.sum
    
      odd_total = numbers.values_at(* numbers.each_index.select {|n| n.odd?})
      numbers_greater_than_5 = odd_total.select do |elem|
        elem > 4
      end
      
      total += odd_total.sum
      total -= numbers_greater_than_5.count * 9
    
    return total % 10 == 0
  end
end

