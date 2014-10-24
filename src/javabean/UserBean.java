package javabean;

import java.sql.*;
import dbbean.*;
import java.util.ArrayList;

public class UserBean {
	
	private String username;
	private String password;
	private String identity;	
	private String name;
	private String number;
	private String college;
	private String major;
	private String birth;
	private String leaveyear;
	private String nativeplace;

	private String company;
	private String industry;
	private String post;
	private String salary;
	private String workchange;
	private String workyear;
	
	public String getUsername()
	{return username;}
	public void setUsername(String username)
	{this.username=username;}
	
	public String getPassword()
	{return password;}
	public void setPassword(String password)
	{this.password=password;}
	
	public String getIdentity()
	{return identity;}
	public void setIdentity(String identity)
	{this.identity=identity;}
	
	public String getName()
	{return name;}
	public void setName(String name)
	{this.name=name;}
	
	
	
	public String getNumber()
	{return number;}
	public void setNumber(String number)
	{this.number=number;}
	
	
	
	public String getCollege()
	{return college;}
	public void setCollege(String college)
	{this.college=college;}
	
	public String getMajor()
	{return major;}
	public void setMajor(String major)
	{this.major=major;}
	
	public String getBirth()
	{return birth;}
	public void setBirth(String birth)
	{this.birth=birth;}
	
	public String getLeaveyear()
	{return leaveyear;}
	public void setLeaveyear(String leaveyear)
	{this.leaveyear=leaveyear;}
	
	public String getNativeplace()
	{return nativeplace;}
	public void setNativeplace(String nativeplace)
	{this.nativeplace=nativeplace;}
	
	public String getCompany()
	{return company;}
	public void setCompany(String company)
	{this.company=company;}
	
	public String getIndustry()
	{return industry;}
	public void setIndustry(String industry)
	{this.industry=industry;}
	
	public String getPost()
	{return post;}
	public void setPost(String post)
	{this.post=post;}
	
	public String getSalary()
	{return salary;}
	public void setSalary(String salary)
	{this.salary=salary;}
	
	public String getWorkchange()
	{return workchange;}
	public void setWorkchange(String workchange)
	{this.workchange=workchange;}
	
	public String getWorkyear()
	{return workyear;}
	public void setWorkyear(String workyear)
	{this.workyear=workyear;}
	
	//登录方法
	public boolean match(String uname,String id,String pass)
	{
		username=uname;
		identity=id;
		password=pass;
		boolean find=false;
		
	 
		Connection con=null;
		ResultSet rs=null;
		
		DBBean db=new DBBean();
		String sql;
		
		if(identity.equals("1"))
			sql="select password from Student where username='"+username+"'";
		else if(identity.equals("2"))
			sql="select password from Schoolfellow where username='"+username+"'";
		else
		    sql="select password from Manager where username='"+username+"'";
		
		
		try{
			con=db.getConnection();
			rs=db.executeQuery(sql);
			
			
			if(rs.next())
			{
				
				String p=rs.getString("password");
				
				
				if(p.equals(password))
					find=true;
				else
					find=false;
		
			}
			else
				find=false;

		}catch(Exception e){}
		
		finally
		{
			db.close();
		}
	
		return find;
	}
	
	//判断用户是否已经存在
	public boolean haiExist(String uname,String id)
	{
		username=uname;
		identity=id;
		
		Connection con1=null;
		DBBean db1=new DBBean();
		ResultSet rs1=null;
		String sql1 = null;
		boolean find1=false;
		
		if(identity.equals("1"))
			{
			sql1="select * from Student where username='"+username+"'";
			}
		else if(identity.equals("2"))
			{
			sql1="select * from Schoolfellow where username='"+username+"'";
			}
	
		
		try{
			con1=db1.getConnection();			
			rs1=db1.executeQuery(sql1);
			if(rs1.next())
				find1=true;
			else
				find1=false;

		}catch(Exception e){}
		
		finally
		{
			db1.close();
		}
		
		return find1;
	}
	
	//注册方法
	public void register() throws Exception
	{
		Connection con2=null;
		DBBean db2=new DBBean();
	
		String sql2 = null;
	
	
		
		if(identity.equals("1"))
			{
			sql2="insert into Student(name,number,college,major,birth,nativeplace,username,password) values('"+name+"','"+number+"','"+college+"','"+major+"','"+birth+"','"+nativeplace+"','"+username+"','"+password+"')";
			}
		else if(identity.equals("2"))
			{
			sql2="insert into Schoolfellow (name,number,college,major,birth,leaveyear,nativeplace,username,password) values('"+name+"','"+number+"','"+college+"','"+major+"','"+birth+"','"+leaveyear+"','"+nativeplace+"','"+username+"','"+password+"')";
			}
	
		
		try{
			con2=db2.getConnection();
			db2.executeUpdate(sql2);
			
		}catch(Exception e){}
		
		finally
		{
			db2.close();
		}
		
	
	}
	
