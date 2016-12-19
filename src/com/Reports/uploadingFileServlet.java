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
		//设置request编码，主要是为了处理普通输入框中的中文问题
		request.setCharacterEncoding("gb2312");
		//这里对request进行封装，RequestContext提供了对request多个访问方法
		RequestContext requestContext = new ServletRequestContext(request);
		String url=null;
		//判断表单是否是Multipart类型的。这里可以直接对request进行判断，不过已经以前的用法了
		if(FileUpload.isMultipartContent(requestContext)){
			DiskFileItemFactory factory = new DiskFileItemFactory();
			//设置文件的缓存路径
			//factory.setRepository(new File("c:/tmp/"));
			ServletFileUpload upload = new ServletFileUpload(factory);
			//设置上传文件大小的上限，-1表示无上限 
			upload.setSizeMax(100*1024*1024);
			List items = new ArrayList();
			try {
				//上传文件，并解析出所有的表单字段，包括普通字段和文件字段
				items = upload.parseRequest(request);
			} catch (FileUploadException e1) {
				System.out.println("文件上传发生错误" + e1.getMessage());
			}
			//下面对每个字段进行处理，分普通字段和文件字段
			Iterator it = items.iterator();
			while(it.hasNext()){
				FileItem fileItem = (FileItem) it.next();
				//如果是普通字段
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
					//保存文件，其实就是把缓存里的数据写到目标路径下
					if(fileItem.getName()!=null && fileItem.getSize()!=0){
						File fullFile = new File(fileItem.getName());
						url = request.getRealPath("UploadFile")+"/" + fullFile.getName();
						File newFile = new File(url);//需要指定文件上传后存放的路劲
						try {
							fileItem.write(newFile);
						} catch (Exception e) {
							e.printStackTrace();
						}
						url = "UploadFile/"+fullFile.getName();
					}else{
						System.out.println("文件没有选择 或 文件内容为空");
					}
				}
	
			}
		}
		return url;
	}
}
