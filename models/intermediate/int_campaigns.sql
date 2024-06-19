-- select *
-- from {{ ref("stg_raw__adwords") }}
-- union all
-- select *
-- from {{ ref("stg_raw__bing") }}
-- union all
-- select *
-- from {{ ref("stg_raw__criteo") }}
-- union all
-- select *
-- from {{ ref("stg_raw__facebook") }}

{{ dbt_utils.union_relations(
    relations=[ref("stg_raw__adwords"),ref("stg_raw__bing"),ref("stg_raw__criteo"),ref("stg_raw__facebook")]
) }}
