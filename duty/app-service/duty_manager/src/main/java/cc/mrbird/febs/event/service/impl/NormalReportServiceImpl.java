package cc.mrbird.febs.event.service.impl;

import cc.mrbird.febs.common.entity.FebsConstant;
import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.common.utils.SortUtil;
import cc.mrbird.febs.event.entity.NormalReport;
import cc.mrbird.febs.event.mapper.NormalReportMapper;
import cc.mrbird.febs.event.service.INormalReportService;
import cc.mrbird.febs.system.entity.User;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.Arrays;
import java.util.List;

/**
 *  Service实现
 *
 * @author cjs
 * @date 2020-03-19 09:56:45
 */
@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class NormalReportServiceImpl extends ServiceImpl<NormalReportMapper, NormalReport> implements INormalReportService {

    @Autowired
    private NormalReportMapper normalReportMapper;

    @Override
    public IPage<NormalReport> findNormalReportsList(QueryRequest request, NormalReport normalReport, User user) {
        LambdaQueryWrapper<NormalReport> queryWrapper = new LambdaQueryWrapper<>();
        // TODO 设置查询条件
        Page<NormalReport> page = new Page<>(request.getPageNum(), request.getPageSize());
        SortUtil.handlePageSort(request, page, "id", FebsConstant.ORDER_ASC, false);
        return this.baseMapper.findNormalReportsList(page, normalReport, user);
    }



    @Override
    @Transactional
    public void deleteNormalReport(String[] normalreportIds) {
        List<String> list = Arrays.asList(normalreportIds);
        // 删除业务
        this.removeByIds(list);
	}

    @Override
    public NormalReport findById(Long id) {
        return this.baseMapper.findById(id);
    }
}
