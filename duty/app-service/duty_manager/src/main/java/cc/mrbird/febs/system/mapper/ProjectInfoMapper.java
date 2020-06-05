package cc.mrbird.febs.system.mapper;

import cc.mrbird.febs.system.entity.ProjectInfo;
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
 * @date 2020-03-20 11:13:17
 */
public interface ProjectInfoMapper extends BaseMapper<ProjectInfo> {

    IPage<ProjectInfo> findProjectInfosList(Page page, @Param("projectInfo") ProjectInfo projectInfo);

    ProjectInfo findById(Long id);

    List<User> getUsersByDeptid(String deptid);
}
