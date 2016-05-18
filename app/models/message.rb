class Message < ActiveRecord::Base
  include Twitter::Extractor

  validates :body, presence: true
  validates :body, length: { maximum: 141 }

  has_and_belongs_to_many :tags

  scope :most_recent,  -> { order(created_at: :desc) }

  after_save do
    # NOTE We count multiple occurrances of a tag within a message only once...
    extract_hashtags(self.body).uniq.each do |tag|
      # Associate the tag to the message, creating the tag unless it already exists
      t = Tag.find_or_create_by(name: tag)
      self.tags << t
    end
  end
end
