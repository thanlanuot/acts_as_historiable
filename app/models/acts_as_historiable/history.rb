module ActsAsHistoriable
  class History < ApplicationRecord
    belongs_to :historiable, polymorphic: true
    belongs_to :owner, polymorphic: true, optional: true

    def human_readable_log
      h = JSON.parse(log)
      list = []
      h.each do |key, value|
        prev = value[0] ? "\"#{value[0]}\"" : ""
        list << "#{key}: #{prev}->\"#{value[1]}\""
      end
      list.join ", "
    end
  end
end
