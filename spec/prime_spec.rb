require_relative './spec_helper'
require_relative '../prime.rb'

describe "prime?" do
  it 'returns true for prime numbers' do
    expect(prime?(2)).to be(true)
    expect(prime?(3)).to be(true)
    expect(prime?(11)).to be(true)
    expect(prime?(105557)).to be(true)
  end

  it 'returns false for non-prime numbers' do
    expect(prime?(-1)).to be(false), "Be sure to account for negative numbers!"
    expect(prime?(0)).to be(false)
    expect(prime?(1)).to be(false)
    expect(prime?(4)).to be(false)
    expect(prime?(40)).to be(false)
    expect(prime?(1763)).to be(false)
    expect(prime?(101013)).to be(false)
  end
end

 def prime? n
  for d in 2..(n - 1)
   if (n % d) == 0
    return false
   end
  end

  true
 end

 def is_prime2 n
  foundDivider = false
   for d in 2..(n - 1)
    foundDivider = ((n % d) == 0) or foundDivider
   end
  not foundDivider
 end