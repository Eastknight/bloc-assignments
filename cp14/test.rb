class ArgumentEchoer
  def echo_argument(argument)
    p "You just inputted a value: " + argument.to_s
  end
end

instance = ArgumentEchoer.new
instance.echo_argument(5)
instance.echo_argument("s")
instance.echo_argument([1, 2])