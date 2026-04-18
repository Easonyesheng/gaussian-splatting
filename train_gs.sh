
###
 # @Author: Easonyesheng preacher@sjtu.edu.cn
 # @Date: 2025-12-23 10:52:56
 # @LastEditors: Easonyesheng preacher@sjtu.edu.cn
 # @LastEditTime: 2026-04-18 12:52:20
 # @FilePath: /comac_proj/code/third_party/gaussian-splatting/train_gs.sh

### 

cuda_device=0

# source_folder="/opt/data/private/comac_proj/data/3dgs_data/comac/40_3dgs_data/sparse_colmap" # colmap sparse
# out_folder="/opt/data/private/comac_proj/code/third_party/gaussian-splatting/output/40_colmap_sparse_no_antia"

# source_folder="/opt/data/private/comac_proj/data/3dgs_data/comac/40_3dgs_data/dense_colmap_input" # colmap dense
# out_folder="/opt/data/private/comac_proj/code/third_party/gaussian-splatting/output/40_colmap_dense_antia"

# source_folder="/opt/data/private/comac_proj/data/3dgs_data/comac/53_mannual/raw_data_colmap" # colmap sparse
# out_folder="/opt/data/private/comac_proj/code/third_party/gaussian-splatting/output/i53_colmap_sparse_antia"

# source_folder="/opt/data/private/comac_proj/data/3dgs_data/comac/i93" # colmap sparse
# out_folder="/opt/data/private/comac_proj/code/third_party/gaussian-splatting/output/i93_colmap_sparse_antia"

# source_folder="/opt/data/private/comac_proj/data/3dgs_data/comac/40_3dgs_data/mapanything" # mapanything
# out_folder="/opt/data/private/comac_proj/code/third_party/gaussian-splatting/output/40_mapanything"

# source_folder="/opt/data/private/comac_proj/data/3dgs_data/comac/40_3dgs_data/vggt" # vggt
# out_folder="/opt/data/private/comac_proj/code/third_party/gaussian-splatting/output/40_vggt"

# ===== Co-Adaptation-of-3DGS options =====
# Dropout regularization (recommend from paper): 0.0 disables it.
dropout_factor=0.2
# Opacity noise injection (paper suggests tuning per scene): 0.0 disables it.
sigma_noise=0.0

source_folder="/opt/data/private/comac_proj/data/3dgs_data/comac/40_3dgs_data/sparse_colmap" # colmap sparse
out_folder="/opt/data/private/comac_proj/code/third_party/gaussian-splatting/output/40_colmap_sparse_drop02"

CUDA_VISIBLE_DEVICES=${cuda_device} python train.py -s ${source_folder} \
                -m ${out_folder} \
                --antialiasing \
                --dropout_factor ${dropout_factor} \
                --sigma_noise ${sigma_noise}

