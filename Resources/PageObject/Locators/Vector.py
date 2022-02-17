class VectorToolkitLocators:
    type_ = "id:vectorToolkit_typeInput"
    buffer = "id:vectortools_typeList_buffer"
    centroid = "id:vectortools_typeList_centroid"
    erase = "id:vectortools_typeList_erase"
    identity = "id:vectortools_typeList_identity"
    intersect = "id:vectortools_typeList_intersect"
    rectify = "id:vectortools_typeList_rectify"
    row_detection = "id:vectortools_typeList_rowDetection"
    simplify = '#vectortools_typeList_simplify'
    symmetrical_difference = "id:vectortools_typeList_symmetricalDifference"
    union = "id:vectortools_typeList_union"
    update = "id:vectortools_typeList_update"
    clip = "id:vectortools_typeList_clip"

    name = "id:vectortools_nameInput"
    name_error_message = "id:vectortools_nameInput div.v-messages__message"
    confirm_button = "id:vectortools_confirmButton"

class BufferLocator:
    vector = '#vectortools_buffer_vector'
    vector_search = '#vectortools_buffer_vector_vectorSelector_searchInput'
    vector_item_prefix = '#vectortools_buffer_vector_vectorSelector_resultList_item_'
    vector_error_message = 'div.vectortools_buffer_vector div.v-messages__message'
    distance = '#vectortools_buffer_distance'
    resolution = '#vectortools_buffer_resolution'
    quadsegs = '#vectortools_buffer_quadsegs'
    cap_style = '#vectortools_buffer_capStyle'
    join_style = '#vectortools_buffer_joinStyle'
    mitre_limit = '#vectortools_buffer_mitreLimit'


class CentroidLocator:
    vector = '#vectortools_centroid_vector'
    vector_search = '#vectortools_centroid_vector_vectorSelector_searchInput'
    vector_item_prefix = '#vectortools_centroid_vector_vectorSelector_resultList_item_'
    vector_error_message = 'div.vectortools_centroid_vector div.v-messages__message'


class EraseLocator:
    input_features = '#vectortools_erase_inputFeatures'
    input_search = '#vectortools_erase_inputFeatures_featureSelector_searchInput'
    input_item_prefix = '#vectortools_erase_inputFeatures_featureSelector_resultList_item_'
    input_error_message = 'div.vectortools_erase_inputFeatures div.v-messages__message'
    erase_feature = '#vectortools_erase_eraseFeatures'
    erase_search = '#vectortools_erase_eraseFeatures_featureSelector_searchInput'
    erase_item_prefix = '#vectortools_erase_eraseFeatures_featureSelector_resultList_item_'
    erase_error_message = 'div.vectortools_erase_eraseFeatures div.v-messages__message'


class IdentityLocator:
    input_features = '#vectortools_identity_inputFeatures'
    input_search = '#vectortools_identity_inputFeatures_featureSelector_searchInput'
    input_item_prefix = '#vectortools_identity_inputFeatures_featureSelector_resultList_item_'
    input_error_message = 'div.vectortools_identity_inputFeatures div.v-messages__message'
    identity_features = '#vectortools_identity_identityFeatures'
    identity_search = '#vectortools_identity_identityFeatures_featureSelector_searchInput'
    identity_item_prefix = '#vectortools_identity_identityFeatures_featureSelector_resultList_item_'
    identity_error_message = 'div.vectortools_identity_identityFeatures div.v-messages__message'
    join_attributes = '#vectortools_identity_joinAttributes'
    relationship = '#vectortools_identity_relationship'


class IntersectLocator:
    input_features = '#vectortools_intersect_inputFeatures'
    input_search = '#vectortools_intersect_inputFeatures_featureSelector_searchInput'
    input_item_prefix = '#vectortools_intersect_inputFeatures_featureSelector_resultList_item_'
    input_error_message = 'div.vectortools_intersect_inputFeatures div.v-messages__message'
    join_attributes = '#vectortools_intersect_joinAttributes'
    output_type = '#vectortools_intersect_outputType'


