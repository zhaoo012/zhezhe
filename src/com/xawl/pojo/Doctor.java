/**
 * 
 */
package com.xawl.pojo;

/**
 * <p>Title:Doctor
 * <p>Description:<p>
 * @author Twenty-seven
 * @date 2020年3月15日 下午7:38:16
 */
public class Doctor {
	
	private String doc_name;//姓名
	private String doc_sex;//性别
	private String doc_id;//id
	private String doc_department;//部门
	private String doc_info;//医生简介
	
	
	/**
	 * @return the doc_name
	 */
	public String getDoc_name() {
		return doc_name;
	}
	/**
	 * @return the doc_sex
	 */
	public String getDoc_sex() {
		return doc_sex;
	}
	/**
	 * @return the doc_id
	 */
	public String getDoc_id() {
		return doc_id;
	}
	/**
	 * @return the doc_department
	 */
	public String getDoc_department() {
		return doc_department;
	}
	/**
	 * @return the doc_info
	 */
	public String getDoc_info() {
		return doc_info;
	}
	/**
	 * @param doc_name the doc_name to set
	 */
	public void setDoc_name(String doc_name) {
		this.doc_name = doc_name;
	}
	/**
	 * @param doc_sex the doc_sex to set
	 */
	public void setDoc_sex(String doc_sex) {
		this.doc_sex = doc_sex;
	}
	/**
	 * @param doc_id the doc_id to set
	 */
	public void setDoc_id(String doc_id) {
		this.doc_id = doc_id;
	}
	/**
	 * @param doc_department the doc_department to set
	 */
	public void setDoc_department(String doc_department) {
		this.doc_department = doc_department;
	}
	/**
	 * @param doc_info the doc_info to set
	 */
	public void setDoc_info(String doc_info) {
		this.doc_info = doc_info;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Doctor [doc_name=" + doc_name + ", doc_sex=" + doc_sex
				+ ", doc_id=" + doc_id + ", doc_department=" + doc_department
				+ ", doc_info=" + doc_info + "]";
	}
	
	
	
	

}
