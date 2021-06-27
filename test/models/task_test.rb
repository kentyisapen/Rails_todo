require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  def setup
    @task = Task.new(title:"test",content:"testtest")
    @invalid_task = Task.new(title:"   ",content:"    ")
  end
  
  test "title and content should be valid" do
    assert @task.valid?
    assert_not @invalid_task.valid?
  end
  
end
