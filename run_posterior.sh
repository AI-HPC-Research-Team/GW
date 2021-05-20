
# python3.7 -m lfigw.gwpe_extra train new nde \
#     --data_dir waveforms/GW150914_posterior/ \
#     --model_dir models/GW150914_posterior/ \
#     --basis_dir waveforms/GW150914/ \
#     --save_model_name model_sampall.pt \
#     --save_aux_filename waveforms_supplementary_sampall.hdf5 \
#     --nbins 8 \
#     --nsample 1000000 \
#     --sampling_from uniform \
#     --dont_sample_extrinsic_only \
#     --num_transform_blocks 10 \
#     --nflows 15 \
#     --batch_norm \
#     --batch_size 2048 \
#     --lr 0.0002 \
#     --epochs 1000 \
#     --distance_prior_fn uniform_distance \
#     --hidden_dims 512 \
#     --truncate_basis 100 \
#     --activation elu \
#     --lr_anneal_method cosine
    # --dont_sample_extrinsic_only \

python -m inference.gwpe_main train new nde \
    --data_dir data/GW150914_sample_prior_basis/ \
    --model_dir models/GW150914_sample_prior_basis/ \
    --basis_dir data/GW150914_sample_prior_basis/ \
    --save_model_name model_sampall.pt \
    --save_aux_filename waveforms_supplementary_sampall.hdf5 \
    --nbins 8 \
    --dont_sample_extrinsic_only \
    --nsamples_target_event 500 \
    --nsample 2000 \
    --sampling_from posterior \
    --num_transform_blocks 10 \
    --nflows 15 \
    --batch_norm \
    --batch_size 16 \
    --lr 0.0002 \
    --epochs 1000 \
    --distance_prior_fn uniform_distance \
    --hidden_dims 512 \
    --truncate_basis 100 \
    --activation elu \
    --lr_anneal_method cosine
