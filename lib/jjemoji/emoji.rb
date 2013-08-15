# encoding: utf-8

module Jjemoji

  class Emoji
    def find_emoji(*tags)
      found_emoji = []

      EmojiDB.each do |emoji|
        if (tags - emoji).length == 0 
          found_emoji << emoji[0]
        end
      end

      found_emoji
    end
  end
end