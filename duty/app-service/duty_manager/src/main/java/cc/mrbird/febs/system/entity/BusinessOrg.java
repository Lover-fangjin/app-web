package cc.mrbird.febs.system.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import javax.validation.constraints.NotBlank;
import java.util.Date;

/**
 *  Entity
 *
 * @author cjs
 * @date 2020-03-19 15:39:02
 */
@Data
@TableName("t_business_org")
public class BusinessOrg {

    /**
     * 
     */
    @TableId(value = "ID", type = IdType.AUTO)
    private Long id;

    /**
     * 
     */
    @TableField("NAME")
    @NotBlank(message = "{required}")
    private String name;

    /**
     * 
     */
    @TableField("ADDRESS")
    private String address;

    /**
     * 
     */
    @TableField("TYPE")
    private String type;

    /**
     *
     */
    @TableField("LEVEL")
    private String level;

    /**
     * 
     */
    @TableField("PARENT_ID")
    private Long parentId;

    /**
     * 
     */
    @TableField("DESCRIPTION")
    private String description;

    /**
     *
     */
    @TableField("SYSTEM_ID")
    private Long systemId;

    /**
     *
     */
    @TableField("SYSTEM_NAME")
    private String systemName;

    /**
     *
     */
    @TableField("ADIVISION_ID")
    private Long adivisionId;

    /**
     *
     */
    @TableField("ADIVISION_NAME")
    private String adivisionName;

    /**
     *
     */
    @TableField("BUSINESS_ID")
    private Long businessId;

    /**
     *
     */
    @TableField("BUSINESS_NAME")
    private String businessName;

    /**
     *
     */
    @TableField("COMPANY_ID")
    private Long companyId;

    /**
     *
     */
    @TableField("COMPANY_NAME")
    private String companyName;

    /**
     * 创建时间
     */
    @TableField("CREATE_TIME")
    private Date createTime;

    /**
     * 
     */
    @TableField("CREATE_ID")
    private Long createId;

    /**
     * 
     */
    @TableField("EXT1")
    private String ext1;

    /**
     * 
     */
    @TableField("EXT2")
    private String ext2;

    /**
     * 
     */
    @TableField("EXT3")
    private String ext3;

    //创建人
    @TableField(exist = false)
    private String truename;

    //机构层级
    @TableField(exist = false)
    private String levelname;

    /**
     * 上级部门名称
     */
    @TableField(exist = false)
    private String parentName;
}
