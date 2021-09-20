class DataMigrationInitialUsers < ActiveRecord::Migration[7.0]
  def up
    FactoryBot.create(
      :user,
      user_type: :mahasiswa,
      username: "mahasiswa1",
      email: "mahasiswa1@domain.tld",
      password: "password"
    )
    FactoryBot.create(
      :user,
      user_type: :dosen,
      username: "dosen1",
      email: "dosen1@domain.tld",
      password: "password"
    )
    FactoryBot.create(
      :user,
      user_type: :administrator,
      username: "administrator1",
      email: "administrator1@domain.tld",
      password: "password"
    )
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
