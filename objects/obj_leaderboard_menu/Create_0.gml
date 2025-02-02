event_inherited();
draw_set_font(fnt_basic);
scoreCount = ((drawRect.height - 14) / string_height("Q")) - 1;
var _leaderboardName = "HIGHSCORES_ANTONBALL";

if (room == rm_menu_punchball)
    _leaderboardName = "HIGHSCORES_PUNCHBALL";

scores = [undefined, undefined, undefined];
scoreCallbacks = [steam_download_scores(_leaderboardName, 1, scoreCount), steam_download_scores_around_user(_leaderboardName, -floor((scoreCount - 1) / 2), floor((scoreCount - 1) / 2)), steam_download_friends_scores(_leaderboardName)];
loadFailed = array_contains(scoreCallbacks, -1);
currentScoreIndex = 0;
