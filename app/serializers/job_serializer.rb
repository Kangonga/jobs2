class JobSerializer < ActiveModel::Serializer
  attributes :job_title, :description, :qualifications, :deadline, :company_name, :apply 
end
