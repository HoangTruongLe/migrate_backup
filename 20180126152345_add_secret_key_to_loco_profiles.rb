class AddSecretKeyToLocoProfiles < ActiveRecord::Migration
  def change
    # Actually, it must be 'null: false' on the specification
    add_column :loco_profiles, :secret_key, :string, limit: 128, null: true
  end
end
