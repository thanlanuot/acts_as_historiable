module ActsAsHistoriableHelper
  extend ActiveSupport::Concern
  included do
    before_filter :track_owner
    after_filter :empty_owner

    def track_owner; end

    def empty_owner
      ::Historiable.owner = nil
    end
  end
end