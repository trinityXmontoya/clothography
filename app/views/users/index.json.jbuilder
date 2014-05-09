json.array!(@users) do |user|
  json.extract! user, :id, :email, :username, :name, :password, :profile_photo, :bg_photo, :gender_id
  json.url user_url(user, format: :json)
end
