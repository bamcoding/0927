package net.gondor.dao;

public interface Dao {
	public void getAll();
	public void insert(String subject, String content);
	public void delete(int id);
	public void update(int id);
	public void getOne(int id);
	
}
