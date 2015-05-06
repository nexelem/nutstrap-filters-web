
###
 # Reverse the given array
 #
 # Example usage: {{ myArray | reverse }}
###
filtersModule.filter('reverse', () ->
    (items) ->
        if !items then return []
        if !(items instanceof Array) then return []
        return items.slice().reverse()
)