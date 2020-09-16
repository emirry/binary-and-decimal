# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.
def binary_to_decimal(binary_array)
  decimal_value = 0
  exponent = 7

  binary_array.length.times do |value|
    decimal_value += binary_array[value] * 2 ** exponent
    exponent += -1
  end
  return decimal_value
end
# decimal_value = ((binary_array[7]) * (2**0)) + ((binary_array[6]) * (2**1) +(binary_array[5]) * (2**2)) + ((binary_array[4]) * (2**3)) + ((binary_array[3]) * (2**4)) + ((binary_array[2]) * (2**5)) + ((binary_array[1]) * (2**6)) + ((binary_array[0]) * (2**7))
#
# return decimal_value