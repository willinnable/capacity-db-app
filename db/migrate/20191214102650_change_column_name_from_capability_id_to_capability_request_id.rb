class ChangeColumnNameFromCapabilityIdToCapabilityRequestId < ActiveRecord::Migration[6.0]
  def change
    rename_column :capability_request_resource_releases, :capability_id, :capability_request_id
  end
end
