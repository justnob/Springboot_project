package com.amarnath_sah.todo_application.todo;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;

import org.springframework.stereotype.Service;

import jakarta.validation.Valid;

@Service
public class TodoService {
	
	private static List<Todo> todos = new ArrayList();
	
	private static int todoCount = 0;
	
	static
	{
		todos.add(new Todo(++todoCount, "Amarnath.sah", "To Learn Java", LocalDate.now().plusMonths(3), false));
		todos.add(new Todo(++todoCount, "Amarnath.sah", "To Learn Angular", LocalDate.now().plusMonths(3), false));
		todos.add(new Todo(++todoCount, "Amarnath.sah", "To Learn How To Build Web Application", LocalDate.now().plusMonths(5), false));
		todos.add(new Todo(++todoCount, "Amarnath.sah", "To Learn Docker", LocalDate.now().plusMonths(10), false));
		
	}
	
	public List<Todo> findByUsername(String username)
	{
		Predicate<? super Todo> predicate =(todo -> todo.getUsername().equalsIgnoreCase(username));
		return todos.stream().filter(predicate).toList();
	}
	
	public void addNewTodo(String username, String description, LocalDate targetdate, boolean done)
	{
		Todo todo = new Todo(++todoCount, username, description, targetdate, done);
		
		todos.add(todo);
	}
	
	public void deleteById(int id)
	{
		Predicate<? super Todo> predicate =(todo -> todo.getId() == id);
		todos.removeIf(predicate);
	}

	public Todo findById(int id) {
		Predicate<? super Todo> predicate =(todo -> todo.getId() == id);

		Todo todo = todos.stream().filter(predicate).findFirst().get();
		return todo;
		
	}

	public void updateTodo(@Valid Todo todo) {
		deleteById(todo.getId());
		todos.add(todo);
		
	}
	

}
