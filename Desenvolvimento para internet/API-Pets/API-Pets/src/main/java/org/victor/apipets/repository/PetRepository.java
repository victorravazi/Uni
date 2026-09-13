package org.victor.apipets.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.victor.apipets.model.Pet;

@Repository
public interface PetRepository extends JpaRepository<Pet, Long> {

}
