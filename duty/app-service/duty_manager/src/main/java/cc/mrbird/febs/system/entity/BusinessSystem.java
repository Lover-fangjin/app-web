package cc.mrbird.febs.system.entity;

import java.util.Date;

import lombok.Data;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

/**
 * 业务体系表 Entity
 *
 * @author cjs
 * @date 2020-03-31 13:51:13
 */
@Data
@TableName("t_business_system")
public class BusinessSystem {

    /**
     * 
     */
    @TableId(value = "ID", type = IdType.AUTO)
    private Long id;

    /**
     * 
     */
    @TableField("NAME")
    private String name;

    /**
     * 
     */
    @TableField("STATUS")
    private String status;

    /**
     * 
     */
    @TableField("CREATE_ID")
    private Long createId;

    /**
     * 
     */
    @TableField("CREATE_TIME")
    private Date createTime;

}
