package org.victor.apipets.model;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;

import java.time.LocalDate;

@Entity
public class Pet {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id_pet;

    @NotBlank
    @Size(max = 50)
    private String nome;
    
    private LocalDate dataNasc;

    @Enumerated(EnumType.STRING)
    private Cor cor;

    @NotBlank
    private String raca;


    public Pet(String nome, LocalDate dataNasc, Cor cor, String raca){
        this.nome = nome;
        this.dataNasc = dataNasc;
        this.cor = cor;
        this.raca = raca;
    }

    public Pet() { }

    public Long getId_pet() {
        return id_pet;
    }

    public Cor getCor() {
        return cor;
    }

    public String getNome() {
        return nome;
    }

    public String getRaca() {
        return raca;
    }

    public LocalDate getDataNasc() {
        return dataNasc;
    }

    public void setCor(Cor cor) {
        this.cor = cor;
    }

    public void setDataNasc(LocalDate dataNasc) {
        this.dataNasc = dataNasc;
    }

    public void setId_pet(Long id_pet) {
        this.id_pet = id_pet;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setRaca(String raca) {
        this.raca = raca;
    }
}
