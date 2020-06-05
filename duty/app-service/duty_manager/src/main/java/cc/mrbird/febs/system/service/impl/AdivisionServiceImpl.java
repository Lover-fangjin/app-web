package cc.mrbird.febs.system.service.impl;

import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.system.entity.Adivision;
import cc.mrbird.febs.system.mapper.AdivisionMapper;
import cc.mrbird.febs.system.service.IAdivisionService;
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
 * 行政区域管理 Service实现
 *
 * @author cjs
 * @date 2020-03-31 13:51:20
 */
@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class AdivisionServiceImpl extends ServiceImpl<AdivisionMapper, Adivision> implements IAdivisionService {

    @Autowired
    private AdivisionMapper adivisionMapper;

    @Override
    public IPage<Adivision> findAdivisions(QueryRequest request, Adivision adivision) {
        LambdaQueryWrapper<Adivision> queryWrapper = new LambdaQueryWrapper<>();
        // TODO 设置查询条件
        Page<Adivision> page = new Page<>(request.getPageNum(), request.getPageSize());
        return this.page(page, queryWrapper);
    }

    @Override
    public List<Adivision> findAdivisions(Adivision adivision) {
	    LambdaQueryWrapper<Adivision> queryWrapper = new LambdaQueryWrapper<>();
		// TODO 设置查询条件
		return this.baseMapper.selectList(queryWrapper);
    }

    @Override
    @Transactional
    public void createAdivision(Adivision adivision) {
        this.save(adivision);
    }

    @Override
    @Transactional
    public void updateAdivision(Adivision adivision) {
        this.saveOrUpdate(adivision);
    }

    @Override
    @Transactional
    public void deleteAdivision(Adivision adivision) {
        LambdaQueryWrapper<Adivision> wrapper = new LambdaQueryWrapper<>();
	    // TODO 设置删除条件
	    this.remove(wrapper);
	}
}
