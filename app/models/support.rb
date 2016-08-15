class Support < ApplicationRecord




validates :name, presence: true
validates :email, presence:true

def self.search(keyword)
  where(["name ILIKE ? or message ILIKE ? or email ILIKE ? or department ILIKE ?", "%#{keyword}%", "%#{keyword}%", "%#{keyword}%", "%#{keyword}%"])


end
end


private

def self.recent_ten
  order(department: :desc).limit(10)
end
