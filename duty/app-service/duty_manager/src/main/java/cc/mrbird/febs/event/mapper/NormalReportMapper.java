package cc.mrbird.febs.event.mapper;

import cc.mrbird.febs.event.entity.EventReport;
import cc.mrbird.febs.event.entity.NormalReport;
import cc.mrbird.febs.system.entity.User;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.apache.ibatis.annotations.Param;
/**
 *  Mapper
 *
 * @author cjs
 * @date 2020-03-19 09:56:45
 */
public interface NormalReportMapper extends BaseMapper<NormalReport> {

    IPage<NormalReport> findNormalReportsList(Page page, @Param("normalReport") NormalReport normalReport, @Param("user")User user);

    NormalReport findById(Long id);
}
