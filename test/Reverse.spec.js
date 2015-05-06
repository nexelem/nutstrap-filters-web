
describe('Reverse Filter spec', function() {

    beforeEach(module('myApp.filters'));

    it('Should reverse values as expected', inject(function(reverseFilter) {
        expect(reverseFilter).toBeDefined();

        // Edge cases
        expect(reverseFilter("")).toEqual([]);
        expect(reverseFilter(null)).toEqual([]);
        expect(reverseFilter(undefined)).toEqual([]);

        expect(reverseFilter(123)).toEqual([]);

        var array = ["a","b","c","d"];
        expect(reverseFilter(array)).toEqual(["d","c","b","a"]);

        array = ["any","old","values","reversed"];
        expect(reverseFilter(array)).toEqual(["reversed","values","old","any"]);
    }));

});