defmodule GraphOne do
    @doc """
    Extract the neighbors of a directed acrylic graph (DAG)

    ## Example

        iex> dag = [a: {:b, :c}, b: {:c, :d}, c: {:e}, d: {:e}, e: {}]
        iex> GraphOne.extract_neighbors(dag)
        [b: :a, c: :a, c: :b, d: :b, e: :c, e: :d]
    """
    def extract_neighbors (dag) do
        dag |>
            Enum.map(fn({node, neighbors}) -> neighbors
                |> Tuple.to_list
                |> Enum.map(fn(child) -> {child, node} end)
            end)
            |> List.flatten
    end
end

## dag = [a: {:b, :c}, b: {:c, :d}, c: {:e}, d: {:e}, e: {}]
