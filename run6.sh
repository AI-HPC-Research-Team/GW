python3.7 -m inference.gwpe_main train new nde \
    --data_dir data/GW150914_sample_prior_basis/ \
    --model_dir models/GW150914_sample_uniform_100basis_all_uniform_prior/ \
    --basis_dir data/GW150914_sample_prior_basis/ \
    --save_model_name model.pt \
    --save_aux_filename waveforms_supplementary.hdf5 \
    --nbins 8 \
    --nsamples_target_event 1000 \
    --nsample 100000 \
    --dont_sample_extrinsic_only \
    --sampling_from uniform \
    --num_transform_blocks 10 \
    --nflows 15 \
    --batch_norm \
    --output_freq 10 \
    --batch_size 2048 \
    --lr 0.0002 \
    --epochs 2000 \
    --distance_prior_fn uniform_distance \
    --hidden_dims 512 \
    --truncate_basis 100 \
    --activation elu \
    --lr_anneal_method cosine
# train data sampling from uniform
# for all params dim
# using uniform basis (truncate 100)

## Used for resuming running
# python3.7 -m inference.gwpe_main train existing nde \
#     --data_dir data/GW150914_sample_prior_basis/ \
#     --model_dir models/GW150914_sample_uniform_100basis_all_uniform_prior/ \
#     --basis_dir data/GW150914_sample_prior_basis/ \
#     --save_model_name model.pt \
#     --save_aux_filename waveforms_supplementary.hdf5 \
#     --nsamples_target_event 1000 \
#     --nsample 100000 \
#     --dont_sample_extrinsic_only \
#     --sampling_from uniform \
#     --output_freq 10 \
#     --batch_size 2048 \
#     --lr 0.0002 \
#     --epochs 2000 \
#     --distance_prior_fn uniform_distance \
#     --truncate_basis 100 \
#     --lr_anneal_method cosine