{% macro yearmonth(a_date) %}
    extract(year from {{ a_date }})
    || '-'
    || format('%02d', extract(month from {{ a_date }}))
{% endmacro %}
