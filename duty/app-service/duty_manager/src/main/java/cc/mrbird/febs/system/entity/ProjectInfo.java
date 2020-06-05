package cc.mrbird.febs.system.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.util.Date;

/**
 *  Entity
 *
 * @author cjs
 * @date 2020-03-20 11:13:17
 */
@Data
@TableName("t_project_info")
public class ProjectInfo {

    /**
     * 
     */
    @TableId(value = "ID", type = IdType.AUTO)
    private Long id;

    /**
     * 
     */
    @TableField("ADDRESS")
    private String address;

    /**
     * 
     */
    @TableField("BORG_ID")
    private Long borgId;

    /**
     * 
     */
    @TableField("DEPT_ID")
    private Long deptId;

    /**
     * 
     */
    @TableField("DESCRIPTION")
    private String description;

    /**
     * 
     */
    @TableField("CHARGE_ID")
    private Long chargeId;

    /**
     * 
     */
    @TableField("LON")
    private String lon;

    /**
     *
     */
    @TableField("LAT")
    private String lat;

    /**
     *
     */
    @TableField("TEL")
    private String tel;

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



    //负责人
    @TableField(exist = false)
    private String truename;

    //机构名称
    @TableField(exist = false)
    private String orgname;


     //部门名称
    @TableField(exist = false)
    private String deptname;

}
