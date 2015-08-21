def append ary, n
    ary << n if n == 0
    ary.append(n-1) 
  end
  append [], 2 #=> [2,1,0]