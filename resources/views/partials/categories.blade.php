<section class="categories">
    <div class="container">
        <div class="wrapper-categories row">
            @foreach($categories as $category)
                <div class="categories_item">
                    <div class="category_item_effect">
                        <a href="{{ url('service-' . $category->slug) }}">

                            @if(isset($category->image) && !empty($category->image))
                                <img class="categories_item_visible" src="{{ asset('storage/' . $category->image) }}">
                            @else
                                <div class="categories_item_overlay">
                                    <i class="fas fa-plus "></i>
                                </div>
                                {{--<img class="categories_item_visible category_item_effect_default" src="images/categories_item_7.png">--}}
                            @endif

                            <div class="categories_item_overlay categories_item_overlay_default">
                                <i class="fas fa-plus "></i>
                            </div>

                            {{--<img class="categories_item_hover" src="images/categories_item_6.png">--}}
                        </a>
                    </div>

                    <a href="{{ url('service-' . $category->slug) }}">
                        <p>
                            {{ $category->title }}
                            <br> <br>
                        </p>
                    </a>

                </div>
            @endforeach
        </div>
    </div>
</section>

<div class="categories_margin_bg"></div>