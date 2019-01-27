class EnableUuidOssp < ActiveRecord::Migration[5.2]
  enable_extension "uuid-ossp"
  def change
  end
end
