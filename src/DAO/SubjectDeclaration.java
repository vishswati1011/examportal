package DAO;

import java.util.ArrayList;
import java.util.List;

import bean.Subjects;

public interface SubjectDeclaration {
	public int insertTopic(Subjects sub);
	public int update(int id,Subjects sub);
	public boolean delete(int id);
	public Subjects selectSubject(int id);
	public List selectAllSubject();
	public List searchByName(String name);
	public boolean searchBySubject(Subjects sub);
	public boolean searchByTopic(int id,String submitby,String tname,int sid);
	//public boolean searchByQuestion(int id,int tid,String ques,ArrayList al);
	public int SearchBytopicid(String name);
	public boolean saveQuestion(int id,String ques,String option1,String option2,String option3,String option4,String Answer,int tid);
	
	public int id(String name);
}
