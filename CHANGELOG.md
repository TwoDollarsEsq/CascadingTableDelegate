# Change Log

## [3.2.0](https://github.com/edopelawi/CascadingTableDelegate/tree/3.2.0) (2019-10-14)
[Full Changelog](https://github.com/edopelawi/CascadingTableDelegate/compare/1.0.0...3.2.0)


**Merged pull requests:**

- Migrate codebase to Swift 4.2 [\#23](https://github.com/edopelawi/CascadingTableDelegate/pull/23) ([edopelawi](https://github.com/edopelawi))

## [3.0.1](https://github.com/edopelawi/CascadingTableDelegate/tree/3.0.1) (2018-01-04)
[Full Changelog](https://github.com/edopelawi/CascadingTableDelegate/compare/3.0.0...3.0.1)

**Closed issues:**

- Build Fails with Carthage Version 0.26.2 [\#16](https://github.com/edopelawi/CascadingTableDelegate/issues/16)

**Merged pull requests:**

- Fix Carthage Build Error [\#17](https://github.com/edopelawi/CascadingTableDelegate/pull/17) ([leedsalex](https://github.com/leedsalex))

## [3.0.0](https://github.com/edopelawi/CascadingTableDelegate/tree/3.0.0) (2017-09-29)
[Full Changelog](https://github.com/edopelawi/CascadingTableDelegate/compare/2.0.4...3.0.0)

**Closed issues:**

- Update Project For Xcode 9 & Swift 4 [\#14](https://github.com/edopelawi/CascadingTableDelegate/issues/14)

**Merged pull requests:**

- Swift 4 update [\#15](https://github.com/edopelawi/CascadingTableDelegate/pull/15) ([edopelawi](https://github.com/edopelawi))

## [2.0.4](https://github.com/edopelawi/CascadingTableDelegate/tree/2.0.4) (2017-02-19)
[Full Changelog](https://github.com/edopelawi/CascadingTableDelegate/compare/2.0.3...2.0.4)

**Closed issues:**

- crash when press "Show me he good stuff" button [\#9](https://github.com/edopelawi/CascadingTableDelegate/issues/9)

**Merged pull requests:**

- InternalInconsistencyException fix for sample project [\#10](https://github.com/edopelawi/CascadingTableDelegate/pull/10) ([edopelawi](https://github.com/edopelawi))

## [2.0.3](https://github.com/edopelawi/CascadingTableDelegate/tree/2.0.3) (2016-12-21)
[Full Changelog](https://github.com/edopelawi/CascadingTableDelegate/compare/2.0.2...2.0.3)

**Merged pull requests:**

- Fix for dynamic cell height bug \(issue \#7\) [\#8](https://github.com/edopelawi/CascadingTableDelegate/pull/8) ([edopelawi](https://github.com/edopelawi))

## [2.0.2](https://github.com/edopelawi/CascadingTableDelegate/tree/2.0.2) (2016-11-06)
[Full Changelog](https://github.com/edopelawi/CascadingTableDelegate/compare/2.0.1...2.0.2)

**Merged pull requests:**

- Grammar check on the documentations [\#5](https://github.com/edopelawi/CascadingTableDelegate/pull/5) ([edopelawi](https://github.com/edopelawi))
- Add `pod install` step in `run\_tests.sh` [\#4](https://github.com/edopelawi/CascadingTableDelegate/pull/4) ([edopelawi](https://github.com/edopelawi))
- Fix carthage issue on 2.0.1 [\#3](https://github.com/edopelawi/CascadingTableDelegate/pull/3) ([edopelawi](https://github.com/edopelawi))
- Update README.md and CONTRIBUTING.md [\#2](https://github.com/edopelawi/CascadingTableDelegate/pull/2) ([edopelawi](https://github.com/edopelawi))
- Change sample code's view models to implement Observer pattern [\#1](https://github.com/edopelawi/CascadingTableDelegate/pull/1) ([edopelawi](https://github.com/edopelawi))

## [2.0.1](https://github.com/edopelawi/CascadingTableDelegate/tree/2.0.1) (2016-11-04)
[Full Changelog](https://github.com/edopelawi/CascadingTableDelegate/compare/2.0.0...2.0.1)

**Merged pull requests:**

- Update README.md and CONTRIBUTING.md [\#2](https://github.com/edopelawi/CascadingTableDelegate/pull/2) ([edopelawi](https://github.com/edopelawi))
- Change sample code's view models to implement Observer pattern [\#1](https://github.com/edopelawi/CascadingTableDelegate/pull/1) ([edopelawi](https://github.com/edopelawi))

## [2.0.0](https://github.com/edopelawi/CascadingTableDelegate/tree/2.0.0) (2016-11-03)
[Full Changelog](https://github.com/edopelawi/CascadingTableDelegate/compare/1.2.0...2.0.0)

- Upgrade to Swift 3.0.

## [1.2.0](https://github.com/edopelawi/CascadingTableDelegate/tree/1.2.0) (2016-11-02)
[Full Changelog](https://github.com/edopelawi/CascadingTableDelegate/compare/1.1.0...1.2.0)

- Added reload section feature in CascadingSectionTableDelegate.
	- The `reloadOnChildDelegateChanged` boolean property was changed to `reloadModeOnChildDelegatesChanged` enum value, which supports `.None`, `.Whole`, and `.Section(animation:)` mode.
- Added sample app.
- Updated README.md to

## [1.1.0](https://github.com/edopelawi/CascadingTableDelegate/tree/1.1.0) (2016-10-21)

[Full Changelog](https://github.com/edopelawi/CascadingTableDelegate/compare/1.0.0...1.1.0)

- Fixed faulty propagation logic where CascadingRootTableDelegate doesn't call its child method with index of 0.

## [1.0.0](https://github.com/edopelawi/CascadingTableDelegate/tree/1.0.0) (2016-10-19)

Initial version of CascadingTableDelegate.

- Added these classes (with full unit tests):
	- PropagatingTableDelegate
	- CascadingRootTableDelegate
	- CascadingSectionTableDelegate
- Added project-related documentation (README.md, CONTRIBUTING.md, Podspec, etc.)

\* *This Change Log was automatically generated by [github_changelog_generator](https://github.com/skywinder/Github-Changelog-Generator)*