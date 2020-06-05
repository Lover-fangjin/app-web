package cc.mrbird.febs.system.mapper;

import cc.mrbird.febs.event.entity.EventReport;
import cc.mrbird.febs.system.entity.BusinessOrg;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.apache.ibatis.annotations.Param;

/**
 *  Mapper
 *
 * @author cjs
 * @date 2020-03-19 15:39:02
 */
public interface BusinessOrgMapper extends BaseMapper<BusinessOrg> {

    IPage<BusinessOrg> findBusinessOrgsList(Page page, @Param("businessOrg") BusinessOrg businessOrg);

    BusinessOrg findById(Long id);
}
