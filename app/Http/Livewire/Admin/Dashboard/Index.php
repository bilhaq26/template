<?php

namespace App\Http\Livewire\Admin\Dashboard;

use App\Models\Web\Visitor;
use Livewire\Component;
use Spatie\Activitylog\Models\Activity;

class Index extends Component
{
    public $chartData;

    public function render()
    {
        $visitor = Visitor::latest()->take(10)->get();
        foreach($visitor as $item){
           $data['labels'][] = $item['created_at']->format('d M Y');
           $data['data'][] = $item['count'];
        }
        $this->chartData = [
            'labels' => $data['labels'] ?? [],
            'datasets' => [
                [
                    'label' => 'Daftar Pengunjung',
                    'data' => $data['data'] ?? [],
                    'backgroundColor' => '#3182CE',
                ],
            ],
        ];

        $activity = Activity::latest()->take(5)->get();

        return view('livewire.admin.dashboard.index',[
            'visitor' => $visitor,
            'activity' => $activity,
        ])->layout('admin.layout')->layoutData(['title' => 'Dashboard']);
    }
}
