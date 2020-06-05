package cc.mrbird.febs.system.entity;

import cc.mrbird.febs.common.converter.TimeConverter;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.wuwenze.poi.annotation.Excel;
import com.wuwenze.poi.annotation.ExcelField;
import lombok.Data;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;
import java.io.Serializable;
import java.util.Date;

/**
 * @author MrBird
 */
@Data
@TableName("t_dept")
@Excel("部门信息表")
public class Dept implements Serializable {

    private static final long serialVersionUID = 5702271568363798328L;
    /**
     * 部门 ID
     */
    @TableId(value = "DEPT_ID", type = IdType.AUTO)
    private Long deptId;

    /**
     * 上级部门 ID
     */
    @TableField("PARENT_ID")
    private Long parentId;

    /**
     * 上级部门名称
     */
    @TableField(exist = false)
    private String parentName;
    /**
     * 部门名称
     */
    @TableField("DEPT_NAME")
    @NotBlank(message = "{required}")
    @Size(max = 25, message = "{noMoreThan}")
    @ExcelField(value = "部门名称")
    private String deptName;

    /**
     * 排序
     */
    @TableField("ORDER_NUM")
    private Long orderNum;

    /**
     * 创建时间
     */
    @TableField("CREATE_TIME")
    @ExcelField(value = "创建时间", writeConverter = TimeConverter.class)
    private Date createTime;

    @TableField("MODIFY_TIME")
    @ExcelField(value = "修改时间", writeConverter = TimeConverter.class)
    private Date modifyTime;

    /**
     * 队伍等级
     */
    @TableField("LEVEL")
    private Long level;

    /**
     * 队伍人数
     */
    @TableField(exist = false)
    private String personcount;

    /**
     * 描述
     */
    @TableField("DESCRIPTION")
    @Size(max = 100, message = "{noMoreThan}")
    @ExcelField(value = "个人描述")
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
}
