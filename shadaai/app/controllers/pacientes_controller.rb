# GET /pacientes
def index
	@pacientes = Paciente.all
end
# GET /pacientes/:id
def show
	@mostrarP = Paciente.find(params[:id])
end

# GET /pacientes/new
def new
	@nuevoP = Paciente.new 
end

# POST /pacientes
def create
	@nuevoP = Paciente.new(primerN: params[:paciente][:primerN], 
							segundoN: params[:paciente][:segundoN],
							primerA: params[:paciente][:primerA],
							segundoA: params[:paciente][:segundoA],
							edad: params[:paciente][:edad],
							direccion: params[:paciente][:direccion])
	if @nuevoP.save
	redirect_to @nuevoP
	else
		render :new
	end		
end

# DELETE /pacientes/:id
def destroy
	 @eliminarP = Paciente.find(params[:id])
	 @eliminarP.destroy
	redirect_to paciente_path
end
	