package cc.mrbird.febs.system.service.impl;

import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.system.entity.Company;
import cc.mrbird.febs.system.mapper.CompanyMapper;
import cc.mrbird.febs.system.service.ICompanyService;
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
 * 企业 Service实现
 *
 * @author cjs
 * @date 2020-03-31 13:51:18
 */
@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class CompanyServiceImpl extends ServiceImpl<CompanyMapper, Company> implements ICompanyService {

    @Autowired
    private CompanyMapper companyMapper;

    @Override
    public IPage<Company> findCompanys(QueryRequest request, Company company) {
        LambdaQueryWrapper<Company> queryWrapper = new LambdaQueryWrapper<>();
        // TODO 设置查询条件
        Page<Company> page = new Page<>(request.getPageNum(), request.getPageSize());
        return this.page(page, queryWrapper);
    }

    @Override
    public List<Company> findCompanys(Company company) {
	    LambdaQueryWrapper<Company> queryWrapper = new LambdaQueryWrapper<>();
		// TODO 设置查询条件
		return this.baseMapper.selectList(queryWrapper);
    }

    @Override
    @Transactional
    public void createCompany(Company company) {
        this.save(company);
    }

    @Override
    @Transactional
    public void updateCompany(Company company) {
        this.saveOrUpdate(company);
    }

    @Override
    @Transactional
    public void deleteCompany(Company company) {
        LambdaQueryWrapper<Company> wrapper = new LambdaQueryWrapper<>();
	    // TODO 设置删除条件
	    this.remove(wrapper);
	}
}
