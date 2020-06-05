package cc.mrbird.febs.event.entity;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.util.Date;
import java.util.List;

/**
 * 上报信息表 Entity
 *
 * @author cjs
 * @date 2020-03-18 14:04:00
 */
@Data
@TableName("t_event_report")
public class EventReport {

    /**
     *
     */
    @TableId(value = "ID", type = IdType.AUTO)
    private Long id;

    /**
     *上报编号
     */
    @TableField("REPORT_NO")
    private Long reportNo;

    /**
     *事件类别ID
     */
    @TableField("EVENT_CLASS_ID")
    private String eventClassId;

    /**
     *事件类型ID
     */
    @TableField("EVENT_TYPE_ID")
    private String eventTypeId;

    /**
     *发生时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @TableField("HAPPEN_DATE")
    private Date happenDate;

    /**
     *上报人ID
     */
    @TableField("USER_ID")
    private Long userId;

    /**
     *当日上报数
     */
    @TableField("TOTAL")
    private String total;

    /**
     *位置
     */
    @TableField("LOCATION")
    private String location;

    /**
     *事件人姓名
     */
    @TableField("NAME")
    private String name;

    /**
     *事件人电话
     */
    @TableField("TEL")
    private String tel;

    /**
     *事件人身份证号
     */
    @TableField("CARD")
    private String card;

    /**
     *健康码状态
     */
    @TableField("HCODE_STATUS")
    private String hcodeStatus;

    /**
     *事件人体温
     */
    @TableField("TEMPERATURE")
    private String temperature;

    /**
     *事件人居住地址
     */
    @TableField("ADDRESS")
    private String address;

    /**
     *14天是否有出入记录
     */
    @TableField("RECORD")
    private String record;

    /**
     *所到地
     */
    @TableField("ARRIVAL")
    private String arrival;

    /**
     *站点ID
     */
    @TableField("SITE_ID")
    private Long siteId;

    /**
     *事件详情
     */
    @TableField("DETAILS")
    private String details;

    /**
     *事件备注
     */
    @TableField("REMARKS")
    private String remarks;

    /**
     * 事件地址
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

    //事件类型
    @TableField(exist = false)
    private String eventClass;

    //事件类型
    @TableField(exist = false)
    private String eventType;

    //图片附件
    @TableField(exist = false)
    private List<String> imgs;
}
