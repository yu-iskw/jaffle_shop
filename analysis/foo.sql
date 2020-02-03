{% set sql %}
select 1 as foo, 'a' as bar
union all 
select 3, 'b'
{% endset %}

{% set results = run_query(sql) %}

{% if execute %}
    {% for row in results.rows %}
        {{ log(row['foo'], info=True) }}
        {{ log(row['bar'], info=True) }}
    {% endfor %}
{% endif %}
