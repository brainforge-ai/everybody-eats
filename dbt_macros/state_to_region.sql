{% macro state_to_region(state) %}
CASE
    WHEN {{ state }} in ('WA', 'WASHINGTON', 'OR', 'OREGON', 'CA', 'CALIFORNIA', 'NV', 'NEVADA', 'ID', 'IDAHO', 'UT', 'UTAH', 'AZ', 'ARIZONA', 'MT', 'MONTANA', 'WY', 'WYOMING', 'CO', 'COLORADO', 'NM', 'NEW MEXICO', 'HI', 'HAWAII', 'AK', 'ALASKA') THEN 'West'
    WHEN {{ state }} in ('DE', 'DELAWARE', 'DC', 'DISTRICT OF COLUMBIA', 'FL', 'FLORIDA', 'GA', 'GEORGIA', 'MD', 'MARYLAND', 'NC', 'NORTH CAROLINA', 'SC', 'SOUTH CAROLINA', 'VA', 'VIRGINIA', 'WV', 'WEST VIRGINIA', 'AL', 'ALABAMA', 'KY', 'KENTUCKY', 'MS', 'MISSISSIPPI', 'TN', 'TENNESSEE', 'AR', 'ARKANSAS', 'LA', 'LOUISIANA', 'OK', 'OKLAHOMA', 'TX', 'TEXAS') THEN 'South'
    WHEN {{ state }} in ('IN', 'INDIANA', 'IL', 'ILLINOIS', 'MI', 'MICHIGAN', 'OH', 'OHIO', 'WI', 'WISCONSIN', 'IA', 'IOWA', 'KS', 'KANSAS', 'MN', 'MINNESOTA', 'MO', 'MISSOURI', 'NE', 'NEBRASKA', 'ND', 'NORTH DAKOTA', 'SD', 'SOUTH DAKOTA') THEN 'Midwest'
    WHEN {{ state }} in ('CT', 'CONNECTICUT', 'ME', 'MAINE', 'MA', 'MASSACHUSETTS', 'NH', 'NEW HAMPSHIRE', 'RI', 'RHODE ISLAND', 'VT', 'VERMONT', 'NJ', 'NEW JERSEY', 'NY', 'NEW YORK', 'PA', 'PENNSYLVANIA') THEN 'Northeast'
    ELSE 'International'
END
{% endmacro %}