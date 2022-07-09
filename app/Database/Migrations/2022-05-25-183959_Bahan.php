<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Bahan extends Migration
{
    public function up()
    {
        $this->forge->addField([
            'id'          => [
                'type'           => 'INT',
                'constraint'     => 5,
                'unsigned'       => true,
                'auto_increment' => true
            ],
            'nama'       => [
                'type'           => 'VARCHAR',
                'constraint'     => '255'
            ],
            'jumlah'      => [
                'type'           => 'VARCHAR',
                'constraint'     => 100,
            ],
            'harga' => [
                'type'           => 'VARCHAR',
                'constraint'     => 100,
            ],
            'penyuplai'      => [
                'type'           => 'VARCHAR',
                'constraint'     => 255,
            ],
        ]);

        $this->forge->addKey('id', TRUE);

        $this->forge->createTable('bahanbahan', TRUE);
    }

    public function down()
    {
        $this->forge->dropTable('bahanbahan');
    }
}
