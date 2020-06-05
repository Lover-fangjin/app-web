package cc.mrbird.febs.system.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.util.Date;

/**
 * 行政区域管理 Entity
 *
 * @author cjs
 * @date 2020-03-31 13:51:20
 */
@Data
@TableName("t_adivision")
public class Adivision {

    /**
     * 
     */
    @TableId(value = "ID", type = IdType.AUTO)
    private Long id;

    /**
     * 
     */
    @TableField("ADIVISION_NO")
    private Integer adivisionNo;

    /**
     * 
     */
    @TableField("NAME")
    private String name;

    /**
     * 
     */
    @TableField("PRINCIPAL_ID")
    private Long principalId;

    /**
     * 
     */
    @TableField("PRINCIPAL_NAME")
    private String principalName;

    /**
     * 
     */
    @TableField("PRINCIPAL_TEL")
    private String principalTel;

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
