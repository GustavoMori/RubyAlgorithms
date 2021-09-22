class CardPresenter
  def initialize(objeto)
    @to_presenter = objeto.to_presenter
  end

  def show
    "<p>nome: #{@to_presenter[:nome]}</p><p>idade: #{@to_presenter[:idade]}</p>"
  end
end
