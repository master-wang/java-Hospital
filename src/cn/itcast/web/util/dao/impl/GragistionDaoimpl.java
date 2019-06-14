package cn.itcast.web.util.dao.impl;

import cn.itcast.web.util.dao.GragistionDao;
import cn.itcast.web.util.domain.Registration;
import cn.itcast.web.util.util.JDBCDBPoolUtils;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;
import java.util.Map;

public class GragistionDaoimpl implements GragistionDao {
    private JdbcTemplate template = new JdbcTemplate(JDBCDBPoolUtils.getDatasource());
    @Override
    public void addYuyue(Registration yuyue) {
        String sql = "INSERT INTO `registration` ( `uu_id`, `uv_id`, `r_desc` ) VALUES ( ?, ? , ?);";
        int update = template.update(sql,yuyue.getUu_id(),yuyue.getUv_id(),yuyue.getR_desc());
        System.out.println("添加成功："+update);
    }

    @Override
    public List GetMyYuyueList(int uu_id) {
        try{
            String sql ="select * from `registration` ,`user` where uu_id = ? and registration.uv_id=user.id";
            List<Map<String, Object>> list = template.queryForList(sql,uu_id);
            System.out.println(list);
            return list;
        } catch (
                DataAccessException e){
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public void GetMyYuyueListDel(int r_id) {
        String sql = "delete from registration where r_id = ?";
        int count = template.update(sql, r_id);
        System.out.println("删除成功"+count);
    }

    @Override
    public List GetMyzhengduanList(int uv_id) {
        try{
            String sql ="select * from `registration` ,`user` where uv_id = ? and registration.uu_id=user.id";
            List<Map<String, Object>> list = template.queryForList(sql,uv_id);
            System.out.println(list);
            return list;
        } catch (
                DataAccessException e){
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public void GetMyzhengduanListOk(int r_id) {
        String sql ="update registration set is_ok = ?   where r_id = ?";
        int count = template.update(sql,"true",r_id);
        System.out.println("更新用户信息："+count);
    }

    @Override
    public List geuYuyueList() {
        try{
            String sql ="select * from `registration` ,`user` where registration.uu_id=user.id";
            List<Map<String, Object>> list = template.queryForList(sql);
            System.out.println(list);
            return list;
        } catch (
                DataAccessException e){
            e.printStackTrace();
            return null;
        }
    }
}
