<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('payments', function (Blueprint $table) {
            $table->id();
            $table->foreignId('admin_id');
            $table->foreignId('plan_id');
            $table->string('total');
            $table->string('amount');
            $table->string('offer');
            $table->string('saving');
            $table->string('plan_name');
            $table->string('duration');
            $table->string('allow_contact');
            $table->string('message');
            $table->string('chat');
            $table->string('video_call');
            $table->string('expiry_date');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('payments');
    }
};
