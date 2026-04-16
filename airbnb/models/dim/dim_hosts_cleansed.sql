{{
  config(
    materialized = 'view'
  )
}}


with src_host as (
    select * from {{ ref('src_host') }}
)
select  
    host_id,
    nvl(
        host_name,
        'Anonymous'
    ) as host_name,
    IS_SUPERHOST,
    created_at,
    updated_at
from
    src_host