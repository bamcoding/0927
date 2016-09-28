package net.gondor.dao;

import net.gondor.vo.VO;

public class DaoImpl implements Dao {

	public void data() {
		VO vo = null;
		for (int i = 1; i <= 3; i++) {
			new VO();
			vo.setId(i);
			vo.setSubject("첫 번째 글입니다.");
			vo.setAuthor("이근재");
			vo.setDate("2016-09-28");
			vo.setHitCount(0);
			vo.setLikeCount(0);
		}
	}

	@Override
	public void getAll() {
		
	}

	@Override
	public void insert(String subject, String content) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub

	}

	@Override
	public void update(int id) {
		// TODO Auto-generated method stub

	}

	@Override
	public void getOne(int id) {
		// TODO Auto-generated method stub

	}

}
