class Episode < ApplicationRecord
    include Hashid::Rails
    has_rich_text :content
end
