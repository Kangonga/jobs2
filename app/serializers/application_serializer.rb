class ApplicationSerializer < ActiveModel::Serializer
  attributes :user_id, :job_id, :application_stage
end
