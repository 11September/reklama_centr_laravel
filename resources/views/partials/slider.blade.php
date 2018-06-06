<section class="slider-part">
    <div class="container-fluid">
        <div class="owl-carousel header-slider owl-theme">

            @foreach($sliders as $slider)
                <div class="slider-item">
                    <img src="{{ asset('storage/' . $slider->image) }}" class="slider-image" alt="">
                    <div class="slider-content">
                        <div class="top-block"></div>
                        <div class="main-block">
                            <img class="red-grid" src="images/red-grid.png" alt="">
                            <h1 class="slider-header">{{ $slider->name }}</h1>
                        </div>
                        <div class="bottom-block">
                            <p class="bottom-paragraph">
                                {{ $slider->description }}
                            </p>
                        </div>
                    </div>
                </div>
            @endforeach

        </div>
    </div>
</section>