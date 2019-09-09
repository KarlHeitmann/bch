module ApplicationHelper
  def generar_jumbotron
    texto = '
    <div class="jumbotron">
      <h1 class="display-4">La aventura está acá</h1>
      <p class="lead">Este es un ejemplo de unidad heroica, un simple componente estilo jumbotron
          para llamar la atención.</p>
      <hr class="my-4">
      <p>Utiliza clases para la tipografía y el espacio, para diferenciarse del segmento
          de arriba.</p>
      <!-- <a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a> -->
    </div>
    '
    return texto.html_safe
  end
end
