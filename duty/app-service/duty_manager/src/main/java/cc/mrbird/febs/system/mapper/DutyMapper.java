package cc.mrbird.febs.system.mapper;

import cc.mrbird.febs.system.entity.Duty;
import cc.mrbird.febs.system.entity.DutyExport;
import cc.mrbird.febs.system.entity.User;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 *  Mapper
 *
 * @author cjs
 * @date 2020-03-26 13:33:49
 */
public interface DutyMapper extends BaseMapper<Duty> {
    List<User> getUsersByDeptid(String deptid);

    IPage<Duty> findDutyList(Page page, @Param("duty") Duty duty, @Param("user") User user);

    Duty findById(Long id);

    List<DutyExport> findDutysByExport(@Param("duty") Duty duty, @Param("user") User user);
}
