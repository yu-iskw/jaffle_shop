{% snapshot orders_snapshot %}

{{
    config(
      target_schema='snapshots',
      unique_key='id',
      strategy='timestamp',
      updated_at='_elt_updated_at',
      tags=['foo']
    )
}}

select * from {{ source('raw_jaffle_shop', 'orders') }}

{% endsnapshot %}
