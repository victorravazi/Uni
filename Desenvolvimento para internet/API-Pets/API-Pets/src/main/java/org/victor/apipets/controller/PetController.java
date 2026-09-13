package org.victor.apipets.controller;

import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.victor.apipets.model.Cor;
import org.victor.apipets.model.Pet;
import org.victor.apipets.service.PetService;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("api/pets")
public class PetController {

    @Autowired
    private PetService petService;

    @GetMapping
    public ResponseEntity<List<Pet>> ListarPets(){
            return ResponseEntity.ok(petService.BuscarPets());
    }

    @GetMapping("/{id}")
    public ResponseEntity<Pet> ListarPetPorId(@PathVariable Long id) {
        Optional<Pet> PetEncontrado = petService.BuscarPetPorId(id);
        return PetEncontrado.map(ResponseEntity::ok).orElseGet(() -> ResponseEntity.notFound().build());
    }

    @PostMapping
    public ResponseEntity<Pet> AdicionarPet(@Valid @RequestBody Pet pet) {
        Pet PetSalvo = petService.AdicionarPet(pet);
        return ResponseEntity.status(201).body(PetSalvo);
    }

    @PutMapping("/{id}")
    public ResponseEntity<Pet> AtualizarPet(@Valid @PathVariable Long id, @RequestBody Pet pet){
        Pet PetAtualizado = petService.AtualizarPetPorId(id, pet.getNome(), pet.getDataNasc(), pet.getCor(), pet.getRaca());
        if(PetAtualizado == null){
            return ResponseEntity.notFound().build();
        }

        return ResponseEntity.ok(PetAtualizado);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> DeletarPet(@PathVariable Long id) {
        petService.DeletarPetPorId(id);
        return ResponseEntity.noContent().build();
    }


}
