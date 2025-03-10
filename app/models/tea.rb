class Tea < ApplicationRecord
has_many :tea_subscriptions
has_many :subscriptions, through: :tea_subscriptions
end
