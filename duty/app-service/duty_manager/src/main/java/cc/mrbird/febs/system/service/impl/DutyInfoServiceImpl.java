package cc.mrbird.febs.system.service.impl;

import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.system.entity.DutyInfo;
import cc.mrbird.febs.system.mapper.DutyInfoMapper;
import cc.mrbird.febs.system.service.IDutyInfoService;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 *  Service实现
 *
 * @author cjs
 * @date 2020-03-26 13:33:46
 */
@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class DutyInfoServiceImpl extends ServiceImpl<DutyInfoMapper, DutyInfo> implements IDutyInfoService {

    @Autowired
    private DutyInfoMapper dutyInfoMapper;

    @Override
    public IPage<DutyInfo> findDutyInfos(QueryRequest request, DutyInfo dutyInfo) {
        LambdaQueryWrapper<DutyInfo> queryWrapper = new LambdaQueryWrapper<>();
        // TODO 设置查询条件
        Page<DutyInfo> page = new Page<>(request.getPageNum(), request.getPageSize());
        return this.page(page, queryWrapper);
    }

    @Override
    public List<DutyInfo> findDutyInfos(DutyInfo dutyInfo) {
	    LambdaQueryWrapper<DutyInfo> queryWrapper = new LambdaQueryWrapper<>();
		// TODO 设置查询条件
		return this.baseMapper.selectList(queryWrapper);
    }

    @Override
    @Transactional
    public void createDutyInfo(DutyInfo dutyInfo) {
        this.save(dutyInfo);
    }

    @Override
    @Transactional
    public void updateDutyInfo(DutyInfo dutyInfo) {
        this.saveOrUpdate(dutyInfo);
    }

    @Override
    @Transactional
    public void deleteDutyInfo(DutyInfo dutyInfo) {
        LambdaQueryWrapper<DutyInfo> wrapper = new LambdaQueryWrapper<>();
	    // TODO 设置删除条件
	    this.remove(wrapper);
	}
}
