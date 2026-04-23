{% macro select_positive_values(model, column_name) %}
    select *
    from {{ model }}
    WHERE {{ column_name }} > 0
{% endmacro %}