package cc.mrbird.febs.event.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.util.Date;

/**
 *  Entity
 *
 * @author cjs
 * @date 2020-03-19 09:56:45
 */
@Data
@TableName("t_normal_report")
public class NormalReport {

    /**
     * 
     */
    @TableId(value = "ID", type = IdType.AUTO)
    private Long id;

    /**
     * 
     */
    @TableField("REPORT_NO")
    private Long reportNo;

    /**
     * 
     */
    @TableField("USER_ID")
    private Long userId;

    /**
     * 
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @TableField("HAPPEN_DATE")
    private Date happenDate;

    /**
     * 
     */
    @TableField("TOTAL")
    private String total;

    /**
     * 
     */
    @TableField("NAME")
    private String name;

    /**
     * 
     */
    @TableField("TEL")
    private String tel;

    /**
     * 
     */
    @TableField("CARD")
    private String card;

    /**
     * 
     */
    @TableField("CAUSE")
    private String cause;

    /**
     *
     */
    @TableField("ADDRESS")
    private String address;

    /**
     *
     */
    @TableField("REMARKE")
    private String remarke;

    /**
     * 
     */
    @TableField("EXT1")
    private String ext1;

    /**
     * 上报人经度
     */
    @TableField("EXT2")
    private String ext2;

    /**
     * 上报人纬度
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

    /**
     * 
     */
    @TableField("EXT6")
    private String ext6;

    /**
     * 
     */
    @TableField("EXT7")
    private String ext7;

    /**
     * 
     */
    @TableField("EXT8")
    private String ext8;

    /**
     * 
     */
    @TableField("EXT9")
    private String ext9;

    /**
     * 
     */
    @TableField("EXT10")
    private String ext10;



    //上报人名称
    @TableField(exist = false)
    private String truename;

    //上报人手机号
    @TableField(exist = false)
    private String mobile;

    //上报人队伍名称
    @TableField(exist = false)
    private String deptName;

    //上报人队伍id
    @TableField(exist = false)
    private String deptId;



}
