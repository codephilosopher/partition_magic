module PartitionMagic
  def partition_even_odd (&block)
    even = []
    odd = []
    each do |n|
      result = block.call(n)
      if result == true
        even << n
      else
        odd << n
      end
    end
    [even, odd]
  end
end