<template>
  <!-- <span class="el-breadcrumb__item">
    <span class="el-breadcrumb__item__inner" ref="link"><slot></slot></span><span class="el-breadcrumb__separator">{{separator}}</span>
  </span> -->
  <span class="el-breadcrumb__item">
    <span class="el-breadcrumb__item__inner" ref="link">
    <slot></slot>
    </span>
    <span style="color:#9fb2bd;" class="el-breadcrumb__separator el-icon-arrow-right"></span>
  </span>
</template>
<script>
  export default {
    name: 'ElBreadcrumbItem',
    props: {
      to: {},
      replace: Boolean
    },
    data() {
      return {
        separator: ''
      };
    },
    mounted() {
      this.separator = this.$parent.separator;
      var self = this;
      if (this.to) {
        let link = this.$refs.link;
        link.addEventListener('click', _ => {
          let to = this.to;
          self.replace ? self.$router.replace(to)
                       : self.$router.push(to);
        });
      }
    }
  };
</script>
