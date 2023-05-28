#!/usr/bin/env bash
python -u train.py --lr 0.00005 --batch-size 16 --dist-url 'tcp://localhost:10001' --multiprocessing-distributed --world-size 1 --rank 0  --epochs 50 --save_path ./result_mars --op sam --wd 0.03 --dataset mars --cos --dim 1000 --asam --rho 2.5 --workers 8 --gpu 0
python -u train.py --lr 0.000005 --batch-size 16 --dist-url 'tcp://localhost:10001' --multiprocessing-distributed --world-size 1 --rank 0  --epochs 50 --resume ./result_mars/checkpoint.pth.tar --save_path ./result_mars --op sam --wd 0.03 --dataset mars --cos --dim 1000 --asam --rho 2.5 --sat_res 400  --workers 8 --gpu 0 --crop