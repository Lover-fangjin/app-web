package cc.mrbird.febs.event.service;

import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.event.entity.NormalReport;
import cc.mrbird.febs.system.entity.User;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 *  Service接口
 *
 * @author cjs
 * @date 2020-03-19 09:56:45
 */
public interface INormalReportService extends IService<NormalReport> {
    /**
     * 查询（分页）
     *
     * @param request QueryRequest
     * @param normalReport normalReport
     * @return IPage<NormalReport>
     */
    IPage<NormalReport> findNormalReportsList(QueryRequest request, NormalReport normalReport, User user);



    /**
     * 删除
     *
     * @param normalreportIds 日常任务 id数组
     */
    void deleteNormalReport(String[] normalreportIds);

    NormalReport findById(Long id);
}
