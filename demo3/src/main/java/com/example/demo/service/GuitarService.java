package com.example.demo.service;

import com.example.demo.dao.GuitarDao;
import com.example.demo.domain.Guitar;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GuitarService {

    @Autowired
    private GuitarDao guitarDao;


    public void addGuitar(Guitar guitar){
        guitarDao.save(guitar);
    }

    public Iterable<Guitar> findAll(){
        return  guitarDao.findAll();
    }

    public void deleteById(Integer id){
        guitarDao.deleteById(id);
    }
}
