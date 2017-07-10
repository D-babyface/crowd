require 'test_helper'

class MlbPlayeRsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mlb_player = mlb_players(:one)
  end

  test "should get index" do
    get mlb_players_index_url
    assert_response :success
  end

  test "should get new" do
    get new_mlb_player_url
    assert_response :success
  end

  test "should create mlb_player" do
    assert_difference('MlbPlayers.count') do
      post mlb_players_index_url, params: { mlb_player: { average_or_era: @mlb_player.average_or_era, name: @mlb_player.name, number: @mlb_player.number, postition: @mlb_player.postition, team: @mlb_player.team, years_played: @mlb_player.years_played } }
    end

    assert_redirected_to mlb_player_url(MlbPlayers.last)
  end

  test "should show mlb_player" do
    get mlb_player_url(@mlb_player)
    assert_response :success
  end

  test "should get edit" do
    get edit_mlb_player_url(@mlb_player)
    assert_response :success
  end

  test "should update mlb_player" do
    patch mlb_player_url(@mlb_player), params: { mlb_player: { average_or_era: @mlb_player.average_or_era, name: @mlb_player.name, number: @mlb_player.number, postition: @mlb_player.postition, team: @mlb_player.team, years_played: @mlb_player.years_played } }
    assert_redirected_to mlb_player_url(@mlb_player)
  end

  test "should destroy mlb_player" do
    assert_difference('MlbPlayers.count', -1) do
      delete mlb_player_url(@mlb_player)
    end

    assert_redirected_to mlb_players_index_url
  end
end
