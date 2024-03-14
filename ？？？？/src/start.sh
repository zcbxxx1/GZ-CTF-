#!/bin/bash

# 检查环境变量GZCTF_FLAG是否存在且不为空
if [ -z "$GZCTF_FLAG" ]; then
    # 环境变量不存在或为空，使用默认值
    FLAG_VALUE="TJCU{L1nux_i5_S0_gO0D_I_th1nK}"
else
    # 使用环境变量的值
    FLAG_VALUE="$GZCTF_FLAG"
    unset GZCTF_FLAG
    export GZCTF_FLAG=not_flag
    GZCTF_FLAG=not_flag
fi

# 向/var/www/html/fl4g_is_here.php写入内容
cat <<EOF >/var/www/html/fl4g_is_here.php
<?php
\$flag = "$FLAG_VALUE";
\$ffll44gg = "本题前三血部长请奶茶，仅限大一";
EOF

apache2-foreground
