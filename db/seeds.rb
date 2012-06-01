# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

outputs = AssetHostCore::Output.create([
  {
    :code       => "thumb",
    :size       => "72x72#",
    :extension  => "jpg",
    :is_rich    => false,
    :prerender  => true
  },
  {
    :code       => "medium",
    :size       => "324x324>",
    :extension  => "jpg",
    :is_rich    => false,
    :prerender  => true
  },
  {
    :code       => "wide",
    :size       => "620x400>",
    :extension  => "jpg",
    :is_rich    => true,
    :prerender  => true
  },
  {
    :code       => "full",
    :size       => "1024x1024>",
    :extension  => "jpg",
    :is_rich    => true,
    :prerender  => false
  }
])