package org.victor.apipets.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.victor.apipets.model.Cor;
import org.victor.apipets.model.Pet;
import org.victor.apipets.repository.PetRepository;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

@Service
public class PetService {

    @Autowired
    private PetRepository repository;

    public List<Pet> BuscarPets(){ return repository.findAll(); }

    public Optional<Pet> BuscarPetPorId(Long id) { return repository.findById(id); }

    public Pet AdicionarPet(Pet pet) { return repository.save(pet); }

    public Pet AtualizarPetPorId(Long id, String nome, LocalDate dataNasc, Cor cor, String raca) {
        Optional<Pet> PetEncontrado = repository.findById(id);

        if (PetEncontrado.isEmpty()){
            return null;
        }

        Pet pet = PetEncontrado.get();
        pet.setCor(cor);
        pet.setDataNasc(dataNasc);
        pet.setNome(nome);
        pet.setRaca(raca);

        return repository.save(pet);

    }

    public void DeletarPetPorId(Long id) {
        repository.deleteById(id);
    }
}
