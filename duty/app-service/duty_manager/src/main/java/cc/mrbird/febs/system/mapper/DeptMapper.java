package cc.mrbird.febs.system.mapper;

import cc.mrbird.febs.system.entity.Dept;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.apache.ibatis.annotations.Param;
/**
 * @author MrBird
 */
public interface DeptMapper extends BaseMapper<Dept> {
    IPage<Dept> findDeptDetailPage(Page page, @Param("dept") Dept dept);

    Dept findById(Long deptId);
}
