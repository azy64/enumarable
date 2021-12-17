require_relative 'my_enumerable'

class MyList
  include MyEnumerable
  def initialize(*list)
    @list = list
  end

  def each()
    i = 0
    while i < @list.length
      yield @list[i]
      # puts(@list[i])
      i += 1
    end
  end
end

l = MyList.new(2, 3, 4)
puts l.inspect
puts(l.all? { |e| e < 5 })
puts(l.all? { |e| e > 5 })
puts(l.filter { |e| e&.even? })
