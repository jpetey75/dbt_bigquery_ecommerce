
{% macro timestamp_to_central(column_name) %}

    timestamp(datetime({{column_name}}), "America/Chicago")

{% endmacro %}
