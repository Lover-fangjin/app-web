package cc.mrbird.febs.system.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.wuwenze.poi.annotation.Excel;
import com.wuwenze.poi.annotation.ExcelField;
import lombok.Data;

/**
 *  Entity
 *
 * @author cjs
 * @date 2020-03-26 13:33:49
 */
@Data
@TableName("t_duty")
@Excel("导出值班信息")
public class DutyExport {

    /**
     * 值班编号
     */
    @ExcelField(value = "值班编号")
    @TableField("DUTY_NO")
    private String dutyNo;

    //部门名称
    @ExcelField(value = "值班主体")
    @TableField(exist = false)
    private String deptName;

    /**
     * 值班地点
     */
    @ExcelField(value = "项目地点")
    @TableField("ADDRESS")
    private String address;

    //负责人
    @ExcelField(value = "制定人")
    @TableField(exist = false)
    private String truename;

    /**
     *
     */
    @ExcelField(value = "开始时间")
    @TableField("START_TIME")
    private String startTime;

    /**
     *
     */
    @ExcelField(value = "结束时间")
    @TableField("END_TIME")
    private String endTime;

    /**
     * 任务
     */
    @ExcelField(value = "状态")
    @TableField(exist = false)
    private String state;
}
