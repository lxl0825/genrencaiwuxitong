<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="分类名称" prop="typeId">
        <el-input
          v-model="queryParams.typeName"
          placeholder="请输入分类名称"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
        <!-- <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button> -->
      </el-form-item>
    </el-form>


    <el-table v-loading="loading" :data="yusuanList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="账单分类" align="center" prop="typeName" />
      <el-table-column label="预算金额" align="center" prop="amount" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['system:yusuan:edit']"
          >设置</el-button>
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

    <!-- 添加或修改预算管理对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="预算金额" prop="amount">
          <el-input v-model="form.amount" placeholder="请输入预算金额" />
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
import { listYusuan, getYusuan, delYusuan, addYusuan, updateYusuan } from "@/api/system/yusuan";

export default {
  name: "Yusuan",
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
      // 预算管理表格数据
      yusuanList: [],
      fenleiList: [],

      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        typeId: null,
        amount: null,
        typeName:null
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
  },
  methods: {
    /** 查询预算管理列表 */
    getList() {
      this.loading = true;
      listYusuan(this.queryParams).then(response => {
        this.yusuanList = response.rows;
        this.total = response.total;
        this.loading = false;
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
        typeId: null,
        amount: null
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
      this.title = "添加预算管理";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
  const id = row.id || this.ids;
  getYusuan(id).then(response => {
    this.form = response.data;
    this.form.typeId = id;
    this.open = true;
    this.title = "设置预算";
  });
    },
    /** 提交按钮 */
    submitForm() {
  this.$refs["form"].validate(valid => {
    if (valid) {
      if (this.form.id != null) {
        console.log(this.form)
        updateYusuan(this.form).then(response => {
          this.$modal.msgSuccess("设置成功");
          this.open = false;
          this.getList();
        });
      } else {
        addYusuan(this.form).then(response => {
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
      this.$modal.confirm('是否确认删除预算管理编号为"' + ids + '"的数据项？').then(function() {
        return delYusuan(ids);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('system/yusuan/export', {
        ...this.queryParams
      }, `yusuan_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
