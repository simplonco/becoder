class CreateAccountUserAndCandidature < ActiveRecord::Migration
  def change
    create_table :accounts do |a|
      a.string :email, nil: false
      a.string :password_digest, nil: false

      a.timestamps
    end

    create_table :users do |u|
      u.string :first_name
      u.string :last_name
      u.date :birthdate
      u.string :birth_place
      u.string :address_1
      u.string :address_2
      u.string :zipcode
      u.string :city
      u.integer :phone_number
      u.string :last_degree
      u.string :nationality

      u.timestamps
    end

    create_table :candidatures do |c|
      c.text :why_us
      c.text :computer_experiences

      c.timestamps
    end
  end
end
