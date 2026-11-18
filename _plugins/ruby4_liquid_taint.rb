# Lets the site build locally on Ruby 3.2 and later.
#
# `github-pages` pins Jekyll 3.9, which pins Liquid exactly at 4.0.3 — not
# `~> 4.0`, so no patch bump is reachable while that gem is in the Gemfile.
# Liquid 4.0.3's `Variable#taint_check` opens with `return unless
# obj.tainted?`, and `Object#tainted?` was deprecated in Ruby 2.7 and removed
# in 3.2. On a modern Ruby every page carrying a Liquid variable therefore
# dies with `undefined method 'tainted?'`, which is every page here.
#
# Taint checking only ever did anything under `Template.taint_mode`, which
# Jekyll never sets, so the method's whole body was unreachable in this site's
# builds even on an older Ruby. Overriding it with a no-op removes a check
# that was not checking anything.
#
# This file is for local builds alone. GitHub Pages builds in safe mode and
# ignores `_plugins/` entirely, so the published site is unaffected by it —
# and Pages runs its own bundle on a Ruby where 4.0.3 still works. Delete this
# once the site moves off `github-pages` to a current Jekyll.
module Liquid
  class Variable
    def taint_check(_context, _obj)
      nil
    end
  end
end
