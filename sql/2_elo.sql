-- 2.1) Highest ELO Rating
SELECT
    -- Highest as white, highest as black, and highest overall
    MAX(
        CASE
            WHEN magnus_color = 'white' THEN white_elo
        END
    ) AS highest_white_elo,
    MAX(
        CASE
            WHEN magnus_color = 'black' THEN black_elo
        END
    ) AS highest_black_elo,
    GREATEST (
        MAX(
            CASE
                WHEN magnus_color = 'white' THEN white_elo
            END
        ),
        MAX(
            CASE
                WHEN magnus_color = 'black' THEN black_elo
            END
        )
    ) AS highest_elo
FROM
    magnus_games;

-- Average ELO Rating
SELECT
    ROUND(
        AVG(
            CASE
                WHEN magnus_color = 'white' THEN white_elo
                ELSE black_elo
            END
        ),
        2
    ) AS avg_elo
FROM
    magnus_games;

--2.2) Avg ELO Over Time
SELECT
    EXTRACT(
        YEAR
        FROM
            date_played
    ) AS year,
    EXTRACT(
        MONTH
        FROM
            date_played
    ) AS month,
    ROUND(
        AVG(
            CASE
                WHEN magnus_color = 'white' THEN white_elo
                ELSE black_elo
            END
        ),
        2
    ) AS avg_elo
FROM
    magnus_games
GROUP BY
    EXTRACT(
        YEAR
        FROM
            date_played
    ),
    EXTRACT(
        MONTH
        FROM
            date_played
    )
ORDER BY
    year,
    month;