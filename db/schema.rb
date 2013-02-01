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

ActiveRecord::Schema.define(:version => 20130201164210) do

  create_table "cities", :force => true do |t|
    t.string   "name"
    t.string   "url"
    t.integer  "zoom"
    t.string   "srs"
    t.float    "minx"
    t.float    "miny"
    t.float    "maxx"
    t.float    "maxy"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "config_datasets", :force => true do |t|
    t.integer "dataset_id",    :null => false
    t.integer "mod_config_id", :null => false
  end

  create_table "config_text_inputs", :force => true do |t|
    t.integer "mod_config_id", :null => false
    t.text    "column_name",   :null => false
    t.text    "value"
    t.boolean "is_input"
  end

  create_table "datasets", :force => true do |t|
    t.string   "server_url",                     :null => false
    t.string   "identifier",                     :null => false
    t.string   "dataset_type"
    t.integer  "city_id"
    t.boolean  "finalized",    :default => true, :null => false
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
    t.text     "service"
  end

  create_table "geometry_columns", :id => false, :force => true do |t|
    t.string  "f_table_catalog",   :limit => 256, :null => false
    t.string  "f_table_schema",    :limit => 256, :null => false
    t.string  "f_table_name",      :limit => 256, :null => false
    t.string  "f_geometry_column", :limit => 256, :null => false
    t.integer "coord_dimension",                  :null => false
    t.integer "srid",                             :null => false
    t.string  "type",              :limit => 30,  :null => false
  end

  create_table "mod_configs", :force => true do |t|
    t.integer  "wps_server_id"
    t.text     "identifier"
    t.text     "name"
    t.text     "descr"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.text     "status"
    t.datetime "run_started"
    t.datetime "run_ended"
    t.text     "pid"
    t.integer  "city_id"
    t.text     "status_text",   :default => ""
  end

  create_table "spatial_ref_sys", :id => false, :force => true do |t|
    t.integer "srid",                      :null => false
    t.string  "auth_name", :limit => 256
    t.integer "auth_srid"
    t.string  "srtext",    :limit => 2048
    t.string  "proj4text", :limit => 2048
  end

  create_table "wps_servers", :force => true do |t|
    t.string   "url"
    t.text     "descr"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
