<?php

use Tygh\Registry;

if (!defined('BOOTSTRAP')) {
    die('Access denied');
}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    return array(CONTROLLER_STATUS_OK);
}

if ($mode == 'manage') {
    $selected_fields = Tygh::$app['view']->getTemplateVars('selected_fields');

    $selected_fields[] = array('name' => '[data][product_condition]', 'text' => __('Product condition'));

    Tygh::$app['view']->assign('selected_fields', $selected_fields);
} elseif ($mode == 'm_update') {
    $selected_fields = $_SESSION['selected_fields'];

    $field_groups = Tygh::$app['view']->getTemplateVars('field_groups');
    $filled_groups = Tygh::$app['view']->getTemplateVars('filled_groups');
    $field_names = Tygh::$app['view']->getTemplateVars('field_names');

    if (!empty($selected_fields['data']['product_condition'])) {
        $field_groups['S']['product_condition']['name'] = 'products_data';
        $field_groups['S']['product_condition']['variants'] = array(
            '' => 'undefined',
            'excellent' => 'excellent',
            'good' => 'good',
            'average' => 'average',
            'poor' => 'poor',
            'destroyed' => 'destroyed',
        );
        $filled_groups['S']['product_condition'] = __('Product condition');
        unset($field_names['product_condition']);
    }

    Tygh::$app['view']->assign('field_groups', $field_groups);
    Tygh::$app['view']->assign('filled_groups', $filled_groups);
    Tygh::$app['view']->assign('field_names', $field_names);
}
