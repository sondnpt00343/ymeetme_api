# == Schema Information
#
# Table name: posts
#
#  id           :bigint(8)        not null, primary key
#  origin_id    :integer
#  origin_url   :string(191)
#  title        :string(191)      not null
#  description  :text(65535)
#  image        :string(191)      not null
#  crawl_status :integer          default(0), not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Post < ApplicationRecord
  default_scope -> { order('id desc') }
  enum crawl_status: { finished: 1, processing: 0 }
end
