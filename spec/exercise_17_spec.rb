require_relative '../exercises/exercise_17'

describe '#show' do
  let(:objeto) do
    double('Um objeto')
  end

  subject(:card_presenter) do
    CardPresenter.new(objeto)
  end

  before do
    allow(objeto).to receive(:to_presenter).and_return({ nome: 'Mauro', idade: 24 })
  end

  it 'retorna um paragrafo por chave' do
    expect(card_presenter.show).
    to eq(%{<p>nome: Mauro</p><p>idade: 24</p>})
  end
end