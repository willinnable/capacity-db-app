json.extract! capability_request, :id, :name, :code, :work_package_id, :complexity_id, :release_gate_id, :comments, :created_at, :updated_at
json.url capability_request_url(capability_request, format: :json)
