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
 * @date 2020-03-26 13:33:46
 */
@Data
@TableName("t_duty_info")
public class DutyInfo {

    /**
     * 
     */
    @TableId(value = "ID", type = IdType.AUTO)
    private Long id;

    /**
     * 
     */
    @TableField("SITE_ID")
    private Long siteId;

    /**
     * 
     */
    @TableField("DUTY_USER_ID")
    private Long dutyUserId;

    /**
     * 
     */
    @TableField("DUTY_DATE")
    private String dutyDate;

    /**
     * 
     */
    @TableField("DUTY_TIME")
    private String dutyTime;

    /**
     * 
     */
    @TableField("DUTY_START_TIME")
    private Date dutyStartTime;

    /**
     * 
     */
    @TableField("DUTY_END_TIME")
    private Date dutyEndTime;

    /**
     * 
     */
    @TableField("LOCATION")
    private String location;

    /**
     * 
     */
    @TableField("REMARKS")
    private String remarks;

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

    /**
     *
     */
    @TableField("EXT4")
    private String ext4;

    /**
     *
     */
    @TableField("EXT5")
    private String ext5;
}
