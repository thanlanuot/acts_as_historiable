begin
  require 'rails/engine'
  require "acts_as_historiable/engine"
  rescue LoadError
end

module ActsAsHistoriable
  extend ActiveSupport::Concern

  included do
    has_many :histories, as: :historiable, class_name: 'ActsAsHistoriable::History'

    after_commit :save_log

    def save_log
      log = saved_changes.deep_dup
      if log.length > 0
        History.create historiable: self, log: log.to_json, owner: ::ActsAsHistoriable.owner, ip_address: ::ActsAsHistoriable.ip_address, user_agent: ::ActsAsHistoriable.user_agent
      end
    end
  end

  def self.owner= owner
    Thread.current[:track_user] = owner
  end

  def self.owner
    Thread.current[:track_user]
  end

  def self.ip_address= ip_address
    Thread.current[:track_ip_address] = ip_address
  end

  def self.ip_address
    Thread.current[:track_ip_address]
  end

  def self.user_agent= user_agent
    Thread.current[:track_user_agent] = user_agent
  end

  def self.user_agent
    Thread.current[:track_user_agent]
  end
end