class RectifyLocator:
    vector = '#vectortools_rectify_vector'
    vector_search = '#vectortools_rectify_vector_vectorSelector_searchInput'
    vector_item_prefix = '#vectortools_rectify_vector_vectorSelector_resultList_item_'
    vector_error_message = 'div.vectortools_rectify_vector div.v-messages__message'
    resolution = '#vectortools_rectify_resolution'


class RowDetectionLocator:
    vector = '#vectortools_rowDetection_vector'
    vector_search = '#vectortools_rowDetection_vector_vectorSelector_searchInput'
    vector_item_prefix = '#vectortools_rowDetection_vector_vectorSelector_resultList_item_'
    vector_error_message = 'div.vectortools_rowDetection_vector div.v-messages__message'


class SimplifyLocator:
    vector = '#vectortools_simplify_vector'
    vector_search = '#vectortools_simplify_vector_vectorSelector_searchInput'
    vector_item_prefix = '#vectortools_simplify_vector_vectorSelector_resultList_item_'
    vector_error_message = 'div.vectortools_simplify_vector div.v-messages__message'
    tolerance = '#vectortools_simplify_tolerance'


class SymmetricalDifferenceLocator:
    input_features = '#vectortools_symmetricalDifference_inputFeatures'
    input_search = '#vectortools_symmetricalDifference_inputFeatures_featureSelector_searchInput'
    input_item_prefix = '#vectortools_symmetricalDifference_inputFeatures_featureSelector_resultList_item_'
    input_error_message = 'div.vectortools_symmetricalDifference_inputFeatures div.v-messages__message'
    update_features = '#vectortools_symmetricalDifference_updateFeatures'
    update_search = '#vectortools_symmetricalDifference_updateFeatures_featureSelector_searchInput'
    update_item_prefix = '#vectortools_symmetricalDifference_updateFeatures_featureSelector_resultList_item_'
    update_error_message = 'div.vectortools_symmetricalDifference_updateFeatures div.v-messages__message'
    join_attributes = '#vectortools_symmetricalDifference_joinAttributes'


class UnionLocator:
    input_features = '#vectortools_union_inputFeatures'
    input_item_prefix = '#vectortools_union_inputFeatures_featureSelector_searchInput'
    input_error_message = 'div.vectortools_union_inputFeatures div.v-messages__message'
    join_attributes = '#vectortools_union_joinAttributes'
    gaps = '#vectortools_union_gaps'


class UpdateLocator:
    input_features = '#vectortools_update_inputFeatures'
    input_search = '#vectortools_update_inputFeatures_featureSelector_searchInput'
    input_item_prefix = '#vectortools_update_inputFeatures_featureSelector_resultList_item_'
    input_error_message = 'div.vectortools_update_inputFeatures div.v-messages__message'
    update_features = '#vectortools_update_updateFeatures'
    update_search = '#vectortools_update_updateFeatures_featureSelector_searchInput'
    update_item_prefix = '#vectortools_update_updateFeatures_featureSelector_resultList_item_'
    update_error_message = 'div.vectortools_update_updateFeatures div.v-messages__message'
    keep_borders = '#vectortools_update_keepBorders'


class ClipLocator:
    vector = '#vectortools_clip_vector'
    vector_search = '#vectortools_clip_vector_vectorSelector_searchInput'
    vector_item_prefix = '#vectortools_clip_vector_vectorSelector_resultList_item_'
    vector_error_message = 'div.vectortools_clip_vector div.v-messages__message'
    mask_layer = '#vectortools_clip_maskLayer'
    mask_layer_item_prefix = '#vectortools_clip_maskLayer_layerSelector_resultList_item_'
    mask_layer_error_message = 'div.vectortools_clip_maskLayer div.v-messages__message'



