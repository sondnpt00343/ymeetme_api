# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_180_825_061_726) do
  create_table 'posts', force: :cascade, options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci' do |t|
    t.integer 'origin_id'
    t.string 'origin_url', limit: 191
    t.string 'title', limit: 191, null: false
    t.text 'description'
    t.string 'image', limit: 191, null: false
    t.integer 'crawl_status', limit: 1, default: 0, null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['crawl_status'], name: 'index_posts_on_crawl_status'
    t.index ['origin_id'], name: 'index_posts_on_origin_id', unique: true
  end
end
