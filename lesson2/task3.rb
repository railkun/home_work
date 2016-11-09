def each_with_object(type)
  array = [1, 2, 3, 4]
  array.each do |number|
    yield number, type
  end
  type
end
