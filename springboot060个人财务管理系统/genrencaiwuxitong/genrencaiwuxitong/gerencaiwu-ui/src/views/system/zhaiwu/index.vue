<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="债务名称" prop="name">
        <el-input
          v-model="queryParams.name"
          placeholder="请输入债务名称"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="债务类型" prop="type">
  <el-select v-model="queryParams.type" placeholder="请选择债务类型" clearable @change="handleQuery">
    <el-option label="欠款" value="欠款"></el-option>
    <el-option label="追债" value="追债"></el-option>
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
      <el-form-item>
        <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
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
          v-hasPermi="['system:zhaiwu:add']"
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
          v-hasPermi="['system:zhaiwu:edit']"
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
          v-hasPermi="['system:zhaiwu:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['system:zhaiwu:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="zhaiwuList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="债务名称" align="center" prop="name" />
      <el-table-column label="债务类型" align="center" prop="type" />
      <el-table-column label="债务金额" align="center" prop="payAmount" />
      <el-table-column label="债务日期" align="center" prop="time" width="180">
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
            @click="handleChange(scope.row)"
            v-hasPermi="['system:zhaiwu:edit']"
          >处理</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['system:zhaiwu:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['system:zhaiwu:remove']"
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

    <!-- 添加或修改债务列对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="债务名称" prop="name">
          <el-input v-model="form.name" placeholder="请输入债务名称" />
        </el-form-item>
        <el-form-item label="债务金额" prop="payAmount">
          <el-input v-model="form.payAmount" placeholder="请输入债务金额" />
        </el-form-item>
        <el-form-item label="债务类型" prop="type">
  <el-select v-model="form.type" placeholder="请选择债务类型" clearable >
    <el-option label="欠款" value="欠款"></el-option>
    <el-option label="追债" value="追债"></el-option>
  </el-select>
</el-form-item>
        <el-form-item label="债务日期" prop="time">
          <el-date-picker clearable
            v-model="form.time"
            type="date"
            value-format="yyyy-MM-dd"
            placeholder="请选择债务日期">
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

    <el-dialog :title="title" :visible.sync="openChange" width="500px" append-to-body>
      <el-form ref="formChange" :model="formChange" :rules="rules" label-width="80px">

      <el-form-item label="金额" prop="payAmount">
          <el-input v-model="formChange.payAmount" placeholder="请输入金额" />
        </el-form-item>
        </el-form>
        <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitChangeForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import { listZhaiwu, getZhaiwu, delZhaiwu, addZhaiwu, updateZhaiwu,changeZhaiwu } from "@/api/system/zhaiwu";

export default {
  name: "Zhaiwu",
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
      // 债务列表格数据
      zhaiwuList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      openChange: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        name: null,
        type: null,
        payAmount: null,
        time: null,
        username: null,
        userId: null,
      },
      // 表单参数
      form: {},
      //操作表单
      formChange:{},
      // 表单校验
      rules: {
      }
    };
  },
  created() {
    this.getList();
  },
  methods: {
    /** 查询债务列列表 */
    getList() {
      this.loading = true;
      listZhaiwu(this.queryParams).then(response => {
        this.zhaiwuList = response.rows;
        this.total = response.total;
        this.loading = false;
      });
    },
    // 取消按钮
    cancel() {
      this.open = false;
      this.reset();
      this.resetChange();
      this.openChange = false;
    },
    // 表单重置
    reset() {
      this.form = {
        id: null,
        name: null,
        type: null,
        payAmount: null,
        time: null,
        username: null,
        userId: null,
        remark: null
      };
      this.resetForm("form");
    },
    resetChange() {
      this.formChange = {
        payAmount: null,
        type: null,
        id: null,
        name: null
      };
      this.resetForm("formChange");
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
      this.title = "添加债务列";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const id = row.id || this.ids
      getZhaiwu(id).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改债务列";
      });
    },
    handleChange(row) {
      this.resetChange();
      const type = row.type;
      this.formChange.type = type;
      this.formChange.id = row.id;
      this.formChange.name = row.name;
      this.openChange = true;
      this.title = "处理债务";
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.id != null) {
            updateZhaiwu(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addZhaiwu(this.form).then(response => {
              this.$modal.msgSuccess("新增成功");
              this.open = false;
              this.getList();
            });
          }
        }
      });
    },
    submitChangeForm(){
        changeZhaiwu(this.formChange).then(response => {
              this.$modal.msgSuccess("处理成功");
              this.openChange = false;
              this.getList();
            })
    },
    /** 删除按钮操作 */
    handleDelete(row) {
      const ids = row.id || this.ids;
      this.$modal.confirm('是否确认删除债务列编号为"' + ids + '"的数据项？').then(function() {
        return delZhaiwu(ids);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('system/zhaiwu/export', {
        ...this.queryParams
      }, `zhaiwu_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
