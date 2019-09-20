require "acts_as_historiable/engine"

module ActsAsHistoriable
  def included(klass)
    klass.extend ClassMethods
  end

  module ClassMethods
    def acts_as_historiable
      has_many :histories, as: :historiable

      after_commit :save_log
    end

    def save_log
      log = saved_changes.deep_dup
      if log.length > 0
        History.create historiable: self, log: log.to_json, owner: ::Historiable.owner, ip_address: ::Historiable.ip_address, user_agent: ::Historiable.user_agent
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
end
