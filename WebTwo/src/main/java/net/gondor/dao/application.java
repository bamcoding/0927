package net.gondor.dao;

import java.util.List;

import net.gondor.vo.VO;

public class application {
	public static void main(String[] args){
		Dao dao = new DaoImpl();
		List<VO> vos = dao.getAll();
		System.out.println("크기 : "+vos.size());
		for(VO vo:vos){
			System.out.println("id : "+vo.getId());
		}
	}
}
