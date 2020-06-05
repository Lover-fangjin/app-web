package cc.mrbird.febs.system.entity;

import java.util.Date;

import lombok.Data;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

/**
 * 企业 Entity
 *
 * @author cjs
 * @date 2020-03-31 13:51:18
 */
@Data
@TableName("t_company")
public class Company {

    /**
     * 
     */
    @TableId(value = "ID", type = IdType.AUTO)
    private Long id;

    /**
     * 
     */
    @TableField("COMPANY_NO")
    private String companyNo;

    /**
     * 
     */
    @TableField("COMPANY_NAME")
    private String companyName;

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
