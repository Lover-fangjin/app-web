package cc.mrbird.febs.event.entity;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.wuwenze.poi.annotation.Excel;
import com.wuwenze.poi.annotation.ExcelField;
import lombok.Data;

/**
 * 上报信息表 Entity
 *
 * @author cjs
 * @date 2020-03-18 14:04:00
 */
@Data
@TableName("t_event_report")
@Excel("导出事件信息")
public class EventReportExport {

    /**
     *上报编号
     */
    @ExcelField(value = "事件编号")
    @TableField("REPORT_NO")
    private Long reportNo;

    /**
     * 事件类别
     */
    @ExcelField(value = "事件类别")
    @TableField(exist = false)
    private String eventClass;

    //事件类型
    @ExcelField(value = "事件类型")
    @TableField(exist = false)
    private String eventType;

    /**
     *发生时间
     */
    @ExcelField(value = "上报时间")
    @TableField("HAPPEN_DATE")
    private String happenDate;


    //上报人名称
    @ExcelField(value = "上报人")
    @TableField(exist = false)
    private String truename;

    //上报人手机号
    @ExcelField(value = "联系方式")
    @TableField(exist = false)
    private String mobile;

    //上报人队伍名称
    @ExcelField(value = "所属组织")
    @TableField(exist = false)
    private String deptName;
}
