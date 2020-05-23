module V1
  class ChartsController < ApiController

    # GET v1/timeline_data
    def timeline_data
      users_count = User.all.count
      total_kudos_possible = UserKudo.possible_total_kudos
      distributed_kudos = UserKudo.total_kudos_given
      user_given_kudos = UserKudo.user_given_kudos

      render json: {data: {user_given_kudos: user_given_kudos, users_count: users_count, total_kudos: total_kudos_possible, distributed_kudos: distributed_kudos}}
    end
  end
end