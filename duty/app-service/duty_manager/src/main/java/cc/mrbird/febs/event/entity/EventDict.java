package cc.mrbird.febs.event.entity;


import lombok.Data;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

/**
 * 事件类型表 Entity
 *
 * @author cjs
 * @date 2020-03-09 10:33:57
 */
@Data
@TableName("t_event_dict")
public class EventDict {

    /**
     * 
     */
    @TableId(value = "ID", type = IdType.AUTO)
    private Long id;

    /**
     * 
     */
    @TableField("EVENT_NAME")
    private String eventName;

    /**
     * 
     */
    @TableField("DESCRIPTION")
    private String description;

}
