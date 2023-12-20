<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Contracts\Auth\Authenticatable;
use Illuminate\Database\Eloquent\Model;

class Admin extends Model implements Authenticatable
{
    use HasFactory;
    public $fillable = ['name','image', 'email', 'password'];



public function payments(){
    return $this->hasMany(Payment::class);
}


    
    public function getAuthIdentifierName()
    {
        return 'id';
    }

    public function getAuthIdentifier()
    {
        return $this->getKey();
    }

    public function getAuthPassword()
    {
        return $this->password;
    }

    public function getRememberToken()
    {
        return null; // not needed for this example
    }

    public function setRememberToken($value)
    {
        // not needed for this example
    }

    public function getRememberTokenName()
    {
        return null; // not needed for this example
    }}
