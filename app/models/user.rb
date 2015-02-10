class User < ActiveRecord::Base
end


class Order < ActiveRecord::Base
	belongs_to :product
	belongs_to :user
end

class User < ActiveRecord::Base
	has_many :orders
end