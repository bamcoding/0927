package net.gondor.dao;

import java.util.List;

import net.gondor.vo.VO;

public interface Dao {
	public List<VO> getAll();
	public void insert(String subject, String content);
	public void delete(int id);
	public void update(int id);
	public VO getOne(int id);
	
}
