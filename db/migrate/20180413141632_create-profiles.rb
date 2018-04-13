ROM::SQL.migration do
  change do
    create_table :profiles do
      primary_key :id

      column :email, String, null: false, unique: true, index: true
      column :display_name, String

      column :private_email, FalseClass, default: true

      column :bio, :Text
      column :state, String, default: 'active', index: true
    end
  end
end
