# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20_160_214_231_518) do
  create_table 'addresses', force: :cascade do |t|
    t.string   'city',        limit: 255
    t.string   'country',     limit: 255
    t.string   'street_name', limit: 255
    t.integer  'customer_id', limit: 4
    t.datetime 'created_at',              null: false
    t.datetime 'updated_at',              null: false
    t.integer  'vendor_id', limit: 4
  end

  create_table 'customers', force: :cascade do |t|
    t.string   'email',                  limit: 255, default: '', null: false
    t.string   'encrypted_password',     limit: 255, default: '', null: false
    t.string   'reset_password_token',   limit: 255
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.integer  'sign_in_count', limit: 4, default: 0, null: false
    t.datetime 'current_sign_in_at'
    t.datetime 'last_sign_in_at'
    t.string   'current_sign_in_ip',     limit: 255
    t.string   'last_sign_in_ip',        limit: 255
    t.datetime 'created_at',                                      null: false
    t.datetime 'updated_at',                                      null: false
  end

  add_index 'customers', ['email'], name: 'index_customers_on_email', unique: true, using: :btree
  add_index 'customers', ['reset_password_token'], name: 'index_customers_on_reset_password_token', unique: true, using: :btree

  create_table 'food_items', force: :cascade do |t|
    t.text     'description',         limit: 65_535
    t.integer  'price',               limit: 4
    t.text     'allergy_information', limit: 65_535
    t.text     'included',            limit: 65_535
    t.datetime 'photo_updated_at'
    t.integer  'photo_file_size',     limit: 4
    t.string   'photo_content_type',  limit: 255
    t.string   'photo_file_name',     limit: 255
    t.integer  'vendor_id',           limit: 4
    t.datetime 'created_at',                        null: false
    t.datetime 'updated_at',                        null: false
    t.string   'title', limit: 255
  end

  create_table 'orders', force: :cascade do |t|
    t.string   'description',    limit: 255
    t.string   'payment_method', limit: 255
    t.integer  'customer_id',    limit: 4
    t.integer  'vendor_id',      limit: 4
    t.datetime 'created_at',                 null: false
    t.datetime 'updated_at',                 null: false
  end

  create_table 'taggings', force: :cascade do |t|
    t.integer  'tag_id',        limit: 4
    t.integer  'taggable_id',   limit: 4
    t.string   'taggable_type', limit: 255
    t.integer  'tagger_id',     limit: 4
    t.string   'tagger_type',   limit: 255
    t.string   'context',       limit: 128
    t.datetime 'created_at'
  end

  add_index 'taggings', %w(tag_id taggable_id taggable_type context tagger_id tagger_type), name: 'taggings_idx', unique: true, using: :btree
  add_index 'taggings', %w(taggable_id taggable_type context), name: 'index_taggings_on_taggable_id_and_taggable_type_and_context', using: :btree

  create_table 'tags', force: :cascade do |t|
    t.string  'name',           limit: 255
    t.integer 'taggings_count', limit: 4, default: 0
  end

  add_index 'tags', ['name'], name: 'index_tags_on_name', unique: true, using: :btree

  create_table 'vendors', force: :cascade do |t|
    t.string   'email',                  limit: 255, default: '', null: false
    t.string   'encrypted_password',     limit: 255, default: '', null: false
    t.datetime 'photo_updated_at'
    t.integer  'photo_file_size',        limit: 4
    t.string   'photo_content_type',     limit: 255
    t.string   'photo_file_name',        limit: 255
    t.string   'reset_password_token',   limit: 255
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.integer  'sign_in_count', limit: 4, default: 0, null: false
    t.datetime 'current_sign_in_at'
    t.datetime 'last_sign_in_at'
    t.string   'current_sign_in_ip',     limit: 255
    t.string   'last_sign_in_ip',        limit: 255
    t.datetime 'created_at',                                      null: false
    t.datetime 'updated_at',                                      null: false
  end

  add_index 'vendors', ['email'], name: 'index_vendors_on_email', unique: true, using: :btree
  add_index 'vendors', ['reset_password_token'], name: 'index_vendors_on_reset_password_token', unique: true, using: :btree
end
