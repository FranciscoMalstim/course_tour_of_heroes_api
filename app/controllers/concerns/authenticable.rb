module Authenticable 
  private 

  def authenticable_with_token
    @token ||= request.headers['Authorization']

    unless valid_token?
      render json: { errors: 'Você não tem autorização para essa operação'},
          status: :unauthorized
    end
  end

  def valid_token?
    @token.present? && @token == Rails.aplication.credentials.token
  end
end