SELECT 
    REGION,
    COUNTRY,
    MARKET_TYPE,
    PROJECT_SCOPE,
    PROJECT_TYPE,
    COUNT(*) AS project_count
FROM (
    SELECT 
        'VCS' AS market_type,
        SCOPE AS project_scope,
        TYPE AS project_type,
        REGION,
        COUNTRY,
        TOTAL_CREDITS__ISSUED AS total_credits_issued,
        YEAR
    FROM VCS1
    UNION ALL
    SELECT 
        'GS' AS market_type,
        SCOPE AS project_scope,
        TYPE AS project_type,
        REGION,
        COUNTRY,
        TOTAL_CREDITS__ISSUED AS total_credits_issued,
        YEAR
    FROM GS
    UNION ALL
    SELECT 
        'ACR' AS market_type,
        SCOPE AS project_scope,
        TYPE AS project_type,
        REGION,
        COUNTRY,
        TOTAL_CREDITS__ISSUED AS total_credits_issued,
        YEAR
    FROM ACR
    UNION ALL
    SELECT 
        'CAR' AS market_type,
        SCOPE AS project_scope,
        TYPE AS project_type,
        REGION,
        COUNTRY,
        TOTAL_CREDITS__ISSUED AS total_credits_issued,
        YEAR
    FROM CAR
) AS combined_data
GROUP BY REGION, COUNTRY, MARKET_TYPE, PROJECT_SCOPE, PROJECT_TYPE
ORDER BY REGION, COUNTRY, MARKET_TYPE, project_count DESC;