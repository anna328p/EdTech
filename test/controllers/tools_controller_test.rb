require 'test_helper'

class ToolsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tool = tools(:one)
  end

  test "should get index" do
    get tools_url
    assert_response :success
  end

  test "should get new" do
    get new_tool_url
    assert_response :success
  end

  test "should create tool" do
    assert_difference('Tool.count') do
      post tools_url, params: { tool: { citizenship: @tool.citizenship, collaboration: @tool.collaboration, communication: @tool.communication, computational_thinker: @tool.computational_thinker, creative_communicator: @tool.creative_communicator, creativity: @tool.creativity, critical_thinking: @tool.critical_thinking, description: @tool.description, digital_citizen: @tool.digital_citizen, empowered_learner: @tool.empowered_learner, global_collaborator: @tool.global_collaborator, grade_high: @tool.grade_high, grade_low: @tool.grade_low, innovative_designer: @tool.innovative_designer, knowledge_constructor: @tool.knowledge_constructor, name: @tool.name, picture_url: @tool.picture_url, platform: @tool.platform, price: @tool.price } }
    end

    assert_redirected_to tool_url(Tool.last)
  end

  test "should show tool" do
    get tool_url(@tool)
    assert_response :success
  end

  test "should get edit" do
    get edit_tool_url(@tool)
    assert_response :success
  end

  test "should update tool" do
    patch tool_url(@tool), params: { tool: { citizenship: @tool.citizenship, collaboration: @tool.collaboration, communication: @tool.communication, computational_thinker: @tool.computational_thinker, creative_communicator: @tool.creative_communicator, creativity: @tool.creativity, critical_thinking: @tool.critical_thinking, description: @tool.description, digital_citizen: @tool.digital_citizen, empowered_learner: @tool.empowered_learner, global_collaborator: @tool.global_collaborator, grade_high: @tool.grade_high, grade_low: @tool.grade_low, innovative_designer: @tool.innovative_designer, knowledge_constructor: @tool.knowledge_constructor, name: @tool.name, picture_url: @tool.picture_url, platform: @tool.platform, price: @tool.price } }
    assert_redirected_to tool_url(@tool)
  end

  test "should destroy tool" do
    assert_difference('Tool.count', -1) do
      delete tool_url(@tool)
    end

    assert_redirected_to tools_url
  end
end
