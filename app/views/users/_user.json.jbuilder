json.extract! user,
    :id,
    :created_at,
    :email,
    :name,
    :updated_at

json.url user_url(user, format: :json)
