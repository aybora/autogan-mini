#!/usr/bin/env bash

python train.py \
-gen_bs 128 \
-dis_bs 64 \
--dataset cifar10 \
--bottom_width 4 \
--img_size 32 \
--max_iter 50000 \
--gen_model autogan_mini_cifar10_a \
--dis_model autogan_mini_cifar10_a \
--teacher_gen_model autogan_cifar10_a \
--teacher_dis_model autogan_cifar10_a \
--teacher_path teacher_net.pth \
--latent_dim 128 \
--gf_dim 256 \
--df_dim 128 \
--g_spectral_norm False \
--d_spectral_norm True \
--g_lr 0.0001 \
--d_lr 0.0001 \
--d_temp 16 \
--g_temp 16 \
--beta1 0.0 \
--beta2 0.9 \
--init_type xavier_uniform \
--n_critic 5 \
--val_freq 20 \
--exp_name autogan-mini_cifar10_a_t_16_16
