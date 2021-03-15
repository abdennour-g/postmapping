package com.example.post.servlet;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.annotation.Transient;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.post.dao.UserRepository;
import com.example.post.ent.User;

@Controller
public class control {
	@Transient
	@Autowired
	private UserRepository userdao;
@GetMapping(value = "/")
	public String page(@ModelAttribute("command") User user,Model model) {
	model.addAttribute("users", userdao.findAll());
		return "home";
	}
@PostMapping("/save")
public String save(@ModelAttribute("command") User user, Model model) {
	userdao.save(user);
	return "redirect:/";
}
@PostMapping("/delete")
public String delete(@ModelAttribute("id") Long id, Model model) {
	userdao.deleteById(id);
	return "redirect:/";
}

}

