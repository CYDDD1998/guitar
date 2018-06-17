package com.example.demo.dao;

import com.example.demo.domain.Guitar;
import org.springframework.data.repository.CrudRepository;

public interface GuitarDao extends CrudRepository<Guitar,Integer> {

}
