package com.amarnath_sah.todo_application.todo;

import java.time.LocalDate;
import java.util.List;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import jakarta.validation.Valid;

@Controller
@SessionAttributes("name")
public class TodoControllerJpa {
	
	
	
	public TodoControllerJpa( TodoRepository todoRepository) {
		super();
		this.todoRepository = todoRepository;
	}
	
	private TodoRepository todoRepository;


	@RequestMapping("todopage")
	public String listAllTodos(ModelMap model)
	{
		String username = grtLoddedInUsername(model);
		
		List<Todo> todos = todoRepository.findByUsername(username);
		
		model.put("todos", todos);
		return "todopages";
	}

	
	@RequestMapping(value="add-todo", method = RequestMethod.GET)
	public String AddTodoGet(ModelMap model)
	{
		String username = grtLoddedInUsername(model);
		
		Todo todo = new Todo(0, username, "", LocalDate.now().plusMonths(8), false);
		model.put("todo", todo);
		return "addTodo";
	}
	
	@RequestMapping(value="add-todo", method = RequestMethod.POST)
	public String AddTodoPost(ModelMap model,@Valid Todo todo, BindingResult result)
	{
		if(result.hasErrors())
		{
			return "addTodo";
		}
		
		String username = grtLoddedInUsername(model);
		todo.setUsername(username);
		todoRepository.save(todo);
		//todoService.addNewTodo(username, todo.getDescripition(), todo.getTargetdate(), todo.isDone());
		
		return "redirect:todopage";
	}
	
	@RequestMapping("delete-todo")
	public String DeleteTodo(@RequestParam int id)
	{
		todoRepository.deleteById(id);
		return "redirect:todopage";
	}
	
	@RequestMapping(value="edit-todo", method = RequestMethod.GET)
	public String ShowEditTodo(@RequestParam int id, ModelMap model)
	{
		Todo todo = todoRepository.findById(id).get();
		model.addAttribute(todo);
		return "addTodo";
	}
	
	@RequestMapping(value="edit-todo", method = RequestMethod.POST)
	public String EditTodoPost(ModelMap model,@Valid Todo todo, BindingResult result)
	{
		if(result.hasErrors())
		{
			return "addTodo";
		}
		
		String username = grtLoddedInUsername(model);
		todo.setUsername(username);
		//todoService.updateTodo(todo);
		todoRepository.save(todo);
		
		return "redirect:todopage";
	}
	
	private String grtLoddedInUsername(ModelMap model) {
		Authentication authenticatedUser = SecurityContextHolder.getContext().getAuthentication();
		
		return authenticatedUser.getName();
	}
	
}
