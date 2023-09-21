{% macro timestamp_to_central_date(column_name) %}

    date({{column_name}}, "America/Chicago")

{% endmacro %}