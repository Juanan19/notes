class Note < ApplicationRecord
	validates :title, presence: true
	validates :text, presence: true

	def self.search(term)
	  if term
	    where('title LIKE ?', "%#{term}%")
	  else
	    all
	  end
	end
	
end
