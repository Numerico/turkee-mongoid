class Survey
  include Mongoid::Document
  include Mongoid::Timestamps

  field "answer", type: String
end