package cc.mrbird.febs.system.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.util.Date;

/**
 * 系统表 Entity
 *
 * @author cjs
 * @date 2020-03-31 13:51:15
 */
@Data
@TableName("t_system")
public class System {

    /**
     * 
     */
    @TableId(value = "ID", type = IdType.AUTO)
    private Long id;

    /**
     * 
     */
    @TableField("SYSTEM_NAME")
    private String systemName;

    /**
     *
     */
    @TableField("TYPE")
    private Long type;

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
