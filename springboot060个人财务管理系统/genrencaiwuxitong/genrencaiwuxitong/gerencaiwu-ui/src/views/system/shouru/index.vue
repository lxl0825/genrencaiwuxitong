<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="账单名称" prop="name">
        <el-input
          v-model="queryParams.name"
          placeholder="请输入账单名称"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="收入方式" prop="payWay">
  <el-select v-model="queryParams.payWay" placeholder="请选择收入方式" clearable @change="handleQuery">
    <el-option label="现金" value="现金"></el-option>
    <el-option label="转账" value="转账"></el-option>
  </el-select>
</el-form-item>
      <el-form-item label="开始日期" prop="time">
        <el-date-picker clearable
          v-model="queryParams.timeStart"
          type="date"
          value-format="yyyy-MM-dd"
          placeholder="请选择开始日期">
        </el-date-picker>
      </el-form-item>
      <el-form-item label="结束日期" prop="time">
        <el-date-picker clearable
          v-model="queryParams.timeEnd"
          type="date"
          value-format="yyyy-MM-dd"
          placeholder="请选择结束日期">
        </el-date-picker>
      </el-form-item>
      <el-form-item label="用户名" prop="username">
        <el-input
          v-model="queryParams.username"
          placeholder="请输入用户名"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="账单类型" prop="type">
        <el-select v-model="queryParams.typeId" placeholder="请选择账单类型" filterable clearable>
    <el-option
      v-for="item in fenleiList"
      :key="item.id"
      :value="item.id"
      :label="item.name"
    />
  </el-select>
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
        <!-- <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button> -->
      </el-form-item>
    </el-form>

    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button
          type="primary"
          plain
          icon="el-icon-plus"
          size="mini"
          @click="handleAdd"
          v-hasPermi="['system:shouru:add']"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="el-icon-edit"
          size="mini"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['system:shouru:edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="el-icon-delete"
          size="mini"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['system:shouru:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['system:shouru:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="shouruList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="账单名称" align="center" prop="name" />
      <el-table-column label="账单类型" align="center" prop="type" />
      <el-table-column label="收入金额" align="center" prop="payAmount" />
      <el-table-column label="收入方式" align="center" prop="payWay" />
      <el-table-column label="收入日期" align="center" prop="time" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.time, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="用户名" align="center" prop="username" />
      <el-table-column label="备注" align="center" prop="remark" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['system:shouru:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['system:shouru:remove']"
          >删除</el-button>
        </template>
      </el-table-column>
    </el-table>
    
    <pagination
      v-show="total>0"
      :total="total"
      :page.sync="queryParams.pageNum"
      :limit.sync="queryParams.pageSize"
      @pagination="getList"
    />

    <!-- 添加或修改收入账单对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="账单名称" prop="name">
          <el-input v-model="form.name" placeholder="请输入账单名称" />
        </el-form-item>
        <el-form-item label="收入金额" prop="payAmount">
          <el-input v-model="form.payAmount" placeholder="请输入收入金额" />
        </el-form-item>
        <el-form-item label="账单类型" prop="type">
  <el-select v-model="form.typeId" placeholder="请选择账单类型" filterable>
    <el-option
      v-for="item in fenleiList"
      :key="item.id"
      :value="item.id"
      :label="item.name"
    />
  </el-select>
</el-form-item>
        <el-form-item label="收入方式" prop="type">
        <el-select v-model="form.payWay" placeholder="请选择收入方式" clearable @change="handleQuery">
    <el-option label="现金" value="现金"></el-option>
    <el-option label="转账" value="转账"></el-option>
  </el-select>
  </el-form-item>
        <el-form-item label="收入日期" prop="time">
          <el-date-picker clearable
            v-model="form.time"
            type="date"
            value-format="yyyy-MM-dd"
            placeholder="请选择收入日期">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="备注" prop="remark">
          <el-input v-model="form.remark" placeholder="请输入备注" />
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import { listShouru, getShouru, delShouru, addShouru, updateShouru } from "@/api/system/shouru";
import {listFenlei} from "@/api/system/fenlei"

export default {
  name: "Shouru",
  data() {
    return {
      // 遮罩层
      loading: true,
      // 选中数组
      ids: [],
      // 非单个禁用
      single: true,
      // 非多个禁用
      multiple: true,
      // 显示搜索条件
      showSearch: true,
      // 总条数
      total: 0,
      // 收入账单表格数据
      shouruList: [],
      //分类列表
      fenleiList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        name: null,
        type: null,
        payAmount: null,
        payWay: null,
        time: null,
        username: null,
        userId: null,
        typeId: null
      },
      noPage: {
        pageNum: 1,
        pageSize: 999999,
        name: null,
        type: null,
        payAmount: null,
        payWay: null,
        time: null,
        username: null,
        userId: null,
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
      }
    };
  },
  created() {
    this.getList();
    this.getFenleiList();
  },
  methods: {
    /** 查询收入账单列表 */
    getList() {
      this.loading = true;
      listShouru(this.queryParams).then(response => {
        this.shouruList = response.rows;
        this.total = response.total;
        this.loading = false;
      });
    },
    getFenleiList(){
      listFenlei(this.noPage).then(response => {
        this.fenleiList = response.rows;
      });
    },
    // 取消按钮
    cancel() {
      this.open = false;
      this.reset();
    },
    // 表单重置
    reset() {
      this.form = {
        id: null,
        name: null,
        type: null,
        typeId: null,
        payAmount: null,
        payWay: null,
        time: null,
        username: null,
        userId: null,
        remark: null
      };
      this.resetForm("form");
    },
    /** 搜索按钮操作 */
    handleQuery() {
      this.queryParams.pageNum = 1;
      this.getList();
    },
    /** 重置按钮操作 */
    resetQuery() {
      this.resetForm("queryForm");
      this.handleQuery();
    },
    // 多选框选中数据
    handleSelectionChange(selection) {
      this.ids = selection.map(item => item.id)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加收入账单";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const id = row.id || this.ids
      getShouru(id).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改收入账单";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.id != null) {
            updateShouru(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addShouru(this.form).then(response => {
              this.$modal.msgSuccess("新增成功");
              this.open = false;
              this.getList();
            });
          }
        }
      });
    },
    /** 删除按钮操作 */
    handleDelete(row) {
      const ids = row.id || this.ids;
      this.$modal.confirm('是否确认删除收入账单编号为"' + ids + '"的数据项？').then(function() {
        return delShouru(ids);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('system/shouru/export', {
        ...this.queryParams
      }, `shouru_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
