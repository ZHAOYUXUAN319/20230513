package javaJdbc;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class BukenService {
	// 管理者物件一覧、
	public List<BukenBean> kanrisyabukenlistInfo() {
		JdbcConn jc = new JdbcConn();
		List<BukenBean> list = new ArrayList<BukenBean>();

		try {
			jc.getDbcom();
			String sql = "SELECT * FROM Property order by property_id";

			try {
				ResultSet resultSet = jc.tt(sql);
				while (resultSet.next()) {
					BukenBean bukenBeanlist = new BukenBean();
					bukenBeanlist.setPropertyId(resultSet.getString("property_id"));
					bukenBeanlist.setPropertyName(resultSet.getString("property_name"));
					bukenBeanlist.setAddress(resultSet.getString("address"));
					bukenBeanlist.setPropertyType(resultSet.getString("property_type"));
					bukenBeanlist.setPropertyArea(resultSet.getString("property_area"));
					bukenBeanlist.setPrice(resultSet.getString("price"));
					bukenBeanlist.setStatus(resultSet.getString("status"));
					list.add(bukenBeanlist);
				}
				jc.closeDbcom();
			} catch (SQLException ex) {
				Logger.getLogger(BukenService.class.getName()).log(Level.SEVERE, null, ex);
			}
		} catch (ClassNotFoundException ex) {
			Logger.getLogger(BukenService.class.getName()).log(Level.SEVERE, null, ex);
		}

		return list;
	}

	// 物件検索
	public List<BukenBean> bukenkensaku(String id) {
		JdbcConn jc = new JdbcConn();
		List<BukenBean> list = new ArrayList<BukenBean>();

		try {
			jc.getDbcom();

			String sql = "SELECT * FROM Property where property_id = " + id + "";
			try {
				ResultSet resultSet = jc.tt(sql);
				while (resultSet.next()) {
					BukenBean bukenBeanlist = new BukenBean();
					bukenBeanlist.setPropertyId(resultSet.getString("property_id"));
					bukenBeanlist.setPropertyName(resultSet.getString("property_name"));
					bukenBeanlist.setAddress(resultSet.getString("address"));
					bukenBeanlist.setPropertyType(resultSet.getString("property_type"));
					bukenBeanlist.setPropertyArea(resultSet.getString("property_area"));
					bukenBeanlist.setPrice(resultSet.getString("price"));
					bukenBeanlist.setStatus(resultSet.getString("status"));
					list.add(bukenBeanlist);
				}
				jc.closeDbcom();
			} catch (SQLException ex) {
				Logger.getLogger(BukenService.class.getName()).log(Level.SEVERE, null, ex);
			}
		} catch (ClassNotFoundException ex) {
			Logger.getLogger(BukenService.class.getName()).log(Level.SEVERE, null, ex);
		}

		return list;
	}

	public void bukenDelete(BukenBean bb) throws SQLException {
		JdbcConn jc = new JdbcConn();
		try {
			jc.getDbcom();
			StringBuffer sb = new StringBuffer();
			sb.append("delete from Property ");
			sb.append(" where ");
			sb.append(" property_id = '" + bb.getPropertyId() + "'");
			sb.append(";");
			System.out.println(sb);
			System.out.println(sb.toString());
			jc.cud(sb.toString());

		} catch (ClassNotFoundException ex) {
			Logger.getLogger(BukenService.class.getName()).log(Level.SEVERE, null, ex);
		}
	}
}
