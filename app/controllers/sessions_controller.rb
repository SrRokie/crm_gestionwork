class SessionsController < ApplicationController
    def new
    end
    def create
        # Obtén los datos enviados por el formulario
        email = params[:email]
        password = params[:password]
        
        # Realiza la autenticación del usuario según tus requerimientos
        if email == 'ipss.leiva@gmail.com' && password == 'admin6696'
          
          redirect_to root_path # Redirige al usuario a la página de inicio
        else
          # Si la autenticación falla, puedes mostrar un mensaje de error o redirigir al usuario nuevamente al formulario de inicio de sesión
          redirect_to login_path, flash: { notice: 'Credenciales inválidas. Por favor, intenta nuevamente.' }
        end
      end
end
