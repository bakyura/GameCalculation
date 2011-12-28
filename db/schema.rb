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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111228121650) do

  create_table "admins", :force => true do |t|
    t.string   "email",                             :default => "", :null => false
    t.string   "encrypted_password", :limit => 128, :default => "", :null => false
    t.integer  "failed_attempts",                   :default => 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.integer  "sign_in_count",                     :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "betting_predictions", :force => true do |t|
    t.integer  "game_id"
    t.integer  "bookmaker_id"
    t.string   "r_1"
    t.string   "r_x"
    t.string   "r_2"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bookmakers", :force => true do |t|
    t.string   "name"
    t.string   "web_site"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ckeditor_assets", :force => true do |t|
    t.string   "data_file_name",                                 :null => false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    :limit => 30
    t.string   "type",              :limit => 25
    t.string   "guid",              :limit => 10
    t.integer  "locale",            :limit => 1,  :default => 0
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], :name => "fk_assetable"
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], :name => "idx_assetable_type"
  add_index "ckeditor_assets", ["user_id"], :name => "fk_user"

  create_table "countries", :force => true do |t|
    t.string   "name"
    t.string   "alpha_2_code"
    t.string   "alpha_3_code"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "is_enabled",   :default => false
  end

  create_table "football_clubs", :force => true do |t|
    t.string   "name"
    t.string   "alias"
    t.integer  "league"
    t.text     "description"
    t.string   "web_site"
    t.string   "logo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "location"
  end

  create_table "football_matches", :force => true do |t|
    t.integer  "home_team"
    t.integer  "quest_team"
    t.integer  "home_goals"
    t.integer  "quest_goals"
    t.date     "game_date"
    t.integer  "tour"
    t.integer  "league"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "leagues", :force => true do |t|
    t.string   "name"
    t.string   "country"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "logo"
    t.string   "url"
    t.string   "alias"
  end

  create_table "models", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "models", ["email"], :name => "index_models_on_email", :unique => true
  add_index "models", ["reset_password_token"], :name => "index_models_on_reset_password_token", :unique => true

  create_table "news", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.string   "image"
    t.text     "body"
    t.boolean  "is_show",     :default => true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", :force => true do |t|
    t.string   "name"
    t.string   "alias"
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "predictions", :force => true do |t|
    t.integer  "game_id"
    t.string   "win_home"
    t.string   "win_quest"
    t.string   "draw_result"
    t.string   "goals_home"
    t.string   "goals_quest"
    t.boolean  "is_recommended", :default => false
    t.boolean  "boolean",        :default => false
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "settings", :force => true do |t|
    t.string   "name"
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "social_communications", :force => true do |t|
    t.integer  "club_id"
    t.string   "rss"
    t.string   "facebook"
    t.string   "twitter"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "youtube"
    t.string   "google_plus"
  end

  create_table "statistics", :force => true do |t|
    t.integer  "fc_id"
    t.integer  "wins"
    t.integer  "draws"
    t.integer  "loss"
    t.integer  "home_wins"
    t.integer  "home_draws"
    t.integer  "home_loss"
    t.integer  "quest_wins"
    t.integer  "quest_draws"
    t.integer  "quest_loss"
    t.integer  "goals_wins"
    t.integer  "goals_loss"
    t.integer  "goals_wins_home"
    t.integer  "goals_loss_home"
    t.integer  "goals_wins_quest"
    t.integer  "goals_loss_quest"
    t.integer  "wins_last_month"
    t.integer  "draws_last_month"
    t.integer  "loss_last_month"
    t.integer  "home_wins_last_month"
    t.integer  "home_draws_last_month"
    t.integer  "home_loss_last_month"
    t.integer  "quest_wins_last_month"
    t.integer  "quest_draws_last_month"
    t.integer  "quest_loss_last_month"
    t.integer  "goals_wins_last_month"
    t.integer  "goals_loss_last_month"
    t.integer  "goals_wins_home_last_month"
    t.integer  "goals_loss_home_last_month"
    t.integer  "goals_wins_quest_last_month"
    t.integer  "goals_loss_quest_last_month"
    t.integer  "wins_top_teams"
    t.integer  "draws_top_teams"
    t.integer  "loss_top_teams"
    t.integer  "home_wins_top_teams"
    t.integer  "home_draws_top_teams"
    t.integer  "home_loss_top_teams"
    t.integer  "quest_wins_top_teams"
    t.integer  "quest_draws_top_teams"
    t.integer  "quest_loss_top_teams"
    t.integer  "goals_wins_top_teams"
    t.integer  "goals_loss_top_teams"
    t.integer  "goals_wins_home_top_teams"
    t.integer  "goals_loss_home_top_teams"
    t.integer  "goals_wins_quest_top_teams"
    t.integer  "goals_loss_quest_top_teams"
    t.integer  "wins_bottom_teams"
    t.integer  "draws_bottom_teams"
    t.integer  "loss_bottom_teams"
    t.integer  "home_wins_bottom_teams"
    t.integer  "home_draws_bottom_teams"
    t.integer  "home_loss_bottom_teams"
    t.integer  "quest_wins_bottom_teams"
    t.integer  "quest_draws_bottom_teams"
    t.integer  "quest_loss_bottom_teams"
    t.integer  "goals_wins_bottom_teams"
    t.integer  "goals_loss_bottom_teams"
    t.integer  "goals_wins_home_bottom_teams"
    t.integer  "goals_loss_home_bottom_teams"
    t.integer  "goals_wins_quest_bottom_teams"
    t.integer  "goals_loss_quest_bottom_teams"
    t.integer  "wins_mid_teams"
    t.integer  "draws_mid_teams"
    t.integer  "loss_mid_teams"
    t.integer  "home_wins_mid_teams"
    t.integer  "home_draws_mid_teams"
    t.integer  "home_loss_mid_teams"
    t.integer  "quest_wins_mid_teams"
    t.integer  "quest_draws_mid_teams"
    t.integer  "quest_loss_mid_teams"
    t.integer  "goals_wins_mid_teams"
    t.integer  "goals_loss_mid_teams"
    t.integer  "goals_wins_home_mid_teams"
    t.integer  "goals_loss_home_mid_teams"
    t.integer  "goals_wins_quest_mid_teams"
    t.integer  "goals_loss_quest_mid_teams"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasks", :force => true do |t|
    t.string   "name"
    t.string   "status"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tests", :force => true do |t|
    t.string   "name"
    t.string   "status"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
