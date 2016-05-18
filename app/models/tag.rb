class Tag < ActiveRecord::Base
  # NOTE We assume tags are unique and only count multiple occurrances of a tag within a message once.
  # Otherwise, "#Hodor #Hodor #Hodor!" would falsely inflate the popularity of the tag #Hodor
  # when compared to other tags

  has_and_belongs_to_many :messages

  scope :most_popular, -> {Tag.joins(:messages).select('tags.*, COUNT(messages.id) as message_count').group('tags.id').order('message_count DESC') }

end
