class WaitGroup
  @io = Channel(Nil).new
  
  @count = Atomic(Int32).new(0)
  @done = Atomic(Int32).new(0)

  def add(n : Int = 1) : Nil
    @count.add(n)
  end

  def done(n : Int = 1) : Nil
    @done.add(n)

    if @done == @count
      @io.send(nil)
    end
  end

  def wait
    @io.receive
  end
end
