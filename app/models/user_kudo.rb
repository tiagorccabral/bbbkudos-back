class UserKudo < ApplicationRecord
  belongs_to :user
  belongs_to :kudo

  before_save :verify_maximum_kudos

  # mudar aqui para alterar o maximo de Kudos por tipo
  @@maximum_kudos_per_type = 2

  attr_accessor :maximum_kudos_per_type

  private

  def verify_maximum_kudos
    if UserKudo.where(:sender_id => self.sender_id, :kudo_id => self.kudo_id).count >= @@maximum_kudos_per_type
      errors.add(:error, "Não possui mais Kudos desse tipo!")
      throw :abort
    end
  end

  def self.available_kudos(user_kudos_params)

    available_kudos = []

    kudo_amounts = Kudo.select(:kudo_type).uniq

    kudo_amounts.each do |kudo|
      kudo_amount = UserKudo.where(:sender_id => user_kudos_params[:sender_id], :kudo_id => kudo.kudo_type)
      available_kudos << {name: Kudo.where(kudo_type: kudo.kudo_type).first['name'], type: kudo.kudo_type, available_kudos: (@@maximum_kudos_per_type - kudo_amount.count)}
    end

    available_kudos << {updated_at: Time.now}

    {data: available_kudos}

  end

end
