package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import DBC.DBConnection;

import com.Model.Contract;
import com.Model.Contractors;
import com.Model.Contractsignplots;
import com.Model.Firmland;
import com.Model.Labors;
import com.Model.Organizations;
import com.Model.Orgtype;
import com.Model.Plantlogs;
import com.Model.Plantoperations;
import com.Model.Plotrotations;
import com.Model.TypeSet;
import com.yuModel.EmployeeModel;
import com.yuModel.ObjectsModel;
import com.yuModel.SubtypesetModel;

public class DAO {
	public static int findCount(){
		int count=0;
		try {
			String sql="select count(*) from Contractors"; 
			Connection conn=DBConnection.getConnection();
			PreparedStatement prst=conn.prepareStatement(sql);
			ResultSet rs=prst.executeQuery();
			while(rs.next()){
				count=rs.getInt(1);
			}
			
			rs.close();
			prst.close();
			conn.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
			return count;
		}

	public static List<Contractors> getuser(int begin,int pagesize){
		ArrayList vec = new ArrayList();
		String sql="select * from (select Contractors.*,rownum num from Contractors) c where c.num>"+begin+" and c.num<="+(begin+pagesize);
		Connection conn = new DBConnection().getConnection();
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs =ps.executeQuery();
			while(rs.next()){
				Contractors user= new Contractors();
				user.setBelongOrgID(rs.getInt("belongOrgID"));
				user.setIdentityid(rs.getString("identityid"));
				user.setInternalid(rs.getString("internalid"));
				user.setName(rs.getString("name"));
				user.setTelephone(rs.getString("telephone"));
				user.setAddress(rs.getString("address"));
				user.setNote(rs.getString("note"));
			
				vec.add(user);
				
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return vec;
	}
	
	
	public static List<Contractors> getuser(){
		ArrayList vec = new ArrayList();
		String sql="select * from  Contractors";
		Connection conn = new DBConnection().getConnection();
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs =ps.executeQuery();
			while(rs.next()){
				Contractors user= new Contractors();
				user.setBelongOrgID(rs.getInt("belongOrgID"));
				user.setIdentityid(rs.getString("identityid"));
				user.setInternalid(rs.getString("internalid"));
				user.setName(rs.getString("name"));
				user.setTelephone(rs.getString("telephone"));
				user.setAddress(rs.getString("address"));
				user.setNote(rs.getString("note"));
			
				vec.add(user);
				
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return vec;
	}
	
	public static List<Contractors> getuserxinxi(String name){
		ArrayList vec = new ArrayList();
		String sql="select * from  Contractors where name like '%风%'";
		Connection conn = new DBConnection().getConnection();
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs =ps.executeQuery();
			while(rs.next()){
				Contractors user= new Contractors();
				user.setBelongOrgID(rs.getInt("belongOrgID"));
				user.setIdentityid(rs.getString("identityid"));
				user.setInternalid(rs.getString("internalid"));
				user.setName(rs.getString("name"));
				user.setTelephone(rs.getString("telephone"));
				user.setAddress(rs.getString("address"));
				user.setNote(rs.getString("note"));
			System.out.println("000"+rs.getString("name"));
				vec.add(user);
				
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return vec;
	}
	
	public static Contractors getuserByid(String identityid){
		Contractors user= new Contractors();
		String sql="select * from Contractors where identityid='"+identityid+"'";
		Connection conn = new DBConnection().getConnection();
		
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs =ps.executeQuery();
			while(rs.next()){
			
				user.setBelongOrgID(rs.getInt("belongOrgID"));
				user.setInternalid(rs.getString("internalid"));
				user.setName(rs.getString("name"));
				user.setTelephone(rs.getString("telephone"));
				user.setAddress(rs.getString("address"));
				user.setNote(rs.getString("note"));
				user.setIdentityid(rs.getString("identityid"));
				
				
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return user;
	}
	public static List<Organizations> getAllOrg(){
		ArrayList vec = new ArrayList();
		String sql="select * from Organizations";
		Connection conn = new DBConnection().getConnection();
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs =ps.executeQuery();
			while(rs.next()){
				Organizations org= new Organizations();
				
				org.setOrgid(rs.getBigDecimal("orgid"));
				org.setOrgtypeid(rs.getInt("orgtypeid"));
				org.setOrgcode(rs.getString("orgcode"));
				org.setOrgname(rs.getString("orgname"));
				org.setAddress(rs.getString("address"));
				org.setDirector(rs.getString("director"));
				org.setTelephone(rs.getString("telephone"));
				org.setFax(rs.getString("fax"));
				org.setPostcode(rs.getString("postcode"));
				org.setWeb(rs.getString("web"));
				org.setSafelevelid(rs.getBigDecimal("safelevelid"));
				org.setFirmlandarea(rs.getDouble("firmlandarea"));
				org.setWaterlandarea(rs.getDouble("waterlandarea"));
				org.setPondarea(rs.getDouble("pondarea"));
				org.setForestandorchardarea(rs.getDouble("forestandorchardarea"));
				org.setNote(rs.getString("note"));
				
				
				vec.add(org);
				
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return vec;
	}
	public static List<Organizations> getAllOrgbyid(String orgid){
		ArrayList vec = new ArrayList();
		String sql="select * from Organizations where orgid='"+orgid+"'";
		Connection conn = new DBConnection().getConnection();
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs =ps.executeQuery();
			while(rs.next()){
				Organizations org= new Organizations();
				
				org.setOrgid(rs.getBigDecimal("orgid"));
				org.setOrgtypeid(rs.getInt("orgtypeid"));
				org.setOrgcode(rs.getString("orgcode"));
				org.setOrgname(rs.getString("orgname"));
				org.setAddress(rs.getString("address"));
				org.setDirector(rs.getString("director"));
				org.setTelephone(rs.getString("telephone"));
				org.setFax(rs.getString("fax"));
				org.setPostcode(rs.getString("postcode"));
				org.setWeb(rs.getString("web"));
				org.setSafelevelid(rs.getBigDecimal("safelevelid"));
				org.setFirmlandarea(rs.getDouble("firmlandarea"));
				org.setWaterlandarea(rs.getDouble("waterlandarea"));
				org.setPondarea(rs.getDouble("pondarea"));
				org.setForestandorchardarea(rs.getDouble("forestandorchardarea"));
				org.setNote(rs.getString("note"));
				
				
				vec.add(org);
				
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return vec;
	}
	
	
	
	public static List<Organizations> getAllOrgs(String orgtypeid){
		ArrayList vec = new ArrayList();
		String sql="select * from Organizations where orgtypeid='"+orgtypeid+"'";
		Connection conn = new DBConnection().getConnection();
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs =ps.executeQuery();
			while(rs.next()){
				Organizations org= new Organizations();
				
				org.setOrgid(rs.getBigDecimal("orgid"));
				org.setOrgtypeid(rs.getInt("orgtypeid"));
				org.setOrgcode(rs.getString("orgcode"));
				org.setOrgname(rs.getString("orgname"));
				org.setAddress(rs.getString("address"));
				org.setDirector(rs.getString("director"));
				org.setTelephone(rs.getString("telephone"));
				org.setFax(rs.getString("fax"));
				org.setPostcode(rs.getString("postcode"));
				org.setWeb(rs.getString("web"));
				org.setSafelevelid(rs.getBigDecimal("safelevelid"));
				org.setFirmlandarea(rs.getDouble("firmlandarea"));
				org.setWaterlandarea(rs.getDouble("waterlandarea"));
				org.setPondarea(rs.getDouble("pondarea"));
				org.setForestandorchardarea(rs.getDouble("forestandorchardarea"));
				org.setNote(rs.getString("note"));
				
				
				vec.add(org);
				
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return vec;
	}
	
	/**
	 * 执行更新语句
	 * @param sql
	 * @return
	 */
	public int Update(String sql){
		int i=0;
		try {
			Connection conn = new DBConnection().getConnection();
			PreparedStatement ps =conn.prepareStatement(sql);
			i=ps.executeUpdate();
			ps.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return i;
	}



public static List<EmployeeModel> getUserInfo(){
	String sql="select EmpID,EmpName,EmpPassWord,Duty from Employee";
	ArrayList Employeelist=new ArrayList();
	try {
		
		Connection conn = DBConnection.getConnection();
		PreparedStatement ps = conn.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		while(rs.next()){
			
			EmployeeModel user = new EmployeeModel();
			user.setEmpname(rs.getString("EmpName"));
			user.setEmpid(rs.getString("EmpID"));
			user.setEmppassword(rs.getString("EmpPassWord"));
			user.setDuty(rs.getString("Duty"));
			
			Employeelist.add(user);
			
		}
		
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return Employeelist;
	
}
public static EmployeeModel getUsersInfo(String empid){
	String sql="select EmpID,EmpName,EmpPassWord,Duty,IdentityID from Employee where empid='"+empid+"'";

	EmployeeModel user = new EmployeeModel();
	try {
		
		Connection conn = DBConnection.getConnection();
		PreparedStatement ps = conn.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		while(rs.next()){


			user.setEmpname(rs.getString("empname"));
			user.setEmpid(rs.getString("empid"));
			user.setEmppassword(rs.getString("emppassword"));
			user.setDuty(rs.getString("duty"));
			user.setIdentityid(rs.getString("identityid"));
		
		}
		
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return user;
	
}

public static List<Contract> getAllContract(){
	String sql="select * from Contract";
	ArrayList list=new ArrayList();
	try {
		
		Connection conn = DBConnection.getConnection();
		PreparedStatement ps = conn.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		while(rs.next()){
			
			Contract user = new Contract();
			user.setContractid(rs.getBigDecimal("contractid"));
			user.setContractcode(rs.getString("contractcode"));
			user.setProduceorg(rs.getInt("produceorg"));
			user.setIdentityid(rs.getString("identityid"));
			user.setTypeid(rs.getString("typeid"));
			user.setSigntime(rs.getDate("signtime"));
			user.setEffectivedate(rs.getDate("effectivedate"));
			user.setExpiredate(rs.getDate("expiredate"));
			user.setMoneyamount(rs.getDouble("moneyamount"));
			user.setArea(rs.getDouble("area"));
			user.setDuedate(rs.getDate("duedate"));
			user.setArrearage(rs.getDouble("arrearage"));
			user.setNote(rs.getString("note"));
			
			list.add(user) ;
		}
		
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return list;
	
}

public static List<Contractsignplots> getAllsign(int id){
	String sql="select * from ContractSignPlots where contractid='"+id+"'";
	ArrayList list=new ArrayList();
	try {
		
		Connection conn = DBConnection.getConnection();
		PreparedStatement ps = conn.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		while(rs.next()){
			
			Contractsignplots user = new Contractsignplots();
			user.setContractsignplotsid(rs.getBigDecimal("contractsignplotsid"));
			user.setContractid(rs.getInt("contractid"));
			user.setPlotid(rs.getString("plotid"));
			user.setPlotarea(rs.getDouble("plotarea"));
			user.setPlotlocation(rs.getString("plotlocation"));
			user.setPlottype(rs.getString("plottype"));
			user.setGroupid(rs.getString("groupid"));
			user.setNote(rs.getString("note"));
			
			list.add(user) ;
		}
		
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return list;
	
}

public static List<Contract> getAllContract(String identityid){
	String sql="select * from Contract where identityid='"+identityid+"'";
	ArrayList list=new ArrayList();
	try {
		
		Connection conn = DBConnection.getConnection();
		PreparedStatement ps = conn.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		while(rs.next()){
			
			Contract user = new Contract();
			user.setContractid(rs.getBigDecimal("contractid"));
			user.setContractcode(rs.getString("contractcode"));
			user.setProduceorg(rs.getInt("produceorg"));
			user.setIdentityid(rs.getString("identityid"));
			user.setTypeid(rs.getString("typeid"));
			user.setSigntime(rs.getDate("signtime"));
			user.setEffectivedate(rs.getDate("effectivedate"));
			user.setExpiredate(rs.getDate("expiredate"));
			user.setMoneyamount(rs.getDouble("moneyamount"));
			user.setArea(rs.getDouble("area"));
			user.setDuedate(rs.getDate("duedate"));
			user.setArrearage(rs.getDouble("arrearage"));
			user.setNote(rs.getString("note"));
			list.add(user) ;
			
		}
		
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return list;
	
}

public static Contract getContract(String  identityid){
	String sql="select * from Contract where identityid='"+identityid+"'";
	Contract user = new Contract();
	try {
		
		Connection conn = DBConnection.getConnection();
		PreparedStatement ps = conn.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		while(rs.next()){
			
			
			user.setContractid(rs.getBigDecimal("contractid"));
			user.setContractcode(rs.getString("contractcode"));
			user.setProduceorg(rs.getInt("produceorg"));
			user.setIdentityid(rs.getString("identityid"));
			user.setTypeid(rs.getString("typeid"));
			user.setSigntime(rs.getDate("signtime"));
			user.setEffectivedate(rs.getDate("effectivedate"));
			user.setExpiredate(rs.getDate("expiredate"));
			user.setMoneyamount(rs.getDouble("moneyamount"));
			user.setArea(rs.getDouble("area"));
			user.setDuedate(rs.getDate("duedate"));
			user.setArrearage(rs.getDouble("arrearage"));
			user.setNote(rs.getString("note"));
			
			
		}
		
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return user;
	
}

public static Contract getContracts(String contractid){
	String sql="select * from Contract where contractid='"+contractid+"'";
	Contract user = new Contract();
	try {
		
		Connection conn = DBConnection.getConnection();
		PreparedStatement ps = conn.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		while(rs.next()){
			
			
			user.setContractid(rs.getBigDecimal("contractid"));
			user.setContractcode(rs.getString("contractcode"));
			user.setProduceorg(rs.getInt("produceorg"));
			user.setIdentityid(rs.getString("identityid"));
			user.setTypeid(rs.getString("typeid"));
			user.setSigntime(rs.getDate("signtime"));
			user.setEffectivedate(rs.getDate("effectivedate"));
			user.setExpiredate(rs.getDate("expiredate"));
			user.setMoneyamount(rs.getDouble("moneyamount"));
			user.setArea(rs.getDouble("area"));
			user.setDuedate(rs.getDate("duedate"));
			user.setArrearage(rs.getDouble("arrearage"));
			user.setNote(rs.getString("note"));
			
			
		}
		
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return user;
	
}

public static Contract getContract(int id){
	String sql="select * from Contract where contractid='"+id+"'";
	Contract user = new Contract();
	try {
		
		Connection conn = DBConnection.getConnection();
		PreparedStatement ps = conn.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		while(rs.next()){
			
			
			user.setContractid(rs.getBigDecimal("contractid"));
			user.setContractcode(rs.getString("contractcode"));
			user.setProduceorg(rs.getInt("produceorg"));
			user.setIdentityid(rs.getString("identityid"));
			user.setTypeid(rs.getString("typeid"));
			user.setSigntime(rs.getDate("signtime"));
			user.setEffectivedate(rs.getDate("effectivedate"));
			user.setExpiredate(rs.getDate("expiredate"));
			user.setMoneyamount(rs.getDouble("moneyamount"));
			user.setArea(rs.getDouble("area"));
			user.setDuedate(rs.getDate("duedate"));
			user.setArrearage(rs.getDouble("arrearage"));
			user.setNote(rs.getString("note"));
			
			
		}
		
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return user;
	
}

public static List<TypeSet> getAlltype(){
	String sql="select * from TypeSet";
	ArrayList list=new ArrayList();
	try {
		
		Connection conn = DBConnection.getConnection();
		PreparedStatement ps = conn.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		while(rs.next()){
			TypeSet type=new TypeSet();
			type.setTypeid(rs.getString("typeid"));
			type.setTypename(rs.getString("typename"));
			
			list.add(type) ;
		}
		
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return list;
	
}
public static List<Orgtype> getAllOrgType(){
	String sql="select * from OrgType";
	ArrayList list=new ArrayList();
	try {
		
		Connection conn = DBConnection.getConnection();
		PreparedStatement ps = conn.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		while(rs.next()){
			Orgtype type=new Orgtype();
		     type.setOrgtypeid(rs.getBigDecimal("orgtypeid"));
		     type.setOrgtypename(rs.getString("orgtypename"));
		     type.setNote(rs.getString("note"));

		
			list.add(type) ;
		}
		
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return list;
	
}


public static List<Orgtype> getOrgType(String orgtypeid){
	String sql="select * from OrgType where orgtypeid='"+orgtypeid+"'";
	ArrayList list=new ArrayList();
	try {
		
		Connection conn = DBConnection.getConnection();
		PreparedStatement ps = conn.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		while(rs.next()){
			Orgtype type=new Orgtype();
		     type.setOrgtypeid(rs.getBigDecimal("orgtypeid"));
		     type.setOrgtypename(rs.getString("orgtypename"));
		     type.setNote(rs.getString("note"));

		
			list.add(type) ;
		}
		
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return list;
	
}

public static Orgtype getType(String orgtypeid){
	String sql="select * from OrgType where orgtypeid='"+orgtypeid+"'";
	Orgtype type=new Orgtype();
	try {
		
		Connection conn = DBConnection.getConnection();
		PreparedStatement ps = conn.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		while(rs.next()){
			
		     type.setOrgtypeid(rs.getBigDecimal("orgtypeid"));
		     type.setOrgtypename(rs.getString("orgtypename"));
		     type.setNote(rs.getString("note"));

		
			
		}
		
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return type;
	
}


public static List<Labors> getAllLabors(String identityid){
	ArrayList list=new ArrayList();
	String sql="select * from Labors where identityid='"+identityid+"'";
	Connection conn = new DBConnection().getConnection();
	
	try {
		PreparedStatement ps = conn.prepareStatement(sql);
		ResultSet rs =ps.executeQuery();
		while(rs.next()){
			Labors lab= new Labors();
			lab.setLaborsid(rs.getBigDecimal("laborsid"));
			lab.setIdentityid(rs.getString("identityid"));
			lab.setName(rs.getString("name"));
			lab.setRelation(rs.getString("relation"));
			lab.setBirthday(rs.getDate("birthday"));
			lab.setGender(rs.getBigDecimal("gender"));
			lab.setNote(rs.getString("note"));
			list.add(lab);
			
		}
	} catch (Exception e) {
		
		e.printStackTrace();
	}
	return list;
}



public static List<Labors> getAllLabor(){
	ArrayList list=new ArrayList();
	String sql="select * from Labors";
	Connection conn = new DBConnection().getConnection();
	
	try {
		PreparedStatement ps = conn.prepareStatement(sql);
		ResultSet rs =ps.executeQuery();
		while(rs.next()){
			Labors lab= new Labors();
			lab.setLaborsid(rs.getBigDecimal("laborsid"));
			lab.setIdentityid(rs.getString("identityid"));
			lab.setName(rs.getString("name"));
			lab.setRelation(rs.getString("relation"));
			lab.setBirthday(rs.getDate("birthday"));
			lab.setGender(rs.getBigDecimal("gender"));
			lab.setNote(rs.getString("note"));
			list.add(lab);
			
		}
	} catch (Exception e) {
	
		e.printStackTrace();
	}
	return list;
}


public static List<Labors> getLabors(String laborsid){
	ArrayList list=new ArrayList();
	String sql="select * from Labors where laborsid='"+laborsid+"'";
	Connection conn = new DBConnection().getConnection();
	
	try {
		PreparedStatement ps = conn.prepareStatement(sql);
		ResultSet rs =ps.executeQuery();
		while(rs.next()){
			Labors lab= new Labors();
			lab.setLaborsid(rs.getBigDecimal("laborsid"));
			lab.setIdentityid(rs.getString("identityid"));
			lab.setName(rs.getString("name"));
			lab.setRelation(rs.getString("relation"));
			lab.setBirthday(rs.getDate("birthday"));
			lab.setGender(rs.getBigDecimal("gender"));
			lab.setNote(rs.getString("note"));
			list.add(lab);
		
			
		}
	} catch (Exception e) {
		
		e.printStackTrace();
	}
	return list;
}



public static List<Firmland> getAllgrow(){
	ArrayList list=new ArrayList();
	String sql="select * from FirmLand";
	Connection conn = new DBConnection().getConnection();
	
	try {
		PreparedStatement ps = conn.prepareStatement(sql);
		ResultSet rs =ps.executeQuery();
		while(rs.next()){
			Firmland grow= new Firmland();
			grow.setFirmlandid(rs.getBigDecimal("firmlandid"));
			grow.setContractsignplotsid(rs.getInt("contractsignplotsid"));
			grow.setGreenhousequantity(rs.getDouble("greenhousequantity"));
			grow.setGreenhousearea(rs.getDouble("greenhousearea"));
			grow.setSoilcharacterize(rs.getString("soilcharacterize"));
			grow.setNote(rs.getString("note"));
			list.add(grow);
		}
	} catch (Exception e) {
	
		e.printStackTrace();
	}
	return list;
}


public static Firmland getAllgrow(int contractsignplotsid){
	Firmland grow= new Firmland();
	String sql="select * from FirmLand where contractsignplotsid='"+contractsignplotsid+"'";
	Connection conn = new DBConnection().getConnection();
	
	try {
		PreparedStatement ps = conn.prepareStatement(sql);
		ResultSet rs =ps.executeQuery();
		while(rs.next()){
		
			grow.setFirmlandid(rs.getBigDecimal("firmlandid"));
			grow.setContractsignplotsid(rs.getInt("contractsignplotsid"));
			grow.setGreenhousequantity(rs.getDouble("greenhousequantity"));
			grow.setGreenhousearea(rs.getDouble("greenhousearea"));
			grow.setSoilcharacterize(rs.getString("soilcharacterize"));
			grow.setNote(rs.getString("note"));
			
		}
	} catch (Exception e) {
	
		e.printStackTrace();
	}
	return grow;
}

public static List<Firmland> getAllgrowlist(int contractsignplotsid){
	ArrayList list=new ArrayList();
	String sql="select * from FirmLand where contractsignplotsid='"+contractsignplotsid+"'";
	Connection conn = new DBConnection().getConnection();
	
	try {
		PreparedStatement ps = conn.prepareStatement(sql);
		ResultSet rs =ps.executeQuery();
		while(rs.next()){
			Firmland grow= new Firmland();
			grow.setFirmlandid(rs.getBigDecimal("firmlandid"));
			grow.setContractsignplotsid(rs.getInt("contractsignplotsid"));
			grow.setGreenhousequantity(rs.getDouble("greenhousequantity"));
			grow.setGreenhousearea(rs.getDouble("greenhousearea"));
			grow.setSoilcharacterize(rs.getString("soilcharacterize"));
			grow.setNote(rs.getString("note"));
			list.add(grow);
		}
	} catch (Exception e) {
	
		e.printStackTrace();
	}
	return list;
}



public static Firmland getAllgrowbyid(String firmlandid){
	Firmland grow= new Firmland();
	String sql="select * from FirmLand where firmlandid='"+firmlandid+"'";
	Connection conn = new DBConnection().getConnection();
	
	try {
		PreparedStatement ps = conn.prepareStatement(sql);
		ResultSet rs =ps.executeQuery();
		while(rs.next()){
			
			grow.setFirmlandid(rs.getBigDecimal("firmlandid"));
			grow.setContractsignplotsid(rs.getInt("contractsignplotsid"));
			grow.setGreenhousequantity(rs.getDouble("greenhousequantity"));
			grow.setGreenhousearea(rs.getDouble("greenhousearea"));
			grow.setSoilcharacterize(rs.getString("soilcharacterize"));
			grow.setNote(rs.getString("note"));
			
		}
	} catch (Exception e) {
	
		e.printStackTrace();
	}
	return grow;
}

public static Contractsignplots getsign(String contractsignplotsid ){
	Contractsignplots grow= new Contractsignplots();
	String sql="select * from ContractSignPlots where contractsignplotsid='"+contractsignplotsid+"'";
	Connection conn = new DBConnection().getConnection();
	
	try {
		PreparedStatement ps = conn.prepareStatement(sql);
		ResultSet rs =ps.executeQuery();
		while(rs.next()){
			
			grow.setContractsignplotsid(rs.getBigDecimal("contractsignplotsid"));
			grow.setContractid(rs.getInt("contractid"));
			grow.setPlotid(rs.getString("plotid"));
			grow.setPlotarea(rs.getDouble("plotarea"));
			grow.setPlotlocation(rs.getString("plotlocation"));
			grow.setPlottype(rs.getString("plottype"));
			grow.setGroupid(rs.getString("groupid"));
			grow.setNote(rs.getString("note"));
			
		}
	} catch (Exception e) {
	
		e.printStackTrace();
	}
	return grow;
}

public static List<Contractsignplots> getAllsignbyid(String contractid){
	ArrayList list=new ArrayList();
	String sql="select * from ContractSignPlots where contractid='"+contractid+"'";
	Connection conn = new DBConnection().getConnection();
	
	try {
		PreparedStatement ps = conn.prepareStatement(sql);
		ResultSet rs =ps.executeQuery();
		while(rs.next()){
			Contractsignplots grow= new Contractsignplots();
			grow.setContractsignplotsid(rs.getBigDecimal("contractsignplotsid"));
			grow.setContractid(rs.getInt("contractid"));
			grow.setPlotid(rs.getString("plotid"));
			grow.setPlotarea(rs.getDouble("plotarea"));
			grow.setPlotlocation(rs.getString("plotlocation"));
			grow.setPlottype(rs.getString("plottype"));
			grow.setGroupid(rs.getString("groupid"));
			grow.setNote(rs.getString("note"));
			list.add(grow);
		}
	} catch (Exception e) {
	
		e.printStackTrace();
	}
	return list;
}





public static List<Contractsignplots> getAllsign(){
	ArrayList list=new ArrayList();
	String sql="select * from ContractSignPlots";
	Connection conn = new DBConnection().getConnection();
	
	try {
		PreparedStatement ps = conn.prepareStatement(sql);
		ResultSet rs =ps.executeQuery();
		while(rs.next()){
			Contractsignplots grow= new Contractsignplots();
			grow.setContractsignplotsid(rs.getBigDecimal("contractsignplotsid"));
			grow.setContractid(rs.getInt("contractid"));
			grow.setPlotid(rs.getString("plotid"));
			grow.setPlotarea(rs.getDouble("plotarea"));
			grow.setPlotlocation(rs.getString("plotlocation"));
			grow.setPlottype(rs.getString("plottype"));
			grow.setGroupid(rs.getString("groupid"));
			grow.setNote(rs.getString("note"));
			list.add(grow);
		}
	} catch (Exception e) {
	
		e.printStackTrace();
	}
	return list;
}


public static Plantoperations getPlant(String plantoperationsid){
	Plantoperations grow= new Plantoperations();
	String sql="select * from PlantOperations where plantoperationsid='"+plantoperationsid+"'";
	Connection conn = new DBConnection().getConnection();
	
	try {
		PreparedStatement ps = conn.prepareStatement(sql);
		ResultSet rs =ps.executeQuery();
		while(rs.next()){
			
			grow.setPlantoperationsid(rs.getBigDecimal("plantoperationsid"));
			grow.setFirmlandid(rs.getInt("firmlandid"));
			grow.setLogdate(rs.getDate("logdate"));
			grow.setOperatetime(rs.getDate("operatetime"));
			grow.setOperateperson(rs.getString("operateperson"));
			grow.setSubtypeid(rs.getInt("subtypeid"));
			grow.setSubtypeid1(rs.getBigDecimal("subtypeid1"));
			grow.setObjectid(rs.getBigDecimal("objectid"));
			grow.setPurpose(rs.getString("purpose"));
			grow.setOperationmethod(rs.getString("operationmethod"));
			grow.setQuantityperarea(rs.getDouble("quantityperarea"));
			grow.setQuantityperhouse(rs.getDouble("quantityperhouse"));
			grow.setQuantity(rs.getDouble("quantity"));
			grow.setSafeperiod(rs.getBigDecimal("safeperiod"));
			grow.setSafedate(rs.getDate("safedate"));
			grow.setNote(rs.getString("note"));
			
		}
	} catch (Exception e) {
	
		e.printStackTrace();
	}
	return grow;
}


public static List<Plantoperations> getPlant(){
	ArrayList list=new ArrayList();
	String sql="select * from PlantOperations";
	Connection conn = new DBConnection().getConnection();
	
	try {
		PreparedStatement ps = conn.prepareStatement(sql);
		ResultSet rs =ps.executeQuery();
		while(rs.next()){
			Plantoperations grow= new Plantoperations();
			grow.setPlantoperationsid(rs.getBigDecimal("plantoperationsid"));
			grow.setFirmlandid(rs.getInt("firmlandid"));
			grow.setLogdate(rs.getDate("logdate"));
			grow.setOperatetime(rs.getDate("operatetime"));
			grow.setOperateperson(rs.getString("operateperson"));
			grow.setSubtypeid(rs.getInt("subtypeid"));
			grow.setSubtypeid1(rs.getBigDecimal("subtypeid1"));
			grow.setObjectid(rs.getBigDecimal("objectid"));
			grow.setPurpose(rs.getString("purpose"));
			grow.setOperationmethod(rs.getString("operationmethod"));
			grow.setQuantityperarea(rs.getDouble("quantityperarea"));
			grow.setQuantityperhouse(rs.getDouble("quantityperhouse"));
			grow.setQuantity(rs.getDouble("quantity"));
			grow.setSafeperiod(rs.getBigDecimal("safeperiod"));
			grow.setSafedate(rs.getDate("safedate"));
			grow.setNote(rs.getString("note"));
			list.add(grow);
		}
	} catch (Exception e) {
	
		e.printStackTrace();
	}
	return list;
}



public static List<Plantlogs> getLogs(int firmlandid){
	ArrayList list=new ArrayList();
	String sql="select * from PlantLogs where firmlandid='"+firmlandid+"'";
	Connection conn = new DBConnection().getConnection();
	
	try {
		PreparedStatement ps = conn.prepareStatement(sql);
		ResultSet rs =ps.executeQuery();
		while(rs.next()){
			Plantlogs grow= new Plantlogs();
			grow.setPlantlogsid(rs.getBigDecimal("plantlogsid"));
			grow.setFirmlandid(rs.getInt("firmlandid"));
			grow.setLogdate(rs.getDate("logdate"));
			grow.setWeather(rs.getString("weather"));
			grow.setHumidity(rs.getString("humidity"));
			grow.setWind(rs.getString("wind"));
			grow.setTemperature(rs.getString("temperature"));
			grow.setSoidtemperature(rs.getString("soidtemperature"));
			grow.setSoidhumidity(rs.getString("soidhumidity"));
			grow.setNextweather(rs.getString("nextweather"));
			grow.setNote(rs.getString("note"));
			list.add(grow);
		}
	} catch (Exception e) {
	
		e.printStackTrace();
	}
	return list;
}


public static Plantlogs getLogs(String plantlogsid){
	Plantlogs grow= new Plantlogs();
	String sql="select * from PlantLogs where plantlogsid='"+plantlogsid+"'";
	Connection conn = new DBConnection().getConnection();
	
	try {
		PreparedStatement ps = conn.prepareStatement(sql);
		ResultSet rs =ps.executeQuery();
		while(rs.next()){
			
			grow.setPlantlogsid(rs.getBigDecimal("plantlogsid"));
			grow.setFirmlandid(rs.getInt("firmlandid"));
			grow.setLogdate(rs.getDate("logdate"));
			grow.setWeather(rs.getString("weather"));
			grow.setHumidity(rs.getString("humidity"));
			grow.setWind(rs.getString("wind"));
			grow.setTemperature(rs.getString("temperature"));
			grow.setSoidtemperature(rs.getString("soidtemperature"));
			grow.setSoidhumidity(rs.getString("soidhumidity"));
			grow.setNextweather(rs.getString("nextweather"));
			grow.setNote(rs.getString("note"));
			
		}
	} catch (Exception e) {
	
		e.printStackTrace();
	}
	return grow;
}


public static List<Plantlogs> getLogs(){
	ArrayList list=new ArrayList();
	String sql="select * from PlantLogs";
	Connection conn = new DBConnection().getConnection();
	
	try {
		PreparedStatement ps = conn.prepareStatement(sql);
		ResultSet rs =ps.executeQuery();
		while(rs.next()){
			Plantlogs grow= new Plantlogs();
			grow.setPlantlogsid(rs.getBigDecimal("plantlogsid"));
			grow.setFirmlandid(rs.getInt("firmlandid"));
			grow.setLogdate(rs.getDate("logdate"));
			grow.setWeather(rs.getString("weather"));
			grow.setHumidity(rs.getString("humidity"));
			grow.setWind(rs.getString("wind"));
			grow.setTemperature(rs.getString("temperature"));
			grow.setSoidtemperature(rs.getString("soidtemperature"));
			grow.setSoidhumidity(rs.getString("soidhumidity"));
			grow.setNextweather(rs.getString("nextweather"));
			grow.setNote(rs.getString("note"));
			list.add(grow);
		}
	} catch (Exception e) {
	
		e.printStackTrace();
	}
	return list;
}



public static List<SubtypesetModel> getsubtype(){
	ArrayList list=new ArrayList();
	String sql="select * from SubTypeSet";
	Connection conn = new DBConnection().getConnection();
	
	try {
		PreparedStatement ps = conn.prepareStatement(sql);
		ResultSet rs =ps.executeQuery();
		while(rs.next()){
			SubtypesetModel grow= new SubtypesetModel();
			grow.setSubtypeid(rs.getInt("subtypeid"));
			grow.setTypeid(rs.getString("typeid"));
			grow.setSubtypename(rs.getString("subtypename"));
			list.add(grow);
		}
	} catch (Exception e) {
	
		e.printStackTrace();
	}
	return list;
}


public static List<Plotrotations> getPlotrotations(){
	ArrayList list=new ArrayList();
	String sql="select * from PlotRotations";
	Connection conn = new DBConnection().getConnection();
	
	try {
		PreparedStatement ps = conn.prepareStatement(sql);
		ResultSet rs =ps.executeQuery();
		while(rs.next()){
			Plotrotations plot= new Plotrotations();
			plot.setPlotrotationsid(rs.getBigDecimal("plotrotationsid"));
			plot.setContractsignplotsid(rs.getInt("contractsignplotsid"));
			plot.setPluckdate(rs.getDate("pluckdate"));
			plot.setSowingdate(rs.getDate("sowingdate"));
			plot.setObjectsByObjectid(rs.getInt("objectid"));
			plot.setPrcedingobjectid(rs.getInt("Prcedingobjectid"));
			plot.setNote(rs.getString("note"));
			list.add(plot);
		}
	} catch (Exception e) {
	
		e.printStackTrace();
	}
	return list;
}

public static List<Plotrotations> getPlotrotations(int contractsignplotsid){
	ArrayList list=new ArrayList();
	String sql="select * from PlotRotations where contractsignplotsid='"+contractsignplotsid+"'";
	Connection conn = new DBConnection().getConnection();
	
	try {
		PreparedStatement ps = conn.prepareStatement(sql);
		ResultSet rs =ps.executeQuery();
		while(rs.next()){
			Plotrotations plot= new Plotrotations();
			plot.setPlotrotationsid(rs.getBigDecimal("plotrotationsid"));
			plot.setContractsignplotsid(rs.getInt("contractsignplotsid"));
			plot.setPluckdate(rs.getDate("pluckdate"));
			plot.setSowingdate(rs.getDate("sowingdate"));
			plot.setObjectsByObjectid(rs.getInt("objectid"));
			plot.setPrcedingobjectid(rs.getInt("Prcedingobjectid"));
			plot.setNote(rs.getString("note"));
			list.add(plot);
		}
	} catch (Exception e) {
	
		e.printStackTrace();
	}
	return list;
}


public static Plotrotations getPlotrotation(int contractsignplotsid){
	Plotrotations plot= new Plotrotations();
	String sql="select * from PlotRotations where contractsignplotsid='"+contractsignplotsid+"'";
	Connection conn = new DBConnection().getConnection();
	
	try {
		PreparedStatement ps = conn.prepareStatement(sql);
		ResultSet rs =ps.executeQuery();
		while(rs.next()){
			
			plot.setPlotrotationsid(rs.getBigDecimal("plotrotationsid"));
			plot.setContractsignplotsid(rs.getInt("contractsignplotsid"));
			plot.setPluckdate(rs.getDate("pluckdate"));
			plot.setSowingdate(rs.getDate("sowingdate"));
			plot.setObjectsByObjectid(rs.getInt("objectid"));
			plot.setPrcedingobjectid(rs.getInt("Prcedingobjectid"));
			plot.setNote(rs.getString("note"));
			
		}
	} catch (Exception e) {
	
		e.printStackTrace();
	}
	return plot;
}


public static Plotrotations getlunzuo(String plotrotationsid){
	Plotrotations plot= new Plotrotations();
	String sql="select * from PlotRotations where plotrotationsid='"+plotrotationsid+"'";
	Connection conn = new DBConnection().getConnection();
	
	try {
		PreparedStatement ps = conn.prepareStatement(sql);
		ResultSet rs =ps.executeQuery();
		while(rs.next()){
			
			plot.setPlotrotationsid(rs.getBigDecimal("plotrotationsid"));
			plot.setContractsignplotsid(rs.getInt("contractsignplotsid"));
			plot.setPluckdate(rs.getDate("pluckdate"));
			plot.setSowingdate(rs.getDate("sowingdate"));
			plot.setObjectsByObjectid(rs.getInt("objectid"));
			plot.setPrcedingobjectid(rs.getInt("Prcedingobjectid"));
			plot.setNote(rs.getString("note"));
			
		}
	} catch (Exception e) {
	
		e.printStackTrace();
	}
	return plot;
}

public static List<ObjectsModel> getObject(){
	ArrayList list=new ArrayList();
	String sql="select * from Objects";
	Connection conn = new DBConnection().getConnection();
	
	try {
		PreparedStatement ps = conn.prepareStatement(sql);
		ResultSet rs =ps.executeQuery();
		while(rs.next()){
			ObjectsModel ob=new ObjectsModel();
			ob.setObjectid(rs.getInt("objectid"));
			ob.setObjectname(rs.getString("objectname"));
			ob.setSubtypeid(rs.getInt("subtypeid"));
			list.add(ob);
		}
	} catch (Exception e) {
	
		e.printStackTrace();
	}
	return list;
}
}
