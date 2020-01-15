with source as (

    select * from {{ source('raw_jaffle_shop', 'customers') }}
        where 1=1

),

renamed as (

    select
        id as customer_id,
        first_name,
        last_name,
        email

    from source

)

select * from renamed
