describe 'NormalizeId Filter spec', () ->

    normFilter = undefined

    beforeEach module('myApp.filters')

    beforeEach inject (normalizeIdFilter) ->
        normFilter = normalizeIdFilter

    it 'Should escape values as expected', () ->
        # sanity test
        expect(normFilter).toBeDefined()

        # simple cases
        expect(normFilter("1")).toEqual("1")
        expect(normFilter("abc")).toEqual("abc")

        # actual escaping
        expect(normFilter("#15:23")).toEqual("15:23")
        expect(normFilter("#15:abc")).toEqual("15:abc")
        expect(normFilter("#http://test.r#az.p#l")).toEqual("http://test.raz.pl")
        expect(normFilter("####")).toEqual("")

        # testing undefined
        expect(normFilter(undefined)).toEqual(undefined)
        expect(normFilter(null)).toEqual(null)
