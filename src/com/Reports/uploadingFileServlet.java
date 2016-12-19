package com.Reports;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUpload;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.RequestContext;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.fileupload.servlet.ServletRequestContext;

public class uploadingFileServlet  extends HttpServlet
{
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
		throws ServletException, IOException {
		doPost(req, resp);
  }
   @Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
	    req.setCharacterEncoding("UTF-8");
	    resp.setContentType("text/html;charset=UTF-8");
	    ReportsModel Reports_Model=new ReportsModel();
	    uploadingFileServlet replay = new uploadingFileServlet();
		String url = replay.upload(req, Reports_Model);
		Reports_Model.setPath(url);	
		boolean bln =ReportsDAO.saveReports(Reports_Model);
		if(bln==true)
		{
			resp.sendRedirect("uploadingFile/uploadingFile.jsp");
		}
		else
		{
			resp.sendRedirect("");
		}
	}
	public String upload(HttpServletRequest request, ReportsModel Reports_Model)
	throws ServletException, IOException {
		//����request���룬��Ҫ��Ϊ�˴�����ͨ������е���������
		request.setCharacterEncoding("gb2312");
		//�����request���з�װ��RequestContext�ṩ�˶�request������ʷ���
		RequestContext requestContext = new ServletRequestContext(request);
		String url=null;
		//�жϱ��Ƿ���Multipart���͵ġ��������ֱ�Ӷ�request�����жϣ������Ѿ���ǰ���÷���
		if(FileUpload.isMultipartContent(requestContext)){
			DiskFileItemFactory factory = new DiskFileItemFactory();
			//�����ļ��Ļ���·��
			//factory.setRepository(new File("c:/tmp/"));
			ServletFileUpload upload = new ServletFileUpload(factory);
			//�����ϴ��ļ���С�����ޣ�-1��ʾ������ 
			upload.setSizeMax(100*1024*1024);
			List items = new ArrayList();
			try {
				//�ϴ��ļ��������������еı��ֶΣ�������ͨ�ֶκ��ļ��ֶ�
				items = upload.parseRequest(request);
			} catch (FileUploadException e1) {
				System.out.println("�ļ��ϴ���������" + e1.getMessage());
			}
			//�����ÿ���ֶν��д�������ͨ�ֶκ��ļ��ֶ�
			Iterator it = items.iterator();
			while(it.hasNext()){
				FileItem fileItem = (FileItem) it.next();
				//�������ͨ�ֶ�
				if(fileItem.isFormField()){   
					System.out.println(fileItem.getFieldName() + "   " + fileItem.getName() + "   " + new String(fileItem.getString().getBytes("iso8859-1"), "gbk"));
					if("OrgName".equals(fileItem.getFieldName())){
						Reports_Model.setAcceptOrgID(Integer.parseInt(new String(fileItem.getString().getBytes("iso8859-1"), "UTF-8")));
					}
					else if("OrgName2".equals(fileItem.getFieldName()))
					{
						Reports_Model.setSendOrgID(Integer.parseInt(new String(fileItem.getString().getBytes("iso8859-1"), "UTF-8")));
					}
					else if("domainID".equals(fileItem.getFieldName()))
					{
						Reports_Model.setDomainID(Integer.parseInt(new String(fileItem.getString().getBytes("iso8859-1"), "UTF-8")));
					}
					else if("topic".equals(fileItem.getFieldName())){
						Reports_Model.setTopic(new String(fileItem.getString().getBytes("iso8859-1"), "UTF-8"));
					}
					else if("fileName".equals(fileItem.getFieldName())){
						Reports_Model.setFileName(new String(fileItem.getString().getBytes("iso8859-1"), "UTF-8"));
					}
					else if("uploadingFile".equals(fileItem.getFieldName())){
						Reports_Model.setPath(new String(fileItem.getString().getBytes("iso8859-1"), "UTF-8"));
					}
					else if("note".equals(fileItem.getFieldName())){
						Reports_Model.setNote(new String(fileItem.getString().getBytes("iso8859-1"), "UTF-8"));
					}
						
				}else{
					System.out.println(fileItem.getFieldName() + "   " +
							fileItem.getName() + "   " +
							fileItem.isInMemory() + "    " +
							fileItem.getContentType() + "   " +
							fileItem.getSize());
					//�����ļ�����ʵ���ǰѻ����������д��Ŀ��·����
					if(fileItem.getName()!=null && fileItem.getSize()!=0){
						File fullFile = new File(fileItem.getName());
						url = request.getRealPath("UploadFile")+"/" + fullFile.getName();
						File newFile = new File(url);//��Ҫָ���ļ��ϴ����ŵ�·��
						try {
							fileItem.write(newFile);
						} catch (Exception e) {
							e.printStackTrace();
						}
						url = "UploadFile/"+fullFile.getName();
					}else{
						System.out.println("�ļ�û��ѡ�� �� �ļ�����Ϊ��");
					}
				}
	
			}
		}
		return url;
	}
}
