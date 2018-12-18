class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
end

def auxiliarCreateUpdate(tipo, metodo, acao, statusAtual, renderElse)
  respond_to do |format|
    if metodo
      format.html { redirect_to tipo, notice: 'Cliente com nome ' + tipo.nome + ' foi ' + acao + ' com sucesso' }
      format.json { render :show, status: statusAtual, location: tipo }
    else
      format.html { render renderElse }
      format.json { render json: tipo.errors, status: :unprocessable_entity }
    end
  end
end