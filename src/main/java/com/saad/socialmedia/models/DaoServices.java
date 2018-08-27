package com.saad.socialmedia.models;

import java.util.ArrayList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author saad
 *
 */
@Service
public class DaoServices {

	@Autowired
	private UserRepository repository;

	public ArrayList<User> getAllUsers(){
		ArrayList<User> list = new ArrayList<>();
		repository.findAll().forEach(list::add);
		return list;
	}

	public User getUserById(int id) {
		return repository.findOne(id);
	}

	public User getUserByEmailAndPassword(String email,String password){
		ArrayList<User> allUsers = getAllUsers();
		for (User user: allUsers) {
			if (user.getEmail().equals(email) && user.getPassword().equals(password)){
				return user;
			}
		}
		return null;
	}

	public User addUser(User user) {
		return repository.save(user);
	}

	public void updateUser(int id, User user) {
		repository.save(user);
	}

	public void deleteUser(int id) {
		repository.delete(id);
	}

}
