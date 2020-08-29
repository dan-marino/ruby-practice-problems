# Modify this class so both flip_switch and the setter method switch= are private methods.

class Machine

  def start
    flip_switch(:on)
  end

  def stop
    flip_switch(:off)
  end

  def state
    switch
  end

  private

  attr_accessor :switch

  def flip_switch(desired_state)
    self.switch = desired_state
  end
end

circuit = Machine.new

circuit.start
p circuit.state

circuit.stop

p circuit.state
