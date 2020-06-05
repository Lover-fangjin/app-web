package cc.mrbird.febs.system.service.impl;

import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.common.utils.SequenceUtil;
import cc.mrbird.febs.system.entity.Duty;
import cc.mrbird.febs.system.entity.DutyExport;
import cc.mrbird.febs.system.entity.User;
import cc.mrbird.febs.system.mapper.DutyMapper;
import cc.mrbird.febs.system.service.IDutyService;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.Arrays;
import java.util.Date;
import java.util.List;

/**
 *  Service实现
 *
 * @author cjs
 * @date 2020-03-26 13:33:49
 */
@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class DutyServiceImpl extends ServiceImpl<DutyMapper, Duty> implements IDutyService {

    @Autowired
    private DutyMapper dutyMapper;

    @Override
    public IPage<Duty> findDutys(QueryRequest request, Duty duty) {
        LambdaQueryWrapper<Duty> queryWrapper = new LambdaQueryWrapper<>();
        // TODO 设置查询条件
        Page<Duty> page = new Page<>(request.getPageNum(), request.getPageSize());
        return this.page(page, queryWrapper);
    }

    @Override
    public List<Duty> findDutys(Duty duty) {
	    LambdaQueryWrapper<Duty> queryWrapper = new LambdaQueryWrapper<>();
		// TODO 设置查询条件
		return this.baseMapper.selectList(queryWrapper);
    }

    @Override
    @Transactional
    public void createDuty(Duty duty) {
        duty.setCreateTime(new Date());
        User user = (User) SecurityUtils.getSubject().getPrincipal();
        if(user!=null) {
            duty.setCreateId(user.getId());
        }
        //生成值班编号
        if(duty.getDutyDeptId()!=null){
            duty.setDutyNo(SequenceUtil.getDutyNo(duty.getDutyDeptId()));
        }
        this.save(duty);
    }

    @Override
    @Transactional
    public void updateDuty(Duty duty) {
        this.saveOrUpdate(duty);
    }

    @Override
    @Transactional
    public void deleteDuty(Duty duty) {
        LambdaQueryWrapper<Duty> wrapper = new LambdaQueryWrapper<>();
	    // TODO 设置删除条件
	    this.remove(wrapper);
	}

    @Override
    public List<User> getUsersByDeptid(String deptid) {
        return this.baseMapper.getUsersByDeptid(deptid);
    }

    @Override
    public IPage<Duty> findDutyList(QueryRequest request, Duty duty, User user) {
        LambdaQueryWrapper<Duty> queryWrapper = new LambdaQueryWrapper<>();
        // TODO 设置查询条件
        Page<Duty> page = new Page<>(request.getPageNum(), request.getPageSize());
        return this.baseMapper.findDutyList(page, duty, user);
    }

    @Override
    public void deleteDutys(String[] dutyIds) {
        List<String> list = Arrays.asList(dutyIds);
        // 删除业务
        this.removeByIds(list);
    }

    @Override
    public Duty findById(Long id) {
        return baseMapper.findById(id);
    }

    @Override
    public List<DutyExport> findDutysByExport(Duty duty, User user) {
        return this.dutyMapper.findDutysByExport(duty, user);
    }
}
