
###
 # @Author: Easonyesheng preacher@sjtu.edu.cn
 # @Date: 2025-12-23 10:52:56
 # @LastEditors: Easonyesheng preacher@sjtu.edu.cn
 # @LastEditTime: 2025-12-23 11:07:21
 # @FilePath: /comac_proj/code/third_party/gaussian-splatting/train_gs.sh

### 



# source_folder="/opt/data/private/comac_proj/data/3dgs_data/comac/40_3dgs_data/colmap" # colmap sparse
# out_folder="/opt/data/private/comac_proj/code/third_party/gaussian-splatting/output/40_colmap_sparse"

source_folder="/opt/data/private/comac_proj/data/3dgs_data/comac/40_3dgs_data/mapanything" # mapanything
out_folder="/opt/data/private/comac_proj/code/third_party/gaussian-splatting/output/40_mapanything"


python train.py -s ${source_folder} \
                -m ${out_folder} \
                --antialiasing

