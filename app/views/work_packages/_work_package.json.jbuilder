json.extract! work_package, :id, :name, :code, :target_release_date, :actual_release_date, :release_gate_id, :market_id, :created_at, :updated_at
json.url work_package_url(work_package, format: :json)
