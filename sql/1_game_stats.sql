-- 1.1) Total Games Played & Win/Loss/Draw Percentages
SELECT
    game_result,
    count(game_result) AS total_results,
    -- Calculate percentages
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 2) AS pct_of_total,
    -- Calculate total games played
    -- Window function to stop collapsing the count into a single row
    SUM(COUNT(*)) OVER () AS total_games_played
FROM
    magnus_games
GROUP BY
    game_result
ORDER BY
    total_results DESC;

-- 1.2) Win/Loss/Draw by Colour
SELECT
    magnus_color,
    game_result,
    COUNT(*) AS total_results,
    SUM(COUNT(*)) OVER (
        PARTITION BY
            magnus_color
    ) AS total_games_as_colour,
    -- Win/Loss/Draw percentage by colour
    ROUND(
        COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (
            PARTITION BY
                magnus_color
        ),
        2
    ) AS pct_of_colour,
    -- Percentage of games played as colour
    ROUND(
        SUM(COUNT(*)) OVER (
            PARTITION BY
                magnus_color
        ) * 100.0 / SUM(COUNT(*)) OVER (),
        2
    ) AS pct_games_as_colour
FROM
    magnus_games
GROUP BY
    magnus_color,
    game_result
ORDER BY
    magnus_color,
    total_results DESC;