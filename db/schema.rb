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

ActiveRecord::Schema.define(version: 20150911223732) do

  create_table "artists", force: :cascade do |t|
    t.string   "artsyname"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "origin"
    t.string   "email"
    t.string   "websiteurl"
    t.string   "facebook"
    t.string   "instagram"
    t.string   "twitter"
    t.string   "likes"
    t.string   "followers"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "likes", force: :cascade do |t|
    t.boolean  "like"
    t.integer  "artist_id"
    t.integer  "song_id"
    t.integer  "video_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "songs", force: :cascade do |t|
    t.string   "songtitle"
    t.string   "releasedate"
    t.string   "format"
    t.string   "lyric"
    t.string   "speed"
    t.string   "genreid"
    t.string   "languageid"
    t.string   "artistid"
    t.string   "albumid"
    t.string   "artworkurl"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "artist_id"
    t.string   "filename"
  end

  create_table "videos", force: :cascade do |t|
    t.string   "title"
    t.string   "releasedate"
    t.string   "artwork"
    t.string   "format"
    t.string   "width"
    t.string   "height"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "artist_id"
  end

end
