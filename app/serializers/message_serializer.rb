class MessageSerializer < ActiveModel::Serializer
  attributes :id, :body, :created_at  #restrict the attributes we serialize/publish to our JSON API
end
