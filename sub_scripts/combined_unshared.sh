#!/bin/bash

export OMP_NUM_THREADS=1

/data/wiay/postgrads/alex/gwcosmo_edited/bin/python \
    /data/wiay/postgrads/alex/gwcosmo_edited/bin/gwcosmo_dark_siren_posterior --method sampling \
    --posterior_samples /home/2386233p/BBH_data/posterior_samples.json \
    --skymap /home/2386233p/BBH_data/skymaps.json \
    --injections_path /data/wiay/GWTC3/injections/inj_SNR9_det_frame_2e6.h5 \
    --parameter_dict /home/2386233p/dicts/combined_full_dict.json \
    --LOS_catalog /data/wiay/postgrads/alex/empty_catalog_glade_128.hdf5 \
    --redshift_evolution Madau \
    --sampler dynesty \
    --snr 11 \
    --mass_model combined-population-powerlaw-gaussian \
    --nlive 1000 \
    --dlogz 0.1 \
    --npool None \
    --max_samps_per_pixel 2000 \
    --outputfile comb_unshared
