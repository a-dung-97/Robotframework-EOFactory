class UnsupervisedLocator:
    type = 'div.unsupervisedtools_typeSelector div.v-select__slot'
    fuzclus = '#unsupervisedtools_typeList_fuzclus'
    isoclus = '#unsupervisedtools_typeList_isoclus'
    kclus = '#unsupervisedtools_typeList_kclus'

    name = '#unsupervisedtools_nameInput'
    name_error_message = '#unsupervisedtools_nameInput div.'
    confirm_button = '#unsupervisedtools_confirmButton'


class FUZCLUSLocator:
    image = '#unsupervisedtools_fuzclus_image'
    image_search = '#unsupervisedtools_fuzclus_image_imageSelector_searchInput'
    image_item_prefix = '#unsupervisedtools_fuzclus_image_imageSelector_resultList_item_'
    image_error_message = 'div.unsupervisedtools_fuzclus_image div.v-messages__message'
    cluster_centers = '#unsupervisedtools_fuzclus_clusterCenters'
    maximum_iterations = '#unsupervisedtools_fuzclus_maximumIterations'
    movement_threshold = '#unsupervisedtools_fuzclus_movementThreshold'
    gray_level = '#unsupervisedtools_fuzclus_grayLevel'


class ISOCLUSLocator:
    image = '#unsupervisedtools_isoclus_image'
    image_search = '#unsupervisedtools_isoclus_image_imageSelector_searchInput'
    image_item_prefix = '#unsupervisedtools_isoclus_image_imageSelector_resultList_item_'
    image_error_message = 'div.unsupervisedtools_isoclus_image div.v-messages__message'
    clusters_desired = '#unsupervisedtools_isoclus_clustersDesired'
    minimum_clusters = '#unsupervisedtools_isoclus_minimumClusters'
    maximum_clusters = '#unsupervisedtools_isoclus_maximumClusters'
    maximum_iterations = '#unsupervisedtools_isoclus_maximumIterations'
    movement_threshold = '#unsupervisedtools_isoclus_movementThreshold'
    minimum_threshold = '#unsupervisedtools_isoclus_minimumThreshold'
    standard_deviation = '#unsupervisedtools_isoclus_standardDeviation'
    lumping = '#unsupervisedtools_isoclus_lumping'
    maximum_lumping_pairs = '#unsupervisedtools_isoclus_maximumLumpingPairs'
    gray_level = '#unsupervisedtools_isoclus_grayLevel'


class KCLUSLocator:
    image = '#unsupervisedtools_kclus_image'
    image_search = '#unsupervisedtools_kclus_image_imageSelector_searchInput'
    image_item_prefix = '#unsupervisedtools_kclus_image_imageSelector_resultList_item_'
    image_error_message = 'div.unsupervisedtools_kclus_image div.v-messages__message'
    clusters = '#unsupervisedtools_kclus_clusters'
    method = '#unsupervisedtools_kclus_method'
    no_init = '#unsupervisedtools_kclus_no_init'
    maximum_iterations = '#unsupervisedtools_kclus_maximumIterations'
    relative_tolerance = '#unsupervisedtools_kclus_relativeTolerance'
    verbosity_mode = '#unsupervisedtools_kclus_verbosityState'
    random_state = '#unsupervisedtools_kclus_randomState'
    copy_x = '#unsupervisedtools_kclus_copyX'
    algorithm = '#unsupervisedtools_kclus_algorithm'