	//查询个人信息
	public ArrayList<UserBean> searchnew(String uname,String id)
	{
		ArrayList<UserBean> userlist=new ArrayList<UserBean>();
		username=uname;
		identity=id;
		Connection con3=null;
		ResultSet rs3=null;
		
		DBBean db3=new DBBean();
		String sql3=null;
		
		if(identity.equals("1"))
			sql3="select * from Student where username='"+username+"'";
		else if(identity.equals("2"))
			sql3="select * from Schoolfellow where username='"+username+"'";
		
		
		
		try{
			con3=db3.getConnection();
			rs3=db3.executeQuery(sql3);
			
			UserBean user=new UserBean();
			if(rs3.next())
			{
				
				String s1=rs3.getString("name");
				String s2=rs3.getString("number");
				String s3=rs3.getString("college");
				String s4=rs3.getString("major");
				String s5=rs3.getString("birth");
				String s6=rs3.getString("nativeplace");
				
				
				
				user.setName(s1);
				user.setNumber(s2);
				user.setCollege(s3);
				user.setMajor(s4);
				user.setBirth(s5);
				user.setNativeplace(s6);
			
				 if(identity.equals("2"))
					{String s7=rs3.getString("leaveyear");
					user.setLeaveyear(s7);
					}
				 userlist.add(user);
			}
			

		}catch(Exception e){}
		
		finally
		{
			db3.close();
		}
		
		return userlist;
	}
	
	//查询工作信息
	public ArrayList<UserBean> searchwork(String uname1,String id1,String curr,String major1,String num)
	{
		ArrayList<UserBean> userlist1=new ArrayList<UserBean>();
		username=uname1;
		identity=id1;
		String current=curr;
		major=major1;
		number=num;
		Connection con4=null;
		ResultSet rs4=null;
		
		DBBean db4=new DBBean();
		String sql4=null;
		
		
		if(identity.equals("1"))
			sql4="select company,industry,post,salary,workchange,workyear from Work where major='"+major+"'";
		else if(identity.equals("2"))
	 	{   
			if(current.equals("1"))
			sql4="select company,industry,post,salary,workchange,workyear from Work where workchange>=ALL(select workchange from Work where number='"+number+"')"+"and number='"+number+"'";
			//sql4="select * from Work where number='200703010203'";
				else 
			sql4="select company,industry,post,salary,workchange,workyear from Work where number='"+number+"'";
	 }
		
		try{
			
			con4=db4.getConnection();
			rs4=db4.executeQuery(sql4);
			
			
			while(rs4.next())
			{
				UserBean user1=new UserBean();
				String w1=rs4.getString("company");
				String w2=rs4.getString("industry");
				String w3=rs4.getString("post");
				String w4=rs4.getString("salary");
				String w5=rs4.getString("workchange");
				String w6=rs4.getString("workyear");
				
				
				
				user1.setCompany(w1);
			    user1.setIndustry(w2);
			    user1.setPost(w3);
			    user1.setSalary(w4);
			    user1.setWorkchange(w5);
			    user1.setWorkyear(w6);
				
				 userlist1.add(user1);
			}
			

		}catch(Exception e){}
		
		finally
		{
			db4.close();
		}
		
		return userlist1;
	}
	
	//获取学号
	public String getSchoolnumber(String uname2)
	{
		username=uname2;
		String number1=null;
		
	 
		Connection con5=null;
		ResultSet rs5=null;
		
		DBBean db5=new DBBean();
		String sql5;
		
			sql5="select number from Schoolfellow where username='"+username+"'";
		
		
		try{
			con5=db5.getConnection();
			rs5=db5.executeQuery(sql5);
			
			
			if(rs5.next())
			{
				
			 number1=rs5.getString("number");
		
			}

		}catch(Exception e){}
		
		finally
		{
			db5.close();
		}
	
		return number1;
	}
	
	//获取学院
	public String getSchoolcollege(String uname2)
	{
		username=uname2;
		String college1=null;
		
	 
		Connection con5=null;
		ResultSet rs5=null;
		
		DBBean db5=new DBBean();
		String sql5;
		
			sql5="select college from Schoolfellow where username='"+username+"'";
		
		
		try{
			con5=db5.getConnection();
			rs5=db5.executeQuery(sql5);
			
			
			if(rs5.next())
			{
				
			 college1=rs5.getString("college");
		
			}

		}catch(Exception e){}
		
		finally
		{
			db5.close();
		}
	
		return college1;
	}
	
