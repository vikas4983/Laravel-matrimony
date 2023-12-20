<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PayUMoney extends Model
{
    use HasFactory;

    public $fillable = [
        'admin_id',
        'plan_id',
        'email',
        'phone',
        'total',
        'amount',
        'status',
        'mode',
        'txnid',
        'productinfo',
         'hash',
        'payuMoneyId',
        
        
    ];
}
