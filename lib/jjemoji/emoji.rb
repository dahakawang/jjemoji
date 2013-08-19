# encoding: utf-8

module Jjemoji

  class Emoji
    def self.find_emoji(tags)
      found_emoji = []
      tags = normalize_tags tags

      EmojiDB.each do |emoji|
        if (tags - emoji).length == 0 
          found_emoji << emoji[0]
        end
      end

      found_emoji
    end

    def self.normalize_tags(tags)
      tags.collect do |tag|
        tag.to_sym
      end
    end

    def self.list_tags
      tags = []

      EmojiDB.each do |emoji|
        emoji.each do |tag|
          next if !tag.is_a? Symbol
          tags << tag if !tags.include? tag
        end
      end

      tags
    end
  end
end