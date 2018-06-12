<section class="categories">
    <div class="container">

        @foreach($categories as $category)
            <div class="categories_item">
                <a href="{{ url('service-' . $category->slug) }}">

                    @if(isset($category->image) && !empty($category->image))
                        <img class="categories_item_visible" src="{{ asset('storage/' . $category->image) }}">
                    @else
                        <img class="categories_item_visible" src="images/categories_item_7.png">
                    @endif

                    <img class="categories_item_hover" src="images/categories_item_6.png">
                    <p>
                        {{ $category->title }}
                        <br> <br>
                    </p>
                </a>
            </div>
        @endforeach

    </div>
</section>

<div class="categories_margin_bg"></div>