const modals = document.querySelectorAll("[data-modal]");

let clientes = [];
let concessionarias = [];
let carros = [];
let areas = [];
let selectedCar = null;

function modalsListeners() {
  const modals = document.querySelectorAll("[data-modal]");
  modals.forEach(function (trigger) {
    trigger.addEventListener("click", function (event) {
      getCarsFromArea(trigger.id);
      event.preventDefault();
      const modal = document.getElementById(trigger.dataset.modal);
      modal.classList.add("open");
      const exits = modal.querySelectorAll(".modal-exit");
      exits.forEach(function (exit) {
        exit.addEventListener("click", function (event) {
          event.preventDefault();
          clearModal();
          modal.classList.remove("open");
        });
      });
    });
  });
}

function mountCarSellModal(){
	const car = carros.find(carro => carro.id === selectedCar)
	const title = document.getElementById("car-name");
	title.innerText = car.modelo;

	const clientSelect = document.getElementById("select-cliente");
	const defaultOptionClient = document.createElement("option");
	defaultOptionClient.innerText = "Selecione um cliente";
	defaultOptionClient.value = "";
	clientSelect.appendChild(defaultOptionClient);
	clientes.forEach(cliente => {
		const option = document.createElement("option");
		option.value = cliente.id;
		option.innerText = cliente.nome;
		clientSelect.appendChild(option);
	})

	const concessionariaSelect = document.getElementById("select-concessionaria");
	const defaultOptionConce = document.createElement("option");
	defaultOptionConce.innerText = "Selecione uma concessionaria";
	defaultOptionConce.value = "";
	concessionariaSelect.appendChild(defaultOptionConce);
	
	const formattedConcessionarias = concessionarias.filter(conc => car.id_concessionaria === conc.id) 

	formattedConcessionarias.forEach(concessionaria => {
		const option = document.createElement("option");
		option.value = concessionaria.id;
		option.innerText = concessionaria.nome;
		concessionariaSelect.appendChild(option);
	})

	const confirmButton = document.getElementById("confirm-button");

	confirmButton.disabled = true;

	let clientSelected = null;
	let concessionariaSelected = null;

	function updateConfirmButton(){
		if(clientSelected && concessionariaSelected){
			confirmButton.disabled = false;
		}else{
			confirmButton.disabled = true;
		}
	}

	clientSelect.addEventListener("change", (event) => {
		clientSelected = event.target.value;
	})

	concessionariaSelect.addEventListener("change", (event) => {
		concessionariaSelected = event.target.value;
		updateConfirmButton();
	})

	const body = {
		cliente: clientSelected,
		concessionaria: concessionariaSelected,
		carro: car
	}


	confirmButton.addEventListener("click", async (event) => {
		fetch(`http://localhost:3000/api/areas/vendas/${car.id}`)
		
		clearModal();
	})

}

function getCarsFromArea(id) {
	clearModal()
  const areaId = Number(id.slice(4, 6));
  const cars = carros.filter((carro) => carro.area === areaId);

  const modalDiv = document.getElementById("modal-content");
  const h2 = document.createElement("h2");
  h2.innerText = `Área ${areaId}`;

  cars.forEach((car) => {
    const div = document.createElement("div");
    div.classList.add("car");
    div.innerText = `Modelo: ${car.modelo} | Preço: ${car.preco}`;

    const button = document.createElement("button");
    button.innerText = "Vender";
    button.classList.add("btn");
    button.dataset.modal = "modal-confirmar";
    button.id = car.id;
    button.addEventListener("click", (event) => {
      event.preventDefault();
      selectedCar = car.id;
      const modal = document.getElementById("modal-vender");
      modal.classList.remove("open");
			mountCarSellModal()
    });

    div.appendChild(button);

    modalDiv.appendChild(div);
  });

  modalDiv.appendChild(h2);
  setTimeout(() => {
    modalsListeners();
  }, 1000);
}

function clearModal() {
  const modalDiv = document.getElementById("modal-content");
  while (modalDiv.firstChild) {
    modalDiv.removeChild(modalDiv.firstChild);
  }
}

async function getCarros() {
  const response = await fetch("http://localhost:3000/api/areas").then((res) =>
    res.json()
  );

  carros = response;
}

function changeDivColor(areaId, divId) {
  const div = document.getElementById(divId);

  const carsWithAreaId = carros.filter((carro) => carro.area === areaId);
  if (!carsWithAreaId.length) {
		div.style.color = "#000"
    div.style.backgroundColor = "#FFF";
  }
}

async function fillAreas() {
  const areas = document.getElementsByClassName("area");
  for (let i = 0; i < areas.length; i++) {
    changeDivColor(Number(areas[i].id.slice(4, 6)), areas[i].id);
  }
}

async function getClientes() {
	const response = await fetch("http://localhost:3000/api/clientes").then((res) => res.json());

	clientes = response;
}

async function getConcessionarias() {
	const response = await fetch("http://localhost:3000/api/concessionarias").then((res) => res.json());

	concessionarias = response;
}

async function main(){
	await getCarros();
	getConcessionarias()
	getClientes()
	modalsListeners();
	fillAreas();
}


main()
