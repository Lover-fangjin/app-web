package cc.mrbird.febs.event.entity;


import lombok.Data;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

/**
 * 站点表 Entity
 *
 * @author cjs
 * @date 2020-03-05 17:15:39
 */
@Data
@TableName("t_site")
public class Site {

    /**
     * 
     */
    @TableId(value = "ID", type = IdType.AUTO)
    private Long id;

    /**
     * 
     */
    @TableField("NAME")
    private String name;

    /**
     * 
     */
    @TableField("USER_ID")
    private Long userId;

    /**
     * 
     */
    @TableField("TEL")
    private String tel;

    /**
     * 
     */
    @TableField("LICATION")
    private String lication;

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

}
