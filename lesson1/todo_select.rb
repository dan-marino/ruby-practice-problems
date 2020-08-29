class Todo
  DONE_MARKER = 'X'
  UNDONE_MARKER = ' '

  attr_accessor :title, :description, :done

  def initialize(title, description='')
    @title = title
    @description = description
    @done = false
  end

  def done!
    self.done = true
  end

  def done?
    done
  end

  def undone!
    self.done = false
  end

  def to_s
    "[#{done? ? DONE_MARKER : UNDONE_MARKER}] #{title}"
  end
end

class TodoList
  attr_accessor :title

  def initialize(title)
    @title = title
    @todos = []
  end

  def add(task)
    err = "Can only add Todo objects"
    raise TypeError.new err if task.class != Todo
    @todos << task
  end

  def size
    @todos.size
  end

  def first
    @todos.first
  end

  def last
    @todos.last
  end

  def to_a
    @todos.map { |elm| elm.title }
  end

  def done?
    @todos.all? { |elm| elm.done? }
  end

  def item_at(num)
    @todos.fetch(num)
  end

  def mark_done_at(num)
    item_at(num).done!
  end

  def mark_undone_at(num)
    item_at(num).undone!
  end

  def done!
    @todos.each { |elm| elm.done! }
  end

  def shift
    @todos.shift
  end

  def pop
    @todos.pop
  end

  def remove_at(num)
    item_at(num)
    @todos.delete_at(num)
  end

  def to_s
    puts "# ---- Today's Todos ----"
    @todos.each do |elm|
      puts elm
    end
  end

  def each
    for elm in @todos
      yield(elm)
    end
    self
  end

  def select
    new_list = TodoList.new(title)
    for elm in @todos
      new_list.add(elm) if yield(elm)
    end
    new_list
  end
end

todo1 = Todo.new("Buy milk")
todo2 = Todo.new("Clean room")
todo3 = Todo.new("Go to gym")

list = TodoList.new("Today's Todos")
list.add(todo1)
list.add(todo2)
list.add(todo3)

todo1.done!

results = list.select { |todo| todo.done? }    # you need to implement this method

puts results.inspect
