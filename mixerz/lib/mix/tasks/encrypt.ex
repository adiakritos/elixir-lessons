defmodule Mix.Tasks.Encrypt do
  use Mix.Task

  def run(args) do
    {opts, _, _} = OptionParser.parse(args, aliases: [t: :text], strict: [t: :string])
    IO.puts(Mixerz.Encryptor.encrypt(opts[:t]))
  end
end
