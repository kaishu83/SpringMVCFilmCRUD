package com.skilldistillery.film.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.validation.BindingResult;

import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.film.data.FilmDAO;
import com.skilldistillery.film.entities.Film;

@Controller
public class FilmController {

	@Autowired
	private FilmDAO dao;

	@RequestMapping("home.do")
	public String home() {
		return "WEB-INF/home.jsp";
	}

	@RequestMapping(path = "FilmById.do", method = RequestMethod.GET)
	public ModelAndView FilmById(int filmId) {
		ModelAndView mv = new ModelAndView();

		Film film = dao.findFilmById(filmId);
		mv.addObject("film", film);
		mv.setViewName("WEB-INF/result.jsp");
		return mv;
	}

	@RequestMapping(path = "FilmsByKeyword.do", method = RequestMethod.GET)
	public ModelAndView FilmById(String keyword) {
		ModelAndView mv = new ModelAndView();

		List<Film> films = dao.findFilmByKeyWord(keyword);
		mv.addObject("films", films);
		mv.setViewName("WEB-INF/result.jsp");
		return mv;
	}
	@RequestMapping(path = "delete.do", method=RequestMethod.POST)
	public ModelAndView delete(int filmId) {
		ModelAndView mv = new ModelAndView();
		
		boolean deleted = dao.deleteFilm(filmId);
		mv.addObject("deleted", deleted);
		mv.setViewName("WEB-INF/result.jsp");
		return mv;
	}

	@RequestMapping(path = "create.do")
	public ModelAndView create() {

		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/create.jsp");

		return mv;
	}

	@RequestMapping(path = "created.do", method=RequestMethod.POST)
	public ModelAndView created(Film film) {
		ModelAndView mv = new ModelAndView();
		Film aFilm = dao.createFilm(film);
		if (aFilm == null) {
			mv.setViewName("WEB-INF/error.jsp");
			return mv;
		}
		mv.addObject("film", aFilm);
		mv.setViewName("WEB-INF/result.jsp");
		return mv;
	}

	@RequestMapping(path = "update.do")
	public ModelAndView update(int filmId) {

		ModelAndView mv = new ModelAndView();
		mv.addObject(dao.findFilmById(filmId));
		mv.setViewName("WEB-INF/update.jsp");

		return mv;
	}

	@RequestMapping(path = "updated.do", method=RequestMethod.POST)
	public ModelAndView updated(Film film, int filmId) {
		ModelAndView mv = new ModelAndView();
		
		if(dao.updateFilm(film, filmId) == null) {
			mv.setViewName("WEB-INF/error.jsp");
			return mv;
		}

		mv.addObject("film", dao.updateFilm(film, filmId));
		mv.setViewName("WEB-INF/result.jsp");
		return mv;
	}

}
