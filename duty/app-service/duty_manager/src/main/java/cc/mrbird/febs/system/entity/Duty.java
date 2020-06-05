package cc.mrbird.febs.system.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 *  Entity
 *
 * @author cjs
 * @date 2020-03-26 13:33:49
 */
@Data
@TableName("t_duty")
public class Duty {

    /**
     * 
     */
    @TableId(value = "ID", type = IdType.AUTO)
    private Long id;

    /**
     * 值班编号
     */
    @TableField("DUTY_NO")
    private String dutyNo;

    /**
     * 值班地点
     */
    @TableField("ADDRESS")
    private String address;

    /**
     * 值班主体（队伍）
     */
    @TableField("DUTY_DEPT_ID")
    private Long dutyDeptId;

    /**
     * 任务
     */
    @TableField("TASK")
    private String task;

    /**
     * 
     */
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @JsonFormat(pattern = "yyyy-MM-dd")
    @TableField("START_TIME")
    private Date startTime;

    /**
     * 
     */
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @JsonFormat(pattern = "yyyy-MM-dd")
    @TableField("END_TIME")
    private Date endTime;

    /**
     * 任务循环
     */
    @TableField("TASK_CYCLE")
    private String taskCycle;

    /**
     * 值班班次
     */
    @TableField("SHIFT")
    private String shift;

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

    //负责人
    @TableField(exist = false)
    private String truename;

    //部门名称
    @TableField(exist = false)
    private String deptname;
}
