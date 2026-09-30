-- 3.1) Most Frequent Opponent
SELECT
    COUNT(game_id) AS total_games_played,
    CASE
        WHEN magnus_color = 'white' THEN b_user_names.real_name
        ELSE w_user_names.real_name
    END AS opponent_real_name
FROM
    magnus_games
    LEFT JOIN user_names AS w_user_names ON magnus_games.white_username = w_user_names.user_name
    LEFT JOIN user_names AS b_user_names ON magnus_games.black_username = b_user_names.user_name
WHERE
    w_user_names.user_name IS NOT NULL
    AND b_user_names.user_name IS NOT NULL
GROUP BY
    opponent_real_name
ORDER BY
    total_games_played DESC;

-- 3.2) Record vs. Most Frequent Opponent
-- Temporary table containing game results and opponent real names
WITH
    opponent_games AS (
        SELECT
            game_result,
            CASE
                WHEN magnus_color = 'white' THEN b_user_names.real_name
                ELSE w_user_names.real_name
            END AS opponent_real_name
        FROM
            magnus_games
            LEFT JOIN user_names AS w_user_names ON magnus_games.white_username = w_user_names.user_name
            LEFT JOIN user_names AS b_user_names ON magnus_games.black_username = b_user_names.user_name
    ),
    -- Find the most played opponent, excluding NULL values
    most_played_opponent AS (
        SELECT
            opponent_real_name
        FROM
            opponent_games
        WHERE
            opponent_real_name IS NOT NULL
        GROUP BY
            opponent_real_name
        ORDER BY
            COUNT(*) DESC
        LIMIT
            1
    )
    -- Calculate the record against the most played opponent
SELECT
    opponent_real_name,
    game_result,
    COUNT(*) AS total_games,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 2) AS result_percentage
FROM
    opponent_games
WHERE
    opponent_real_name = (
        SELECT
            opponent_real_name
        FROM
            most_played_opponent
    )
GROUP BY
    opponent_real_name,
    game_result
ORDER BY
    total_games DESC;