package net.gondor.dao;

import java.util.ArrayList;
import java.util.List;

import net.gondor.vo.VO;

public class DaoImpl implements Dao {

	@Override
	public List<VO> getAll() {	
		List<VO> vos = new ArrayList<VO>();
		VO vo = null;
		for (int i = 0; i < 3; i++) {
			vo = new VO();
			vo.setId(vos.size()+1);
			vo.setSubject("첫 번째 글입니다.");
			vo.setContent("이런 저런글..");
			vo.setAuthor("이근재");
			vo.setDate("2016-09-28 15:33:14");
			vo.setHitCount((int)(Math.random()*10)+1);
			vo.setLikeCount((int)(Math.random()*10)+1);
			vos.add(vo);
		}
		return vos;
	}

	@Override
	public void insert(String subject, String content) {
		// TODO Auto-generated method stub
		List<VO> vos = getAll();
		VO vo = new VO();
		vo.setId(vos.size());
		vo.setSubject(subject);
		vo.setContent(content);
		vo.setAuthor("이근재");
		vo.setDate("2016-09-28");
		vo.setHitCount(0);
		vo.setLikeCount(0);
		vos.add(vo);
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
	public VO getOne(int id) {
		List<VO> vos = this.getAll();
		VO vo = new VO();
		int temp =0;
		for (int i = 0; i < vos.size(); i++) {
			temp = vos.get(i).getId();
			if(temp == id){
				vo = vos.get(i);
				break;
			}
		}
		return vo;
	}

}
