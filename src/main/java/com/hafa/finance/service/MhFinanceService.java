package com.hafa.finance.service;

import com.hafa.commons.entity.LeaseEntity;
import com.hafa.commons.service.BaseService;
import com.hafa.finance.model.MhFinance;
import com.hafa.users.model.MhUsers;

import javax.servlet.http.HttpServletRequest;

/**
 * 财政管理业务逻辑类
 */
public interface MhFinanceService extends BaseService<MhFinance> {

    /**
     * 删除指定id的记录(批量删除)
     *
     * @param ids
     * @param request
     * @return
     */
    int deleteMultiple(String[] ids, HttpServletRequest request);

    /**
     * 水电费数据的添加
     *
     * @param leaseEntity
     * @return
     */
    int insertMultiple(LeaseEntity leaseEntity, MhUsers user, HttpServletRequest request);

    /**
     * 构建一个公共的实体类对象
     *
     * @param user        当前登录用户
     * @param leaseEntity
     * @return
     */
    default MhFinance buildEntity(MhUsers user, LeaseEntity leaseEntity) {
        MhFinance mhFinance = new MhFinance();
        mhFinance.setStatus(1);
        mhFinance.setUserid(user.getIds());
        mhFinance.setProdate(leaseEntity.getCreatetime());
        mhFinance.setFtype(0); // 类型: 支出
        return mhFinance;
    }
}
