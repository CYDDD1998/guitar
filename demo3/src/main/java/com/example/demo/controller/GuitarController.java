package com.example.demo.controller;

import com.example.demo.domain.Guitar;
import com.example.demo.service.GuitarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class GuitarController {
    @Autowired
    private GuitarService guitarService;

    @GetMapping("/")
    public String findAll(Model model){
        Iterable<Guitar> all = guitarService.findAll();
        model.addAttribute("guitars",guitarService.findAll());
        return "list";
    }
    @PostMapping("/add")
    public String add(Guitar guitar){
        guitarService.addGuitar(guitar);
        return "redirect:/";
    }
    @GetMapping("/delete/{id}")
    public String deleteById(@PathVariable Integer id){
        guitarService.deleteById(id);
        return "redirect:/";
    }

}
