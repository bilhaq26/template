<?php
use Carbon\Carbon;
?>
<div>
    {{-- The best athlete wants his opponent at his best. --}}
    <div id="kt_app_content_container" class="app-container container-fluid">
        <!--begin::Row-->
        <div class="row g-5 g-xl-10 mb-5 mb-xl-10">
            <!--begin::Col-->
            <div class="col-xl-9">
                <!--begin::Table widget 12-->
                <div class="card card-flush h-xl-100">
                    <!--begin::Header-->
                    <div class="card-header pt-7">
                        <!--begin::Title-->
                        <h3 class="card-title align-items-start flex-column">
                            <span class="card-label fw-bold text-gray-800">Data Pengunjung</span>
                        </h3>
                        <!--end::Title-->
                    </div>
                    <!--end::Header-->
                    <!--begin::Body-->
                    <div class="card-body">
                        <!--begin::Table container-->

                        <canvas id="chart" height="120"></canvas>

                        <!--end::Table-->
                    </div>
                    <!--end: Card Body-->
                </div>
                <!--end::Table widget 12-->
            </div>
            <!--end::Col-->
            <!--begin::Col-->
            <div class="col-xl-3">
                <!--begin::Table widget 12-->
                <div class="card card-flush h-xl-100">
                    <!--begin::Header-->
                    <div class="card-header pt-7">
                        <!--begin::Title-->
                        <h3 class="card-title align-items-start flex-column">
                            <span class="card-label fw-bold text-gray-800">Log Aktifitas</span>
                        </h3>
                        <!--end::Title-->
                    </div>
                    <!--end::Header-->
                    <!--begin::Body-->
                    <div class="card-body">
                        <!--begin::Table container-->
                        <div class="tab-content">
                            <!--begin::Tab panel-->
                            <div id="kt_activity_today" class="card-body p-0 tab-pane fade show active" role="tabpanel"
                                aria-labelledby="kt_activity_today_tab">
                                <!--begin::Timeline-->
                                <div class="timeline">
                                    @forelse ($activity as $item)
                                    <!--begin::Timeline item-->
                                    <div class="timeline-item">
                                        <!--begin::Timeline line-->
                                        <div class="timeline-line w-40px"></div>
                                        <!--end::Timeline line-->
                                        <!--begin::Timeline icon-->
                                        <div class="timeline-icon symbol symbol-circle symbol-40px me-4">
                                            <div class="symbol-label bg-light">
                                                <!--begin::Svg Icon | path: icons/duotune/communication/com003.svg-->
                                                <span class="svg-icon svg-icon-2 svg-icon-gray-500">
                                                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                                                        xmlns="http://www.w3.org/2000/svg">
                                                        <path opacity="0.3"
                                                            d="M2 4V16C2 16.6 2.4 17 3 17H13L16.6 20.6C17.1 21.1 18 20.8 18 20V17H21C21.6 17 22 16.6 22 16V4C22 3.4 21.6 3 21 3H3C2.4 3 2 3.4 2 4Z"
                                                            fill="currentColor" />
                                                        <path
                                                            d="M18 9H6C5.4 9 5 8.6 5 8C5 7.4 5.4 7 6 7H18C18.6 7 19 7.4 19 8C19 8.6 18.6 9 18 9ZM16 12C16 11.4 15.6 11 15 11H6C5.4 11 5 11.4 5 12C5 12.6 5.4 13 6 13H15C15.6 13 16 12.6 16 12Z"
                                                            fill="currentColor" />
                                                    </svg>
                                                </span>
                                                <!--end::Svg Icon-->
                                            </div>
                                        </div>
                                        <!--end::Timeline icon-->
                                        <!--begin::Timeline content-->
                                        <div class="timeline-content mb-10 mt-n1">
                                            <!--begin::Timeline heading-->
                                            <div class="pe-3 mb-5">
                                                <!--begin::Title-->
                                                <div class="fs-5 fw-semibold mb-2"><a href="{{ route('users.detail',$item->causer->id) }}">{{ $item->causer->username }}</a> {{ $item->description }}</div>
                                                <!--end::Title-->
                                                <!--begin::Description-->
                                                <div class="d-flex align-items-center mt-1 fs-6">
                                                    <!--begin::Info-->
                                                    <div class="text-muted me-2 fs-7">Added at {{ Carbon::parse($item->created_at)->isoFormat('dddd, DD MMMM YYYY, hh:mm:ss') }}</div>
                                                    <!--end::Info-->
                                                </div>
                                                <!--end::Description-->
                                            </div>
                                            <!--end::Timeline heading-->
                                        </div>
                                        <!--end::Timeline content-->
                                    </div>
                                    <!--end::Timeline item-->
                                    @empty

                                    @endforelse
                                </div>
                                <!--end::Timeline-->
                            </div>
                            <!--end::Tab panel-->
                        </div>
                        <!--end::Table-->
                    </div>
                    <!--end: Card Body-->
                </div>
                <!--end::Table widget 12-->
            </div>
            <!--end::Col-->
        </div>
        <!--end::Row-->
    </div>
    @push('scripts')
    <script>
        document.addEventListener('livewire:load', function () {
            var ctx = document.getElementById('chart').getContext('2d');
            var chart = new Chart(ctx, {
                type: 'bar',
                data: @json($chartData),
            });
        });

    </script>
    @endpush
</div>
