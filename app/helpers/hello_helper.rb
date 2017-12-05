module HelloHelper
  def reaction(name)
    if (name == "Misha")
      "Опять ты?!"
    else
      "Рады вас видеть, #{name}!"
    end
  end
end