#!/usr/bin/env ruby2

module People
    @@people = [
        {
            name: 'Mike',
            age: 30,
            hair: 'brown',
        },
        {
            name: 'Jake',
            age: 20,
            hair: 'blonde',
        },
        {
            name: 'Ann',
            age: 25,
            hair: 'red',
        },
        {
            name: 'Joe',
            age: '30',
            hair: 'black',
        }
    ]

    def self.get
        @@people
    end
end