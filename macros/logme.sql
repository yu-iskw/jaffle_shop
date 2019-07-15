{% macro log_me() %}
    {{ log("hello", info=True) }}
    select 1
{% endmacro %}
