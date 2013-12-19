module Turkee
  class TurkeeImportedAssignment
    include Mongoid::Document
    include Mongoid::Timestamps

    field :assignment_id, type: String # TODO validates assignment_id, uniqueness: true ?
    field :turkee_task_id, type: Integer
    field :worker_id, type: String
    field :result_id, type: Integer

    def self.record_imported_assignment(assignment, result, turk)
      TurkeeImportedAssignment.create!(:assignment_id => assignment.id,
                                       :turkee_task_id => turk.id,
                                       :worker_id => assignment.worker_id,
                                       :result_id => result.id)
    end

  end
end