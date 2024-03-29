package com.packt.webstore.domain;

import com.packt.webstore.domain.repository.impl.InMemoryProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import java.sql.Blob;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by rifat on 5/4/17.
 */
@Repository
public class AddRepository {


    @Autowired
    private NamedParameterJdbcTemplate jdbcTemplate;

    public List<Add> getAllAdds() {
        Map<String, Object> params = new HashMap<String, Object>();
        List<Add> result = jdbcTemplate.query("SELECT * FROM ADD", params, new ProductMapper());

        return result;
    }

    private static final class ProductMapper implements RowMapper<Add> {
        public Add mapRow(ResultSet rs, int rowNum) throws SQLException {

            Add add = new Add();
            add.setId(rs.getInt("ID"));
            add.setTitle(rs.getString("TITLE"));
            add.setOwnerId(rs.getInt("OWNER_ID"));
            add.setOwnersName(rs.getString("OWNERS_NAME"));
            add.setPropertyType(rs.getString("PROPERTY_TYPE"));
            add.setPurpose(rs.getString("PURPOSE"));
            add.setLocation(rs.getString("LOCATION"));
            add.setCity(rs.getString("CITY"));
            add.setDetails(rs.getString("DETAILS"));
            add.setPrice(rs.getInt("PRICE"));
            add.setSqFeet(rs.getInt("SQ_FEET"));
            add.setBed(rs.getInt("BED"));
            add.setBath(rs.getInt("BATH"));
            Blob b=rs.getBlob("IMAGE");
            if(b!=null)add.setImage(b.getBytes(1, (int) b.length()));
            return add;
        }

    }

    public Add getAddById(int addID) {
        String SQL = "SELECT * FROM ADD WHERE ID = :id";
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("id", addID);
        return jdbcTemplate.queryForObject(SQL, params, new ProductMapper());

    }


    public void placeNewAdd(Add newAdd) {
        String SQL = "INSERT INTO ADD (ID, "
                + "OWNER_ID,"
                + "OWNERS_NAME,"
                + "PROPERTY_TYPE,"
                + "PURPOSE,"
                + "LOCATION,"
                + "CITY,"
                + "DETAILS,"
                + "PRICE,"
                + "SQ_FEET,"
                + "BED,"
                + "BATH,"
                +"IMAGE) "
                + "VALUES (:id, :ownerid, :ownername, :proptype, :purpose, :location, :city, :details, :price, :sqfeet, :bed, :bath, :image)";

        Map<String, Object> params = new HashMap<>();
        params.put("id",newAdd.getId());
        params.put("ownerid",newAdd.getOwnerId());
        params.put("ownername",newAdd.getOwnersName());
        params.put("proptype",newAdd.getPropertyType());
        params.put("purpose",newAdd.getPropertyType());
        params.put("location",newAdd.getLocation());
        params.put("city",newAdd.getCity());
        params.put("details",newAdd.getDetails());
        params.put("price",newAdd.getPrice());
        params.put("sqfeet",newAdd.getSqFeet());
        params.put("bed",newAdd.getBed());
        params.put("bath",newAdd.getBath());
        params.put("image",null);



        jdbcTemplate.update(SQL, params);
    }

}

