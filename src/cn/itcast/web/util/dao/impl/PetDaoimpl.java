package cn.itcast.web.util.dao.impl;

import cn.itcast.web.util.dao.PetDao;
import cn.itcast.web.util.domain.Pet;
import cn.itcast.web.util.util.JDBCDBPoolUtils;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
import java.util.Map;

public class PetDaoimpl implements PetDao {
    private JdbcTemplate template = new JdbcTemplate(JDBCDBPoolUtils.getDatasource());
    @Override
    public List getMyPetSById(int u_id) {
        try{
            String sql ="select * from `pet`  where u_id = ? ";
            List<Map<String, Object>> list = template.queryForList(sql,u_id);
            System.out.println(list);
            return list;
        } catch (
                DataAccessException e){
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public int addMyNewPet(Pet pet) {
        String sql = "INSERT INTO `pet` ( `u_id`, `p_sex`, `p_desc`, `type` ) VALUES ( ?, ? ,?,?)";
        int update = template.update(sql,pet.getU_id(),pet.getP_sex(),pet.getP_desc(),pet.getType());
        System.out.println("添加成功："+update);

        try{
            final String sqla="INSERT INTO `pet` ( `u_id`, `p_sex`, `p_desc`, `type` ) VALUES ( ?, ? ,?,?)";
            KeyHolder keyHolder = new GeneratedKeyHolder();
            template.update(new PreparedStatementCreator() {
                @Override
                public PreparedStatement createPreparedStatement(java.sql.Connection con) throws SQLException {
                    PreparedStatement ps= con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
                    ps.setInt(1, pet.getU_id());
                    ps.setString(2, pet.getP_sex());
                    ps.setString(3, pet.getP_desc());
                    ps.setString(4, pet.getType());
                    return ps;
                }}, keyHolder);

            return keyHolder.getKey().intValue(); //返回自动增加的id号
        }catch(Exception e){
            e.printStackTrace();
            return 0;
        }
    }

    @Override
    public void delMyPetById(int del_id) {
        String sql = "delete from pet where p_id = ?";
        int count = template.update(sql, del_id);
        System.out.println("删除成功"+count);
    }

    @Override
    public int updatePetHeadimgById(String p_id, String b) {
        String sql ="update pet set p_img = ? where p_id = ?";
        int count = template.update(sql,b,Integer.parseInt(p_id));
        System.out.println("添加宠物的信息："+count);
        return count;
    }

    public int insertSchoolData(final String provinceAdd, final String orgName,
                                final String type, final String cityId, final String countryId, final String provinceId,
                                final String code) {
        return 0;
    }
}
