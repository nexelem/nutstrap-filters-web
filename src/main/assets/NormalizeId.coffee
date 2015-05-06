
###
 # NormalizeId Filter
 # @param {String} input the input string to normalize
 #
 # Example usage: {{ myText | normalizeId }}
###
filtersModule.filter('normalizeId', () ->
    (input) ->
      if input?
        input.replace(/#/g, "")
      else
        input
)