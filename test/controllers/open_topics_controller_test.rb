require 'test_helper'

class OpenTopicsControllerTest < ActionController::TestCase
  setup do
    @open_topic = open_topics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:open_topics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create open_topic" do
    assert_difference('OpenTopic.count') do
      post :create, open_topic: { affects_version: @open_topic.affects_version, category: @open_topic.category, component: @open_topic.component, costmodel: @open_topic.costmodel, description: @open_topic.description, in_sprint: @open_topic.in_sprint, issue_ticket: @open_topic.issue_ticket, notes: @open_topic.notes, number: @open_topic.number, option: @open_topic.option, prio: @open_topic.prio, responsible: @open_topic.responsible, shortlist: @open_topic.shortlist, state: @open_topic.state, summary: @open_topic.summary, ticket_text: @open_topic.ticket_text }
    end

    assert_redirected_to open_topic_path(assigns(:open_topic))
  end

  test "should show open_topic" do
    get :show, id: @open_topic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @open_topic
    assert_response :success
  end

  test "should update open_topic" do
    patch :update, id: @open_topic, open_topic: { affects_version: @open_topic.affects_version, category: @open_topic.category, component: @open_topic.component, costmodel: @open_topic.costmodel, description: @open_topic.description, in_sprint: @open_topic.in_sprint, issue_ticket: @open_topic.issue_ticket, notes: @open_topic.notes, number: @open_topic.number, option: @open_topic.option, prio: @open_topic.prio, responsible: @open_topic.responsible, shortlist: @open_topic.shortlist, state: @open_topic.state, summary: @open_topic.summary, ticket_text: @open_topic.ticket_text }
    assert_redirected_to open_topic_path(assigns(:open_topic))
  end

  test "should destroy open_topic" do
    assert_difference('OpenTopic.count', -1) do
      delete :destroy, id: @open_topic
    end

    assert_redirected_to open_topics_path
  end
end
