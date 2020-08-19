class Post < ApplicationRecord
  validates :title, presence: true # 追加
end