	//获取专业
	public String getSchoolmajor(String uname2)
	{
		username=uname2;
		String major1=null;
		
	 
		Connection con5=null;
		ResultSet rs5=null;
		
		DBBean db5=new DBBean();
		String sql5;
		
			sql5="select major from Schoolfellow where username='"+username+"'";
		
		
		try{
			con5=db5.getConnection();
			rs5=db5.executeQuery(sql5);
			
			
			if(rs5.next())
			{
				
			 major1=rs5.getString("major");
		
			}

		}catch(Exception e){}
		
		finally
		{
			db5.close();
		}
	
		return major1;
	}
	

	//更新工作
	public void updatework(String num,String coll,String major1)
	{
		number=num;
		college=coll;
		major=major1;
		
		Connection con6=null;
		DBBean db6=new DBBean();
	
		String sql6 = null;
	
	
		
			sql6="insert into Work(number,college,major,company,industry,post,salary,workchange,workyear)"  
      		     +"values('"+number+"','"+college+"','"+major+"','"+company+"','"+industry+"','"+post+"','"+salary+"','"+workchange+"','"+workyear+"')";
	
		
		try{
			con6=db6.getConnection();
			db6.executeUpdate(sql6);
			
		}catch(Exception e){}
		
		finally
		{
			db6.close();
		}
		
	
	}
	
	//查询全部个人信息
	public ArrayList<UserBean> searchAllinfo(String current1)
	{
		ArrayList<UserBean> userlist=new ArrayList<UserBean>();
		String current=current1;
		Connection con7=null;
		ResultSet rs7=null;
		
		DBBean db7=new DBBean();
		String sql7=null;
		
		if(current.equals("1"))
			sql7="select name,number,college,major,birth,nativeplace from Student ";
		else if(current.equals("2"))
			sql7="select * from Schoolfellow ";
		
		
		
		try{
			con7=db7.getConnection();
			rs7=db7.executeQuery(sql7);
			
			
			while(rs7.next())
			{
				UserBean user=new UserBean();
				String s1=rs7.getString("name");
				String s2=rs7.getString("number");
				String s3=rs7.getString("college");
				String s4=rs7.getString("major");
				String s5=rs7.getString("birth");
				String s6=rs7.getString("nativeplace");
				
				
				
				user.setName(s1);
				user.setNumber(s2);
				user.setCollege(s3);
				user.setMajor(s4);
				user.setBirth(s5);
				user.setNativeplace(s6);
			
				 if(current.equals("2"))
					{String s7=rs7.getString("leaveyear");
					user.setLeaveyear(s7);
					}
				 userlist.add(user);
			}
			

		}catch(Exception e){}
		
		finally
		{
			db7.close();
		}
		
		return userlist;
		
	}
	
	//查询全部工作信息
	public ArrayList<UserBean> searchAllwork(String current1)
	{
		ArrayList<UserBean> userlist=new ArrayList<UserBean>();
		String current=current1;
		Connection con8=null;
		ResultSet rs8=null;
		
		DBBean db8=new DBBean();
		String sql8=null;
		
		
			sql8="select number,college,major,company,industry,post,salary,workchange,workyear from Work ";
		
		try{
			con8=db8.getConnection();
			rs8=db8.executeQuery(sql8);
			
			
			while(rs8.next())
			{   
				UserBean user=new UserBean();
				String w1=rs8.getString("number");
				String w2=rs8.getString("college");
				String w3=rs8.getString("major");
				String w4=rs8.getString("company");
				String w5=rs8.getString("industry");
				String w6=rs8.getString("post");
				String w7=rs8.getString("salary");
				String w8=rs8.getString("workchange");
				String w9=rs8.getString("workyear");
				
				
				user.setNumber(w1);
				user.setCollege(w2);
				user.setMajor(w3);
				user.setCompany(w4);
			    user.setIndustry(w5);
			    user.setPost(w6);
			    user.setSalary(w7);
			    user.setWorkchange(w8);
			    user.setWorkyear(w9);
			
			
				 userlist.add(user);
			}
			

		}catch(Exception e){}
		
		finally
		{
			db8.close();
		}
		
		return userlist;
		
	}
	
	public String count(String major1,String year1)
	{
		major=major1;
		String year=year1;
		String avgsalary=null;
		Connection con9=null;
		ResultSet rs9=null;
		
		DBBean db9=new DBBean();
		String sql9=null;
		
		sql9="select avg(salary)AS'pingjun'  from Work  where major='"+major+"'"+"and workyear='"+year+"'";
		
		try{
			con9=db9.getConnection();
			rs9=db9.executeQuery(sql9);
			
		  if(rs9.next())
		  {
			  avgsalary=rs9.getString("pingjun");
		  }
		

	       }catch(Exception e){}
	
	finally
	{
		db9.close();
	}
	
	return avgsalary; 
	
	}
	
}
