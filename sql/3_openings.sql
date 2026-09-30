-- 4) Identify Magnus' Main Opening Repertoire
SELECT
    magnus_games.eco,
    eco_codes.eco_name AS opening_name,
    COUNT(magnus_games.eco) AS total_times_played,
    --Count of wins and win rate
    COUNT(
        CASE
            WHEN game_result = 'won' THEN 1
        END
    ) AS wins,
    ROUND(
        COUNT(
            CASE
                WHEN game_result = 'won' THEN 1
            END
        ) * 100.0 / COUNT(*),
        2
    ) AS win_rate
FROM
    magnus_games
    -- Join to get the opening names
    JOIN eco_codes ON magnus_games.eco = eco_codes.eco
GROUP BY
    magnus_games.eco,
    eco_codes.eco_name
ORDER BY
    total_times_played DESC
    -- To see the top 5
LIMIT
    5;