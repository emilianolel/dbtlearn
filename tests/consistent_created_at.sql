SELECT 
    * 
FROM 
    {{ ref('dim_listings_cleansed') }} AS listings
INNER JOIN 
    {{ ref('fct_reviews') }} AS reviews
USING (listing_id)
WHERE 
    listings.created_at >= reviews.review_date