require "./spec_helper"

describe WaitGroup do
  it "base check" do
    wg = WaitGroup.new

    spawn do
      wg.add
      sleep(rand(0.1..3.0))
      wg.done
    end

    wg.wait
    true.should eq(true)
  end
end
