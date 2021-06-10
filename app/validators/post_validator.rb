class PostValidator < ActiveModel::Validator
  def validate(record)
    unless record.content.length >= 100
      record.errors[:content] << "Post content should be at least 100 characters long!"
    end
  end
end