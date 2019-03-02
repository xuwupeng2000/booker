class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :user_id, :name, :email
end
