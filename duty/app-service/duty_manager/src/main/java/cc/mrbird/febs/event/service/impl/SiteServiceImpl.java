package cc.mrbird.febs.event.service.impl;

import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.event.entity.Site;
import cc.mrbird.febs.event.mapper.SiteMapper;
import cc.mrbird.febs.event.service.ISiteService;
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
 * 站点表 Service实现
 *
 * @author cjs
 * @date 2020-03-05 17:15:39
 */
@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class SiteServiceImpl extends ServiceImpl<SiteMapper, Site> implements ISiteService {

    @Autowired
    private SiteMapper siteMapper;

    @Override
    public IPage<Site> findSites(QueryRequest request, Site site) {
        LambdaQueryWrapper<Site> queryWrapper = new LambdaQueryWrapper<>();
        // TODO 设置查询条件
        Page<Site> page = new Page<>(request.getPageNum(), request.getPageSize());
        return this.page(page, queryWrapper);
    }

    @Override
    public List<Site> findSites(Site site) {
	    LambdaQueryWrapper<Site> queryWrapper = new LambdaQueryWrapper<>();
		// TODO 设置查询条件
		return this.baseMapper.selectList(queryWrapper);
    }

    @Override
    @Transactional
    public void createSite(Site site) {
        this.save(site);
    }

    @Override
    @Transactional
    public void updateSite(Site site) {
        this.saveOrUpdate(site);
    }

    @Override
    @Transactional
    public void deleteSite(Site site) {
        LambdaQueryWrapper<Site> wrapper = new LambdaQueryWrapper<>();
	    // TODO 设置删除条件
	    this.remove(wrapper);
	}
}
