package cc.mrbird.febs.event.mapper;

import cc.mrbird.febs.event.entity.EventReport;
import cc.mrbird.febs.event.entity.EventReportExport;
import cc.mrbird.febs.system.entity.User;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 上报信息表 Mapper
 *
 * @author cjs
 * @date 2020-03-05 17:15:37
 */
public interface EventReportMapper extends BaseMapper<EventReport> {

    IPage<EventReport> findEventReportsList(Page page, @Param("eventReport") EventReport eventReport, @Param("user") User user);

    EventReport findById(Long id);

    List<EventReportExport> findEventReportsListByExport(@Param("eventReport") EventReport eventReport, @Param("user") User user);

    List<String> findImgsById(Long id);
}
