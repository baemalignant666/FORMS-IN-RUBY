class FormulariosController < ApplicationController
  def por_get
    @codigo = params[:codigo];
    if @codigo
      case @codigo
        when "123"
            @usuario = {:nombre => "Igor", :apellido => "Vitriago"};
          when "456"
              @usuario = {:nombre => "Josne", :apellido => "Rodriguez"};
            when "789"
                @usuario = {:nombre => "Pedro", :apellido => "Parra"};
    else
        @usuario = false;
      end
    end
  end

  def por_post
	  @respuesta = false;

	  if request.post?
			@comentario = {
			:nombre => params[:nombre],
			:consulta => params[:comentario]
			};
	  end
	end
end
