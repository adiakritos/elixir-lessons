defmodule Todo do
  use GenServer

  def start(initial_list) do
    {:ok, list} = GenServer.start(__MODULE__, initial_list)
    list
  end

  # public

  def add(list, todo) do
    GenServer.cast(list, {:add, todo})
  end

  def remove(list, todo) do
    GenServer.cast(list, {:remove, todo})
  end

  def view(list) do
    GenServer.call(list, :view)
  end

  # GenServer

  def handle_cast({:add, todo}, list) do
    {:noreply, [todo | list]}
  end

  def handle_cast({:remove, todo}, list) do
    {:noreply, List.delete(list, todo)}
  end

  def handle_call(:view, _from, list) do
    {:reply, list, list}
  end

end
