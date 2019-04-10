package com.sp.community.worboard;

import java.util.List;
import java.util.Map;

public class WorBoardService {
	
	public int insertWorBoard(WorBoard dto, String pathname);
	public int dataCount(Map<String, Object> map);
	public List<WorBoard> listWorBoard(Map<String, Object> map);
	public List<WorBoard> listWorBoardTop();
	public int updateHitCount(int num);
	public WorBoard readWorBoard(int num);
	public WorBoard preReadWorBoard(Map<String, Object> map);
	public WorBoard nextReadWorBoard(Map<String, Object> map);
	public int updateWorBoard(WorBoard dto, String pathname);
	public int deleteWorBoard(int num, String pathname);
	
	public int insertFile(WorBoard dto);
	public List<WorBoard> listFile(int num);
	public WorBoard readFile(int fileNum);
	public int deleteFile(Map<String, Object> map);
	
}
