class ARDLocator:
    type = 'div.ardtools_typeSelector div.v-select__slot'
    mosaic = '#ardtools_typeList_mosaic'
    advanced_mosaic = '#ardtools_typeList_advanced_mosaic'
    stack = '#ardtools_typeList_band_selection_stack'
    align = '#ardtools_typeList_align'
    slope = '#ardtools_typeList_slope'
    ml_down_scale = '#ardtools_typeList_ml_down_scale'
    up_scale = '#ardtools_typeList_up_scale'
    down_scale = '#ardtools_typeList_down_scale'
    visual = '#rdtools_typeList_convert_uint8'
    orthorectify = '#ardtooardtools_confirmButtonls_typeList_orthorectify'
    pansharpening = '#ardtools_typeList_pansharpening'

    name = '#ardtools_nameInput'
    name_error_message = 'div.ardtool_nameInput div.v-messages__message'
    confirm_button = '#ardtool_confirmButton'


class MosaicLocator:
    images = '#ardtools_mosaic_images'
    images_search = '#ardtools_mosaic_images_select2_searchInput'
    images_item_prefix = '#ardtools_mosaic_images_select2_resultList_item_'
    images_error_message = 'div.ardtools_mosaic_images div.v-messages__message'


class AdvancedMosaicLocator:
    images = '#ardtools_advancedMosaic_images'
    images_search = '#ardtools_advancedMosaic_images_select2_searchInput'
    images_item_prefix = '#ardtools_advancedMosaic_images_select2_resultList_item_'
    images_error_message = 'div.ardtools_advancedMosaic_images div.v-messages__message'


class StackLocator:
    images = '#ardtools_stack_images'
    images_search = '#ardtools_stack_images_select2_searchInput'
    images_item_prefix = '#ardtools_stack_images_select2_resultList_item_'
    images_error_message = 'div.ardtools_stack_images div.v-messages__message'


class SlopeLocator:
    image = '#ardtools_slope_image'
    image_search = '#ardtools_slope_image_select2_searchInput'
    image_item_prefix = '#ardtools_slope_image_select2_resultList_item_'
    image_error_message = 'div.ardtools_slope_image div.v-messages__message'


class DownscaleLocator:
    image = '#ardtools_downscale_image'
    image_search = '#ardtools_downscale_image_select2_searchInput'
    image_item_prefix = '#ardtools_downscale_image_select2_resultList_item_'
    image_error_message = 'div.ardtools_downscale_image div.v-messages__message'
    level = '#ardtools_downscale_level'
    level_error_message = 'div.ardtools_downscale_level div.v-messages__message'


class UpscaleLocator:
    image = '#ardtools_upscale_image'
    image_search = '#ardtools_upscale_image_select2_searchInput'
    image_item_prefix = '#ardtools_upscale_image_select2_resultList_item_'
    image_error_message = 'div.ardtools_upscale_image div.v-messages__message'
    level = '#ardtools_upscale_level'
    level_error_message = 'div.ardtools_upscale_level div.v-messages__message'


class PansharpeningLocator:
    multispectral = '#ardtools_pansharpening_multispectralImage'
    multispectral_search = '#ardtools_pansharpening_multispectralImage_select2_searchInput'
    multispectral_item_prefix = '#ardtools_pansharpening_multispectralImage_select2_resultList_item_'
    multispectral_error_message = 'div.ardtools_pansharpening_multispectralImage div.v-messages__message'
    panchromatic = '#ardtools_pansharpening_panchromaticImage'
    panchromatic_search = '#ardtools_pansharpening_panchromaticImage_select2_searchInput'
    panchromatic_item_prefix = '#ardtools_pansharpening_panchromaticImage_select2_resultList_item_'
    panchromatic_error_message = 'div.ardtools_pansharpening_panchromaticImage div.v-messages__message'
