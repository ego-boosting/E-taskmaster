require "test_helper"

class Public::NotesControllerTest < ActionDispatch::IntegrationTest
  test "should get remember" do
    get public_notes_remember_url
    assert_response :success
  end

  test "should get complete" do
    get public_notes_complete_url
    assert_response :success
  end

  test "should get remember_index" do
    get public_notes_remember_index_url
    assert_response :success
  end

  test "should get complete_index" do
    get public_notes_complete_index_url
    assert_response :success
  end

  test "should get search" do
    get public_notes_search_url
    assert_response :success
  end

  test "should get edit" do
    get public_notes_edit_url
    assert_response :success
  end
end
