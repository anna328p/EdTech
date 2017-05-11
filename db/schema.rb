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

ActiveRecord::Schema.define(version: 20170509200943) do

  create_table "tools", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "picture_url"
    t.string   "platform"
    t.integer  "grade_low"
    t.integer  "grade_high"
    t.boolean  "creativity"
    t.boolean  "communication"
    t.boolean  "collaboration"
    t.boolean  "citizenship"
    t.boolean  "critical_thinking"
    t.boolean  "empowered_learner"
    t.boolean  "digital_citizen"
    t.boolean  "knowledge_constructor"
    t.boolean  "innovative_designer"
    t.boolean  "computational_thinker"
    t.boolean  "creative_communicator"
    t.boolean  "global_collaborator"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

end
