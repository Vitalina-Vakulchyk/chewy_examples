class UsersController < ApplicationController
  def search
    @users = UsersIndex.query(query_string: { fields: [:first_name, :last_name, :email, ...], query: search_params[:query], default_operator: 'and' })

    render json: @users.to_json, status: :ok
  end

  private

  def search_params
    params.permit(:query, :page, :per)
  end
end
