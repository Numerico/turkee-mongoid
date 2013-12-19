module Turkee
  class TurkeeStudy
    include Mongoid::Document
    include Mongoid::Timestamps

    field :turkee_task_id, type: Integer
    field :feedback, type: String
    field :gold_response, type: String

    GOLD_RESPONSE_INDEX = 3

    def approve?
      words = feedback.split(/\W+/)
      gold_response.present? ? (gold_response == words[GOLD_RESPONSE_INDEX]) : true
    end
  end
end