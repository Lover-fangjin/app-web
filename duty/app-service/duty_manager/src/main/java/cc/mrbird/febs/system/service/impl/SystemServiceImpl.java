package cc.mrbird.febs.system.service.impl;

import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.system.entity.System;
import cc.mrbird.febs.system.mapper.SystemMapper;
import cc.mrbird.febs.system.service.ISystemService;
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
 * 系统表 Service实现
 *
 * @author cjs
 * @date 2020-03-31 13:51:15
 */
@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class SystemServiceImpl extends ServiceImpl<SystemMapper, System> implements ISystemService {

    @Autowired
    private SystemMapper systemMapper;

    @Override
    public IPage<System> findSystems(QueryRequest request, System system) {
        LambdaQueryWrapper<System> queryWrapper = new LambdaQueryWrapper<>();
        // TODO 设置查询条件
        Page<System> page = new Page<>(request.getPageNum(), request.getPageSize());
        return this.page(page, queryWrapper);
    }

    @Override
    public List<System> findSystems(System system) {
	    LambdaQueryWrapper<System> queryWrapper = new LambdaQueryWrapper<>();
		// TODO 设置查询条件
		return this.baseMapper.selectList(queryWrapper);
    }

    @Override
    @Transactional
    public void createSystem(System system) {
        this.save(system);
    }

    @Override
    @Transactional
    public void updateSystem(System system) {
        this.saveOrUpdate(system);
    }

    @Override
    @Transactional
    public void deleteSystem(System system) {
        LambdaQueryWrapper<System> wrapper = new LambdaQueryWrapper<>();
	    // TODO 设置删除条件
	    this.remove(wrapper);
	}
}
