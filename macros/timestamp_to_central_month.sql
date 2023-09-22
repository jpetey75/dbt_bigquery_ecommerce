{% macro timestamp_to_central_month(column_name) %}

    date_trunc(date({{column_name}}, "America/Chicago"), month)

{% endmacro %}