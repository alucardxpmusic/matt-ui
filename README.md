# matt-ui

如果将该项目(项目B)嵌套在使用element-ui的项目(项目A)中，会导致项目A npm run dev 时popover、tooltip等组件出现问题，删除项目B中的node_modules文件夹就可以正常运行，但是项目B就不能npm run dev和npm run dist了,故将其还是单独做成一个项目，放到github上，项目A直接npm 安装此仓库 
