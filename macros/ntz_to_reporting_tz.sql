
{% macro ntz_to_reporting_tz(column_name) %}

    timestamp(
        datetime({{column_name}}), 
        "America/Chicago")

{% endmacro %}
