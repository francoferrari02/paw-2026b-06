package ar.edu.itba.paw.webapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Pagina de demostracion de la libreria de componentes (custom tags).
 * No tiene logica de negocio: solo renderiza la vista que ejercita los tags.
 */
@Controller
public class ComponentsController {

    @RequestMapping("/components")
    public ModelAndView components() {
        return new ModelAndView("components/index");
    }
}
