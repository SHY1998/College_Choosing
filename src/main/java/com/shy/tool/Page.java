package com.shy.tool;

import lombok.Data;

import java.io.Serializable;

@Data
public class Page implements Serializable {
    //当前第几页
    private Integer currentPage =1;
    //总共第几页
    private Integer totalPage;
    //总共多少条记录
    private Integer totalRecord;
    //每页显示多少记录
    private Integer pageSize=20;
    //下一页
    private Integer nextPage;
    //上一页
    private Integer prefPage;

    public void setCurrentPage(Integer currentPage) {
        this.currentPage = currentPage;
    }

    public int getTotalPage() {
        totalPage = totalRecord % pageSize == 0 ? totalRecord / pageSize : totalRecord / pageSize + 1;
        return totalPage;
    }
    public int getNextPage() {
        if(currentPage<totalPage)
        {
            nextPage = currentPage+1;
        }else
        {
            nextPage = currentPage;
        }
        return nextPage;
    }

    public int getPrefPage() {
        if (currentPage > 1) {
            prefPage = currentPage - 1;
        } else {
            prefPage = currentPage;
        }
        return prefPage;
    }





}
