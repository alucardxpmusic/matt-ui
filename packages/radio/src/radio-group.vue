<template>
  <div :class="'el-'+customClass+'-group'">
    <slot></slot>
  </div>
</template>
<script>
  import Emitter from 'matt-ui/src/mixins/emitter';

  export default {
    name: 'ElRadioGroup',

    componentName: 'ElRadioGroup',

    mixins: [Emitter],

    props: {
      value: {},
      size: String,
      fill: String,
      textColor: String,
      disabled: Boolean,
      customClass: {
        type: String,
        default() {
          return 'radio';
        }
      }
    },
    watch: {
      value(value) {
        this.$emit('change', value);
        this.dispatch('ElFormItem', 'el.form.change', [this.value]);
      }
    }
  };
</script>

