package cc.mrbird.febs.system.service.impl;

import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.system.entity.BusinessSystem;
import cc.mrbird.febs.system.mapper.BusinessSystemMapper;
import cc.mrbird.febs.system.service.IBusinessSystemService;
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
 * 业务体系表 Service实现
 *
 * @author cjs
 * @date 2020-03-31 13:51:13
 */
@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class BusinessSystemServiceImpl extends ServiceImpl<BusinessSystemMapper, BusinessSystem> implements IBusinessSystemService {

    @Autowired
    private BusinessSystemMapper businessSystemMapper;

    @Override
    public IPage<BusinessSystem> findBusinessSystems(QueryRequest request, BusinessSystem businessSystem) {
        LambdaQueryWrapper<BusinessSystem> queryWrapper = new LambdaQueryWrapper<>();
        // TODO 设置查询条件
        Page<BusinessSystem> page = new Page<>(request.getPageNum(), request.getPageSize());
        return this.page(page, queryWrapper);
    }

    @Override
    public List<BusinessSystem> findBusinessSystems(BusinessSystem businessSystem) {
	    LambdaQueryWrapper<BusinessSystem> queryWrapper = new LambdaQueryWrapper<>();
		// TODO 设置查询条件
		return this.baseMapper.selectList(queryWrapper);
    }

    @Override
    @Transactional
    public void createBusinessSystem(BusinessSystem businessSystem) {
        this.save(businessSystem);
    }

    @Override
    @Transactional
    public void updateBusinessSystem(BusinessSystem businessSystem) {
        this.saveOrUpdate(businessSystem);
    }

    @Override
    @Transactional
    public void deleteBusinessSystem(BusinessSystem businessSystem) {
        LambdaQueryWrapper<BusinessSystem> wrapper = new LambdaQueryWrapper<>();
	    // TODO 设置删除条件
	    this.remove(wrapper);
	}
}
