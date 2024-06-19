{% macro funcions(a, b) %} round(safe_divide({{ a }}, {{ b }}), 2) {% endmacro %}
