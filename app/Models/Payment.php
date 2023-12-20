<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Payment extends Model
{
    use HasFactory;
    public $fillable = [
        'admin_id',
        'plan_id',
        'total',
        'amount',
        'offer',
        'saving',
        'plan_name',
        'duration',
        'allow_contact',
        'message',
        'chat',
        'video_call',
        'expiry_date',
    ];

    public function admin(){
        return $this->belongsTo(Admin::class);
    }
}
