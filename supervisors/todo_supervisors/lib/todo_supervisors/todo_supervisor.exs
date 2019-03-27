defmodule TodoSupervisors.TodoSupervisor do

  use Supervisor

  def start_link do
    Supervisor.start_link(__MODULE__, [])
  end

  def init([]) do
    children = [
      worker(Todo),
      worker(Todo)
    ]

    supervise(children, strategy: :one_for_one)
  end

end
