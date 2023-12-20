 <?php
    if (!function_exists('success')) {
        function success($data)
        {
            return  $data;
        }
    }

    if (!function_exists('getCurrentDate')) {
        function getCurrentDate($format = 'd-m-Y H:i:s')
        {
            return \Carbon\Carbon::now()->format($format);
        }
    }