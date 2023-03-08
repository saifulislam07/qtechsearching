<div>
    <table class="table table-bordered">
        <thead>
            <tr class="bg-info text-white">
                <th>Product Name</th>
                <th>Short Description</th>
                <th>Original Price</th>
                <th>Sale Price</th>
                <th>Quantity</th>
            </tr>
        </thead>
        <tbody>
            @forelse ($allPreductsByKey as $eachProduct)
                <tr>
                    <td>{{ $eachProduct->name }}</td>
                    <td>{{ $eachProduct->small_description }}</td>
                    <td>{{ $eachProduct->original_price }}</td>
                    <td>{{ $eachProduct->selling_price }}</td>
                    <td>{{ $eachProduct->quantity }}</td>
                </tr>
            @empty
                <h6 class="alert alert-danger">
                    Nothing found
                </h6>
            @endforelse
        </tbody>
    </table>
</div>
