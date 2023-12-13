module HomeHelper
  def loginUser()
    if current_user
      return "Bem vindo ao Hospital Care" +" "+ current_user.name
    else
      return "Bem vindo ao Hospital Care"
    end
  end
end
