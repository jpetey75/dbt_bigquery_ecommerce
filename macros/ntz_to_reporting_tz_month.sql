
{% macro ntz_to_reporting_tz_month(column_name) %}

    date_trunc(
        date({{ ntz_to_reporting_tz(column_name) }}), 
        month
    )

{% endmacro %}