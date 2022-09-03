# wait_groups

Simplest implementation of golang's wait groups

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     wait_groups:
       github: axvm/wait_group.cr
   ```

2. Run `shards install`

## Usage

```crystal
require "wait_group"

wg = WaitGroup.new

wg.add

spawn do
  sleep(5)
  wg.done
end

wg.wait # and your main fiber will be released once wg.done will be called
```

## Development

Do whatever you want

## Contributing

1. Fork it (<https://github.com/axvm/wait_group.cr>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Aleksandr Marchenko](https://github.com/axvm) - creator and maintainer
