class Users::RegistrationsController < Devise::RegistrationsController
  before_action :ensure_normal_user, only: [:update, :destroy]

  def ensure_normal_user
    if resource.email == 'guest@example.com'
      redirect_to root_path, alert: 'ゲストユーザーの削除・更新はできません。'
    end
  end

end 