# Changelog

## [v4.11.1](https://github.com/bensheldon/good_job/tree/v4.11.1) (2025-06-30)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v4.11.0...v4.11.1)

**Merged pull requests:**

- Add `require rails` to good\_job/engine.rb to allow `bundle console` usage [\#1653](https://github.com/bensheldon/good_job/pull/1653) ([bensheldon](https://github.com/bensheldon))

## [v4.11.0](https://github.com/bensheldon/good_job/tree/v4.11.0) (2025-06-30)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v4.10.2...v4.11.0)

**Implemented enhancements:**

- Add GoodJob::Adapter\#stopping to support Active Job continuations feature [\#1646](https://github.com/bensheldon/good_job/pull/1646) ([bensheldon](https://github.com/bensheldon))

**Merged pull requests:**

- Fix Probe Server handling server shutdown on SIGINT when daemonized [\#1644](https://github.com/bensheldon/good_job/pull/1644) ([bensheldon](https://github.com/bensheldon))

## [v4.10.2](https://github.com/bensheldon/good_job/tree/v4.10.2) (2025-05-29)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v4.10.1...v4.10.2)

**Fixed bugs:**

- Fix Dashboard retries by wrapping in original/application locale [\#1643](https://github.com/bensheldon/good_job/pull/1643) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- I18n::InvalidLocale in GoodJob::JobsController\#mass\_update [\#1641](https://github.com/bensheldon/good_job/issues/1641)

**Merged pull requests:**

- Fix the path for the extended dashboard views in README.md [\#1638](https://github.com/bensheldon/good_job/pull/1638) ([zarembas](https://github.com/zarembas))

## [v4.10.1](https://github.com/bensheldon/good_job/tree/v4.10.1) (2025-05-20)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v4.10.0...v4.10.1)

**Fixed bugs:**

- Preserve job locale when retrying on dashboard [\#1634](https://github.com/bensheldon/good_job/pull/1634) ([Earlopain](https://github.com/Earlopain))

**Closed issues:**

- Dashboard retry overwrites original job locale — is this intended behavior? [\#1630](https://github.com/bensheldon/good_job/issues/1630)

## [v4.10.0](https://github.com/bensheldon/good_job/tree/v4.10.0) (2025-04-26)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v4.9.3...v4.10.0)

**Implemented enhancements:**

- Improve dashboard performance when searching for job ID [\#1619](https://github.com/bensheldon/good_job/pull/1619) ([francois](https://github.com/francois))

**Fixed bugs:**

- Fix Batches dashboard deserealization error [\#1628](https://github.com/bensheldon/good_job/pull/1628) ([JulianPasquale](https://github.com/JulianPasquale))
- Fix enqueue\_after\_transaction\_commit config [\#1626](https://github.com/bensheldon/good_job/pull/1626) ([santib](https://github.com/santib))

**Closed issues:**

- Retried jobs with GoodJob::ActiveJobExtensions::Concurrency::ConcurrencyExceededError lose their arguments [\#1620](https://github.com/bensheldon/good_job/issues/1620)
- Searching for job ID fails on Heroku due to 30s request limit [\#1618](https://github.com/bensheldon/good_job/issues/1618)
- Poor performance when enqueuing many throttled jobs because of unindexed queries [\#1603](https://github.com/bensheldon/good_job/issues/1603)

**Merged pull requests:**

- Update `GoodJob.migrated?` for latest migration [\#1631](https://github.com/bensheldon/good_job/pull/1631) ([Earlopain](https://github.com/Earlopain))

## [v4.9.3](https://github.com/bensheldon/good_job/tree/v4.9.3) (2025-03-10)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v4.9.2...v4.9.3)

**Closed issues:**

- perform\_job.good\_job notification for successful jobs has error\_event: :discarded [\#1609](https://github.com/bensheldon/good_job/issues/1609)

**Merged pull requests:**

- Fix instrumentation of "perform\_job.good\_job" event [\#1616](https://github.com/bensheldon/good_job/pull/1616) ([bensheldon](https://github.com/bensheldon))

## [v4.9.2](https://github.com/bensheldon/good_job/tree/v4.9.2) (2025-03-09)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v4.9.1...v4.9.2)

**Fixed bugs:**

- Quiet duplicate cron enqueue logging by pretending it was halted at before\_enqueue [\#1615](https://github.com/bensheldon/good_job/pull/1615) ([bensheldon](https://github.com/bensheldon))

## [v4.9.1](https://github.com/bensheldon/good_job/tree/v4.9.1) (2025-03-09)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v4.9.0...v4.9.1)

**Implemented enhancements:**

- Order Dashboard jobs in more "natural" order [\#1604](https://github.com/bensheldon/good_job/pull/1604) ([francois](https://github.com/francois))

**Fixed bugs:**

- \[dashboard\] Scheduled tasks are shown "backwards" [\#1580](https://github.com/bensheldon/good_job/issues/1580)
- Update `form_with` calls to be compatible with Rails 8 [\#1610](https://github.com/bensheldon/good_job/pull/1610) ([sallyhall](https://github.com/sallyhall))
- Add index on good\_jobs: \[:concurrency\_key, :created\_at\] to improve performance of throttling \(\#1603\) [\#1605](https://github.com/bensheldon/good_job/pull/1605) ([Intrepidd](https://github.com/Intrepidd))

**Closed issues:**

- Cron did not enqueue jobs [\#1600](https://github.com/bensheldon/good_job/issues/1600)
- Same job performed by all threads [\#1599](https://github.com/bensheldon/good_job/issues/1599)
- Option for bin/rails g good\_job:install to purge Solid gems [\#1593](https://github.com/bensheldon/good_job/issues/1593)
- Jobs are not being picked up at the expected rate [\#1578](https://github.com/bensheldon/good_job/issues/1578)
- Question about GoodJob Batches in tests [\#1479](https://github.com/bensheldon/good_job/issues/1479)

## [v4.9.0](https://github.com/bensheldon/good_job/tree/v4.9.0) (2025-02-07)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v4.8.2...v4.9.0)

**Implemented enhancements:**

- Add `GoodJob.cli?` to check if the current process was started by the `good_job` executable [\#1592](https://github.com/bensheldon/good_job/pull/1592) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- Option to only preserve discarded/errored jobs? [\#1594](https://github.com/bensheldon/good_job/issues/1594)
- Notifier errored: TypeError: ActiveSupport::TimeWithZone can't be coerced into Integer [\#1581](https://github.com/bensheldon/good_job/issues/1581)

## [v4.8.2](https://github.com/bensheldon/good_job/tree/v4.8.2) (2025-01-26)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v4.8.1...v4.8.2)

**Fixed bugs:**

- Ensure that executions are properly ordered in the dashboard [\#1588](https://github.com/bensheldon/good_job/pull/1588) ([Earlopain](https://github.com/Earlopain))

**Merged pull requests:**

- Fix passing a block to `advisory_lock` in tests [\#1587](https://github.com/bensheldon/good_job/pull/1587) ([Earlopain](https://github.com/Earlopain))
- Expect `Job#scheduled_at` to always be present; remove nil checks [\#1585](https://github.com/bensheldon/good_job/pull/1585) ([bensheldon](https://github.com/bensheldon))

## [v4.8.1](https://github.com/bensheldon/good_job/tree/v4.8.1) (2025-01-24)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v4.8.0...v4.8.1)

**Fixed bugs:**

- Fix notifier/scheduler handling of integer/epoch serialized scheduled\_at values [\#1583](https://github.com/bensheldon/good_job/pull/1583) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- Losing "Processes" on the dashboard [\#1582](https://github.com/bensheldon/good_job/issues/1582)
- Ability to pause queues [\#1574](https://github.com/bensheldon/good_job/issues/1574)

## [v4.8.0](https://github.com/bensheldon/good_job/tree/v4.8.0) (2025-01-22)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v4.7.0...v4.8.0)

**Implemented enhancements:**

- Add ability to pause jobs by queue, job class, or label \(experimental\) [\#1575](https://github.com/bensheldon/good_job/pull/1575) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- perform\_now enqueues a job when raising exception [\#1570](https://github.com/bensheldon/good_job/issues/1570)

**Merged pull requests:**

- Use Ruby 3.4.1 for development [\#1579](https://github.com/bensheldon/good_job/pull/1579) ([bensheldon](https://github.com/bensheldon))
- Fix generator tests [\#1577](https://github.com/bensheldon/good_job/pull/1577) ([bensheldon](https://github.com/bensheldon))
- Add the logger gem as a dependency to fix rails head [\#1576](https://github.com/bensheldon/good_job/pull/1576) ([bensheldon](https://github.com/bensheldon))
- fix: typo in en.yml when discarding jobs [\#1569](https://github.com/bensheldon/good_job/pull/1569) ([nickstanish](https://github.com/nickstanish))
- Bump the all group with 60 updates [\#1567](https://github.com/bensheldon/good_job/pull/1567) ([dependabot[bot]](https://github.com/apps/dependabot))

## [v4.7.0](https://github.com/bensheldon/good_job/tree/v4.7.0) (2024-12-31)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v4.6.0...v4.7.0)

**Implemented enhancements:**

- Expose good job labels in dashboard [\#1561](https://github.com/bensheldon/good_job/pull/1561) ([BClark88](https://github.com/BClark88))

**Merged pull requests:**

- Allow cron configuration `class` value to be a proc [\#1566](https://github.com/bensheldon/good_job/pull/1566) ([bensheldon](https://github.com/bensheldon))
- Add Ruby 3.4 to CI [\#1565](https://github.com/bensheldon/good_job/pull/1565) ([Earlopain](https://github.com/Earlopain))

## [v4.6.0](https://github.com/bensheldon/good_job/tree/v4.6.0) (2024-12-12)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v4.5.1...v4.6.0)

**Implemented enhancements:**

- Set job execution thread priority to `-3` when in async mode [\#1560](https://github.com/bensheldon/good_job/pull/1560) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- Attaching metadata to jobs [\#1558](https://github.com/bensheldon/good_job/issues/1558)
- Lower Ruby Thread priority for jobs by default when running in Async mode [\#1554](https://github.com/bensheldon/good_job/issues/1554)
- NoMethodError:  undefined method `\<' for nil \(process.rb:125 in stale?\) [\#1363](https://github.com/bensheldon/good_job/issues/1363)
- Install PgHero on the Demo app [\#1166](https://github.com/bensheldon/good_job/issues/1166)

**Merged pull requests:**

- Bump rails-html-sanitizer from 1.6.0 to 1.6.1 [\#1557](https://github.com/bensheldon/good_job/pull/1557) ([dependabot[bot]](https://github.com/apps/dependabot))
- Add PGHero to the demo app [\#1294](https://github.com/bensheldon/good_job/pull/1294) ([mec](https://github.com/mec))

## [v4.5.1](https://github.com/bensheldon/good_job/tree/v4.5.1) (2024-11-29)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v4.5.0...v4.5.1)

**Implemented enhancements:**

- GoodJob.cleanup\_preserved\_jobs: add :include\_discarded option [\#1550](https://github.com/bensheldon/good_job/pull/1550) ([jonleighton](https://github.com/jonleighton))

**Fixed bugs:**

- Fix compatibility with `rails-head` when duplicated advisory lockable column [\#1553](https://github.com/bensheldon/good_job/pull/1553) ([Earlopain](https://github.com/Earlopain))

**Closed issues:**

- `PG::AmbiguousColumn` after upgrade to 4.5.0 [\#1551](https://github.com/bensheldon/good_job/issues/1551)

**Merged pull requests:**

- Remove usage of COALESCE from dashboard chart [\#1306](https://github.com/bensheldon/good_job/pull/1306) ([bananatron](https://github.com/bananatron))

## [v4.5.0](https://github.com/bensheldon/good_job/tree/v4.5.0) (2024-11-22)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v4.4.2...v4.5.0)

**Implemented enhancements:**

- Add "Discard Cleaner" page to dashboard UI [\#1538](https://github.com/bensheldon/good_job/pull/1538) ([lucasfcunha](https://github.com/lucasfcunha))
- Add Process memory usage and fix process state update  [\#1516](https://github.com/bensheldon/good_job/pull/1516) ([noma4i](https://github.com/noma4i))

**Fixed bugs:**

- Fix cron double-enqueue because delay close to 0.01 and possibly clock-drift [\#1543](https://github.com/bensheldon/good_job/pull/1543) ([ccouton](https://github.com/ccouton))
- Fix badge color for running jobs [\#1525](https://github.com/bensheldon/good_job/pull/1525) ([Wittiest](https://github.com/Wittiest))

**Closed issues:**

- Can't load Dashboard [\#1532](https://github.com/bensheldon/good_job/issues/1532)
- Should we clean up batches if discarded callback jobs exist? [\#1528](https://github.com/bensheldon/good_job/issues/1528)
- Modify error color for Running tab when a job has 1 attempt [\#1518](https://github.com/bensheldon/good_job/issues/1518)
- Silence development warning output [\#1509](https://github.com/bensheldon/good_job/issues/1509)
- Proposal - A better way of managing errors through the GoodJob UI [\#1464](https://github.com/bensheldon/good_job/issues/1464)

**Merged pull requests:**

- Ignore some warnings with the `warning` gem [\#1545](https://github.com/bensheldon/good_job/pull/1545) ([Earlopain](https://github.com/Earlopain))
- Remove unneeded include of pg\_locks in query when displaying jobs table [\#1541](https://github.com/bensheldon/good_job/pull/1541) ([jgrau](https://github.com/jgrau))
- Update development environment to Rails 8 [\#1539](https://github.com/bensheldon/good_job/pull/1539) ([bensheldon](https://github.com/bensheldon))
- Bump the bundler-dependencies group with 9 updates [\#1534](https://github.com/bensheldon/good_job/pull/1534) ([dependabot[bot]](https://github.com/apps/dependabot))
- Bump the bundler-lint group with 5 updates [\#1533](https://github.com/bensheldon/good_job/pull/1533) ([dependabot[bot]](https://github.com/apps/dependabot))
- Bump rexml from 3.3.8 to 3.3.9 [\#1530](https://github.com/bensheldon/good_job/pull/1530) ([dependabot[bot]](https://github.com/apps/dependabot))
- Deprecate GoodJob::Job\#recent\_error [\#1526](https://github.com/bensheldon/good_job/pull/1526) ([Wittiest](https://github.com/Wittiest))

## [v4.4.2](https://github.com/bensheldon/good_job/tree/v4.4.2) (2024-10-18)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v4.4.1...v4.4.2)

**Merged pull requests:**

- Bump rails from 7.1.4 to 7.1.4.1 [\#1524](https://github.com/bensheldon/good_job/pull/1524) ([Earlopain](https://github.com/Earlopain))
- Drop compatibility code for `ForkTracker` [\#1519](https://github.com/bensheldon/good_job/pull/1519) ([Earlopain](https://github.com/Earlopain))
- Add vertical legend to performance dashboard [\#1517](https://github.com/bensheldon/good_job/pull/1517) ([Wittiest](https://github.com/Wittiest))
- Bump the bundler-dependencies group across 1 directory with 10 updates [\#1515](https://github.com/bensheldon/good_job/pull/1515) ([dependabot[bot]](https://github.com/apps/dependabot))
- Manually bump tapioca / regenerate rbi [\#1514](https://github.com/bensheldon/good_job/pull/1514) ([Earlopain](https://github.com/Earlopain))
- Remove rack from the gemfile [\#1512](https://github.com/bensheldon/good_job/pull/1512) ([Earlopain](https://github.com/Earlopain))
- Add regression test for searchable numeric arguments [\#1510](https://github.com/bensheldon/good_job/pull/1510) ([bensheldon](https://github.com/bensheldon))
- Better parallelize CI jobs [\#1507](https://github.com/bensheldon/good_job/pull/1507) ([Earlopain](https://github.com/Earlopain))
- Bump webrick from 1.8.1 to 1.8.2 [\#1503](https://github.com/bensheldon/good_job/pull/1503) ([dependabot[bot]](https://github.com/apps/dependabot))

## [v4.4.1](https://github.com/bensheldon/good_job/tree/v4.4.1) (2024-10-10)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v4.4.0...v4.4.1)

**Fixed bugs:**

- Better search job arguments \(including integers\) by adding `serialized_params->>arguments` explicitly [\#1504](https://github.com/bensheldon/good_job/pull/1504) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- Searching for an integer type argument \(on the dashboard\) does not yeild any results [\#1458](https://github.com/bensheldon/good_job/issues/1458)

**Merged pull requests:**

- Clean up appraisals, add rails 8, use postgres 17 [\#1505](https://github.com/bensheldon/good_job/pull/1505) ([Earlopain](https://github.com/Earlopain))
- Bump the bundler-lint group across 1 directory with 5 updates [\#1501](https://github.com/bensheldon/good_job/pull/1501) ([dependabot[bot]](https://github.com/apps/dependabot))

## [v4.4.0](https://github.com/bensheldon/good_job/tree/v4.4.0) (2024-10-08)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v4.3.0...v4.4.0)

**Fixed bugs:**

- fix: unable to use keyword args when including the `Labels` extension [\#1500](https://github.com/bensheldon/good_job/pull/1500) ([ElMassimo](https://github.com/ElMassimo))
- Fix GoodJob::Setting duplicate keys [\#1498](https://github.com/bensheldon/good_job/pull/1498) ([mohammednasser-32](https://github.com/mohammednasser-32))
- Allow `GoodJob::Job#retry_job`'s transaction to be joinable \(fix CI for current `rails-head`\) [\#1496](https://github.com/bensheldon/good_job/pull/1496) ([Earlopain](https://github.com/Earlopain))

**Closed issues:**

- Inline adapter doesn't retry jobs that throw a retryable error [\#1497](https://github.com/bensheldon/good_job/issues/1497)
- scheduled\_at not respecting given timezone [\#1491](https://github.com/bensheldon/good_job/issues/1491)
- Multiple same values in cron\_keys\_disabled, cron\_keys\_enabled in good\_job\_settings table [\#1490](https://github.com/bensheldon/good_job/issues/1490)
- Cron jobs can be missed if deploys are timed just right [\#1484](https://github.com/bensheldon/good_job/issues/1484)
- Configuring connection pool in external mode [\#1483](https://github.com/bensheldon/good_job/issues/1483)
- GoodJob Timezone Day Light Savings [\#1480](https://github.com/bensheldon/good_job/issues/1480)
- Unable to use labels with kwargs in job initializer  [\#1350](https://github.com/bensheldon/good_job/issues/1350)

**Merged pull requests:**

- Bump puma from 6.4.2 to 6.4.3 [\#1492](https://github.com/bensheldon/good_job/pull/1492) ([dependabot[bot]](https://github.com/apps/dependabot))
- Add `cron_graceful_restart_period` to avoid missing recurring jobs that occurred during deployment downtime [\#1488](https://github.com/bensheldon/good_job/pull/1488) ([bensheldon](https://github.com/bensheldon))

## [v4.3.0](https://github.com/bensheldon/good_job/tree/v4.3.0) (2024-09-14)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v4.2.1...v4.3.0)

**Fixed bugs:**

- Don't shadow gem loading errors during autoloading with the inline adapter [\#1486](https://github.com/bensheldon/good_job/pull/1486) ([Earlopain](https://github.com/Earlopain))
- Ensure before actions run on root route [\#1482](https://github.com/bensheldon/good_job/pull/1482) ([ebiven](https://github.com/ebiven))

**Closed issues:**

- Undefined method `unhandled_error` for nil [\#1485](https://github.com/bensheldon/good_job/issues/1485)
- bin/rails g good\_job:install fails [\#1481](https://github.com/bensheldon/good_job/issues/1481)
- Rails 7.2.1 breaks enqueuing without enqueue\_after\_transaction\_commit? method on queue adapter [\#1477](https://github.com/bensheldon/good_job/issues/1477)

**Merged pull requests:**

- Fix documentation for 2nd Batch callback parameter: consistently call it `context` [\#1476](https://github.com/bensheldon/good_job/pull/1476) ([martijnversluis](https://github.com/martijnversluis))
- Redefine `Batch#finished_at` to mean all callback jobs have finished too; add `Batch#jobs_finished_at` to allow not deleting batches until all their callback jobs complete [\#1454](https://github.com/bensheldon/good_job/pull/1454) ([bensheldon](https://github.com/bensheldon))

## [v4.2.1](https://github.com/bensheldon/good_job/tree/v4.2.1) (2024-08-29)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v4.2.0...v4.2.1)

**Closed issues:**

- Issue with active\_record.strict\_loading\_by\_default [\#1474](https://github.com/bensheldon/good_job/issues/1474)

**Merged pull requests:**

- fix strict\_loading\_by\_default in BaseRecord [\#1475](https://github.com/bensheldon/good_job/pull/1475) ([emilsosa](https://github.com/emilsosa))
- Bump rexml from 3.3.3 to 3.3.6 [\#1473](https://github.com/bensheldon/good_job/pull/1473) ([dependabot[bot]](https://github.com/apps/dependabot))
- Bump fugit from 1.11.0 to 1.11.1 [\#1471](https://github.com/bensheldon/good_job/pull/1471) ([dependabot[bot]](https://github.com/apps/dependabot))

## [v4.2.0](https://github.com/bensheldon/good_job/tree/v4.2.0) (2024-08-16)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v4.1.1...v4.2.0)

**Implemented enhancements:**

- Add retry functionality for batches [\#1456](https://github.com/bensheldon/good_job/pull/1456) ([bensheldon](https://github.com/bensheldon))

**Fixed bugs:**

- respect perform\_throttle even if perform\_limit is provided [\#1470](https://github.com/bensheldon/good_job/pull/1470) ([doits](https://github.com/doits))
- Do not use advisory lock on heartbeat in production  [\#1451](https://github.com/bensheldon/good_job/pull/1451) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- `perform_limit` and `perform_throttle` don't work both [\#1469](https://github.com/bensheldon/good_job/issues/1469)
- Edge rails changes breaking binding commits [\#1466](https://github.com/bensheldon/good_job/issues/1466)
- Dynamic creation of CronEntries [\#1457](https://github.com/bensheldon/good_job/issues/1457)
- Batch callback job not enqueued after success of retried job [\#1450](https://github.com/bensheldon/good_job/issues/1450)

**Merged pull requests:**

- Update cron documentation to remove confusion about multiple processes [\#1467](https://github.com/bensheldon/good_job/pull/1467) ([bensheldon](https://github.com/bensheldon))
- Update compatibility matrix, remove compatibility code [\#1465](https://github.com/bensheldon/good_job/pull/1465) ([Earlopain](https://github.com/Earlopain))
- Run tests with warnings enabled [\#1462](https://github.com/bensheldon/good_job/pull/1462) ([Earlopain](https://github.com/Earlopain))
- Add appraisal for Rails 7.2; bracket lowest PG version instead of enumerating all [\#1460](https://github.com/bensheldon/good_job/pull/1460) ([bensheldon](https://github.com/bensheldon))
- Fix a few method redefinition warnings [\#1459](https://github.com/bensheldon/good_job/pull/1459) ([Earlopain](https://github.com/Earlopain))
- Bump rexml from 3.3.2 to 3.3.3 [\#1455](https://github.com/bensheldon/good_job/pull/1455) ([dependabot[bot]](https://github.com/apps/dependabot))
- Remove `smaller_number_is_higher_priority` option from v4 [\#1453](https://github.com/bensheldon/good_job/pull/1453) ([bensheldon](https://github.com/bensheldon))

## [v4.1.1](https://github.com/bensheldon/good_job/tree/v4.1.1) (2024-07-31)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v1.99.2...v4.1.1)

**Implemented enhancements:**

- Convert Concurrency extension to use transaction-level \(xact\) advisory locks [\#1439](https://github.com/bensheldon/good_job/pull/1439) ([bensheldon](https://github.com/bensheldon))

**Fixed bugs:**

- Fix N+1 on dashboard batches index page [\#1442](https://github.com/bensheldon/good_job/pull/1442) ([bensheldon](https://github.com/bensheldon))
- Remove duplicate word on batches show page [\#1441](https://github.com/bensheldon/good_job/pull/1441) ([Earlopain](https://github.com/Earlopain))
- Ensure remaining inline jobs are unlocked when one job raises in Adapter\#enqueue\_all [\#1438](https://github.com/bensheldon/good_job/pull/1438) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- Using Good Job to track all ActiveJob executions, even those with `perform_now` [\#1448](https://github.com/bensheldon/good_job/issues/1448)
- RuntimeError when running good\_job executable after updating v3 -\> v4 [\#1445](https://github.com/bensheldon/good_job/issues/1445)
- 2.99 -\> 3.0.2 migration not applying cleanly from a fresh DB [\#1435](https://github.com/bensheldon/good_job/issues/1435)
- \[Enhance\] Enhance performance via counter cache [\#1375](https://github.com/bensheldon/good_job/issues/1375)
- Change how svg images are inserted into partials [\#1364](https://github.com/bensheldon/good_job/issues/1364)

**Merged pull requests:**

- Improve some Spanish transcriptions [\#1452](https://github.com/bensheldon/good_job/pull/1452) ([sebastian-cloudnonic](https://github.com/sebastian-cloudnonic))
- All running jobs now have `performed_at` set so use that in status query; fix flaky test that took advisory lock in `before` block [\#1444](https://github.com/bensheldon/good_job/pull/1444) ([bensheldon](https://github.com/bensheldon))
- Handle empty asset format in Frontends controller [\#1443](https://github.com/bensheldon/good_job/pull/1443) ([bensheldon](https://github.com/bensheldon))
- Update development dependencies, Ruby 3.3.4 [\#1437](https://github.com/bensheldon/good_job/pull/1437) ([bensheldon](https://github.com/bensheldon))
- Refactor inline adapter to enable deferred execution after enqueue to allow batch-callbacks to use transaction-based advisory lock [\#1433](https://github.com/bensheldon/good_job/pull/1433) ([bensheldon](https://github.com/bensheldon))
- German translation pass [\#1432](https://github.com/bensheldon/good_job/pull/1432) ([Earlopain](https://github.com/Earlopain))
- Add Brakeman to linters [\#1431](https://github.com/bensheldon/good_job/pull/1431) ([bensheldon](https://github.com/bensheldon))
- Remove references to and ignore `good_jobs.retried_good_job_id` column [\#1430](https://github.com/bensheldon/good_job/pull/1430) ([bensheldon](https://github.com/bensheldon))
- Refactor Concurrency extension for Rails 6.1+ compatibility [\#1429](https://github.com/bensheldon/good_job/pull/1429) ([bensheldon](https://github.com/bensheldon))
- Use svg `use` for svg icons [\#1428](https://github.com/bensheldon/good_job/pull/1428) ([Earlopain](https://github.com/Earlopain))
- Replace references to "Discrete" executions with simply Executions; deprecate `GoodJob::DiscreteExecution` [\#1427](https://github.com/bensheldon/good_job/pull/1427) ([bensheldon](https://github.com/bensheldon))
- Refactor Adapter to reference jobs, not executions [\#1426](https://github.com/bensheldon/good_job/pull/1426) ([bensheldon](https://github.com/bensheldon))

## [v1.99.2](https://github.com/bensheldon/good_job/tree/v1.99.2) (2024-07-18)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v4.1.0...v1.99.2)

## [v4.1.0](https://github.com/bensheldon/good_job/tree/v4.1.0) (2024-07-16)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.99.1...v4.1.0)

**Implemented enhancements:**

- Add keepalive SQL query to Notifier [\#1423](https://github.com/bensheldon/good_job/pull/1423) ([bensheldon](https://github.com/bensheldon))
- Latency charts and histograms for individual job classes [\#1411](https://github.com/bensheldon/good_job/pull/1411) ([Earlopain](https://github.com/Earlopain))

**Fixed bugs:**

- Fix nonexistant association error between DiscreteExecution and Execution [\#1425](https://github.com/bensheldon/good_job/pull/1425) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- Could not find the inverse association for execution \(:discrete\_executions in GoodJob::Execution\) [\#1424](https://github.com/bensheldon/good_job/issues/1424)
- 3.99.1 is marked as the latest version, not 4.0.3 [\#1422](https://github.com/bensheldon/good_job/issues/1422)
- How to maximise amount of jobs executed in parallel  [\#1418](https://github.com/bensheldon/good_job/issues/1418)
- Performance Metrics for individual jobs [\#1397](https://github.com/bensheldon/good_job/issues/1397)

**Merged pull requests:**

- Remove some now unnecessary checks against `locked_by_id` existence [\#1421](https://github.com/bensheldon/good_job/pull/1421) ([Earlopain](https://github.com/Earlopain))
- Use rails enum for `error_event` and `lock_type` [\#1420](https://github.com/bensheldon/good_job/pull/1420) ([Earlopain](https://github.com/Earlopain))
- Add a little more wording to the v4 "ready to upgrade" instructions [\#1415](https://github.com/bensheldon/good_job/pull/1415) ([bensheldon](https://github.com/bensheldon))

## [v3.99.1](https://github.com/bensheldon/good_job/tree/v3.99.1) (2024-07-10)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v4.0.3...v3.99.1)

## [v4.0.3](https://github.com/bensheldon/good_job/tree/v4.0.3) (2024-07-10)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v4.0.2...v4.0.3)

**Fixed bugs:**

- Only set duration attribute to interval on Rails 6.1 [\#1412](https://github.com/bensheldon/good_job/pull/1412) ([bdewater-thatch](https://github.com/bdewater-thatch))

**Closed issues:**

- GoodJob error: TypeError: can't cast ActiveSupport::Duration \(on v4.0.0\) [\#1413](https://github.com/bensheldon/good_job/issues/1413)
- Question: is it possible to clean a set of scheduled jobs \(by class name\) from console? [\#1410](https://github.com/bensheldon/good_job/issues/1410)
- "Couldn't find GoodJob::BatchRecord" error [\#1387](https://github.com/bensheldon/good_job/issues/1387)
- Empty alerts "\[\]"? [\#1372](https://github.com/bensheldon/good_job/issues/1372)
- Release GoodJob 4.0 [\#764](https://github.com/bensheldon/good_job/issues/764)

**Merged pull requests:**

- Add Active Support load hooks for Job and \(Discrete\)Execution; move all outside class definition bodies [\#1414](https://github.com/bensheldon/good_job/pull/1414) ([bensheldon](https://github.com/bensheldon))

## [v4.0.2](https://github.com/bensheldon/good_job/tree/v4.0.2) (2024-07-08)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v4.0.1...v4.0.2)

**Fixed bugs:**

- Fix a rails 6.1 deprecation warning for the duration attribute [\#1408](https://github.com/bensheldon/good_job/pull/1408) ([Earlopain](https://github.com/Earlopain))
- Actually remove deprecated configuration for `cleanup_interval_seconds`, `cleanup_interval_jobs`; remove deprecated `Lockable` [\#1406](https://github.com/bensheldon/good_job/pull/1406) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- PG::UndefinedColumn: ERROR:  column good\_job\_processes.lock\_type does not exist [\#1405](https://github.com/bensheldon/good_job/issues/1405)
- undefined method `duration=' for an instance of GoodJob::Execution [\#1404](https://github.com/bensheldon/good_job/issues/1404)
- v3 deprecations are still present [\#1399](https://github.com/bensheldon/good_job/issues/1399)

**Merged pull requests:**

- Fix Batch integration test to not exhaust database connection thread pool [\#1409](https://github.com/bensheldon/good_job/pull/1409) ([bensheldon](https://github.com/bensheldon))
- Discrete cleanup [\#1401](https://github.com/bensheldon/good_job/pull/1401) ([Earlopain](https://github.com/Earlopain))

## [v4.0.1](https://github.com/bensheldon/good_job/tree/v4.0.1) (2024-07-08)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v4.0.0...v4.0.1)

**Fixed bugs:**

- Actually change `smaller_number_is_higher_priority` for v4 [\#1402](https://github.com/bensheldon/good_job/pull/1402) ([Earlopain](https://github.com/Earlopain))

**Merged pull requests:**

- Bump prism/rbi dev dependency [\#1403](https://github.com/bensheldon/good_job/pull/1403) ([Earlopain](https://github.com/Earlopain))
- Use index action for the performance controller [\#1398](https://github.com/bensheldon/good_job/pull/1398) ([Earlopain](https://github.com/Earlopain))

## [v4.0.0](https://github.com/bensheldon/good_job/tree/v4.0.0) (2024-07-07)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.99.0...v4.0.0)

**Implemented enhancements:**

- Release GoodJob v4 [\#1394](https://github.com/bensheldon/good_job/pull/1394) ([bensheldon](https://github.com/bensheldon))

## [v3.99.0](https://github.com/bensheldon/good_job/tree/v3.99.0) (2024-07-07)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.30.1...v3.99.0)

**Merged pull requests:**

- Remove deprecation silencers for v3.99 release [\#1395](https://github.com/bensheldon/good_job/pull/1395) ([bensheldon](https://github.com/bensheldon))
- Add instructions and `GoodJob.v4_ready?` for upgrading to v4 [\#1356](https://github.com/bensheldon/good_job/pull/1356) ([bensheldon](https://github.com/bensheldon))

## [v3.30.1](https://github.com/bensheldon/good_job/tree/v3.30.1) (2024-07-06)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.30.0...v3.30.1)

**Fixed bugs:**

- Fix Performance table formatting, change url from `performances` to singular `performance` [\#1393](https://github.com/bensheldon/good_job/pull/1393) ([bensheldon](https://github.com/bensheldon))
- Add a version check for Rails whether to use pg interval or calculate float [\#1389](https://github.com/bensheldon/good_job/pull/1389) ([bensheldon](https://github.com/bensheldon))

**Merged pull requests:**

- Add missing newline after frozen string literal for migrations [\#1392](https://github.com/bensheldon/good_job/pull/1392) ([Earlopain](https://github.com/Earlopain))
- Temporarily remove JRuby builds [\#1391](https://github.com/bensheldon/good_job/pull/1391) ([bensheldon](https://github.com/bensheldon))
- Add initial Performance panel to dashboard [\#1388](https://github.com/bensheldon/good_job/pull/1388) ([bensheldon](https://github.com/bensheldon))
- Move job execution logic from Execution to BaseExecution to simplify v4 changes [\#1357](https://github.com/bensheldon/good_job/pull/1357) ([bensheldon](https://github.com/bensheldon))

## [v3.30.0](https://github.com/bensheldon/good_job/tree/v3.30.0) (2024-07-05)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.29.5...v3.30.0)

**Implemented enhancements:**

- Added GoodJob::DiscreteExecution\#duration column [\#1374](https://github.com/bensheldon/good_job/pull/1374) ([SebouChu](https://github.com/SebouChu))

**Closed issues:**

- Job retried infinitely  [\#1384](https://github.com/bensheldon/good_job/issues/1384)

**Merged pull requests:**

- Use newer syntax in documentation for `wait` config on `retry` [\#1380](https://github.com/bensheldon/good_job/pull/1380) ([benoittgt](https://github.com/benoittgt))

## [v3.29.5](https://github.com/bensheldon/good_job/tree/v3.29.5) (2024-06-24)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.29.4...v3.29.5)

**Fixed bugs:**

- fix: require rack/handler for rack \>= 3.1.x [\#1383](https://github.com/bensheldon/good_job/pull/1383) ([shouichi](https://github.com/shouichi))

**Closed issues:**

- Unexpected behavior of calling perform\_now inside another job [\#1379](https://github.com/bensheldon/good_job/issues/1379)
- \[BUG\] \[Dashboard\] count isn't following by the filter [\#1376](https://github.com/bensheldon/good_job/issues/1376)

## [v3.29.4](https://github.com/bensheldon/good_job/tree/v3.29.4) (2024-06-18)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.29.3...v3.29.4)

**Fixed bugs:**

- Fix display of empty array in flash messages [\#1377](https://github.com/bensheldon/good_job/pull/1377) ([andynu](https://github.com/andynu))
- Fix counts in tab links with filters [\#1373](https://github.com/bensheldon/good_job/pull/1373) ([SebouChu](https://github.com/SebouChu))

## [v3.29.3](https://github.com/bensheldon/good_job/tree/v3.29.3) (2024-06-06)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.29.2...v3.29.3)

**Fixed bugs:**

- Synchronize `CapsuleTracker#renew` [\#1369](https://github.com/bensheldon/good_job/pull/1369) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- docs: Basic auth route mount example improvement [\#1368](https://github.com/bensheldon/good_job/issues/1368)
- Tips for debugging/optimizing slow dashboard? \(45 second response time\) [\#1366](https://github.com/bensheldon/good_job/issues/1366)

## [v3.29.2](https://github.com/bensheldon/good_job/tree/v3.29.2) (2024-05-23)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.29.1...v3.29.2)

**Fixed bugs:**

- Fix label modifications on job instance polluting labels on job class [\#1355](https://github.com/bensheldon/good_job/pull/1355) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- `#good_job_labels` retains values across job instances [\#1354](https://github.com/bensheldon/good_job/issues/1354)

## [v3.29.1](https://github.com/bensheldon/good_job/tree/v3.29.1) (2024-05-23)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.29.0...v3.29.1)

**Fixed bugs:**

- Fix AdvisoryLockable using wrong `advisory_lockable_column` attribute when aborting `create_with_advisory_lock` [\#1360](https://github.com/bensheldon/good_job/pull/1360) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- Warn on unapplied migrations [\#1361](https://github.com/bensheldon/good_job/issues/1361)
- Undefined `GoodJob::Process.advisory_lockable_column` [\#1358](https://github.com/bensheldon/good_job/issues/1358)

## [v3.29.0](https://github.com/bensheldon/good_job/tree/v3.29.0) (2024-05-22)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.28.3...v3.29.0)

**Merged pull requests:**

- Add association between Process and Jobs, and add a heartbeat to the Process record [\#999](https://github.com/bensheldon/good_job/pull/999) ([bensheldon](https://github.com/bensheldon))

## [v3.28.3](https://github.com/bensheldon/good_job/tree/v3.28.3) (2024-05-18)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.28.2...v3.28.3)

**Fixed bugs:**

- Strip more whitespace when parsing queues string [\#1352](https://github.com/bensheldon/good_job/pull/1352) ([bensheldon](https://github.com/bensheldon))
- Fix latest migration not affecting `GoodJob.migrated?` [\#1345](https://github.com/bensheldon/good_job/pull/1345) ([Earlopain](https://github.com/Earlopain))

**Closed issues:**

- Whitespace in `queues` configuration can cause issues. [\#1351](https://github.com/bensheldon/good_job/issues/1351)
- How to properly handle interrupts [\#1343](https://github.com/bensheldon/good_job/issues/1343)
- ActiveSupport::CurrentAttributes Compatibility [\#1341](https://github.com/bensheldon/good_job/issues/1341)

**Merged pull requests:**

- Don't abort CI jobs when a single one fails [\#1346](https://github.com/bensheldon/good_job/pull/1346) ([Earlopain](https://github.com/Earlopain))
- Clarify PgBouncer Compatibility [\#1338](https://github.com/bensheldon/good_job/pull/1338) ([isaac](https://github.com/isaac))

## [v3.28.2](https://github.com/bensheldon/good_job/tree/v3.28.2) (2024-04-26)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.28.1...v3.28.2)

**Fixed bugs:**

- Add debug warning message when a job is enqueued within a batch/bulk capture but not to the GoodJob Adapter [\#1339](https://github.com/bensheldon/good_job/pull/1339) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- How do I add jobs to an existing batch?  [\#1337](https://github.com/bensheldon/good_job/issues/1337)
- Executing perform\_now on a good\_job with GoodJobs::ActiveJobExtensions::Concurrency can run twice [\#1335](https://github.com/bensheldon/good_job/issues/1335)

## [v3.28.1](https://github.com/bensheldon/good_job/tree/v3.28.1) (2024-04-24)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.28.0...v3.28.1)

**Fixed bugs:**

- Ensure job context does not leak into extensions when`perform_now` is called within another job [\#1336](https://github.com/bensheldon/good_job/pull/1336) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- `erb_lint` doesn't lint all files [\#1329](https://github.com/bensheldon/good_job/issues/1329)
- Server hangs after \#1297 [\#1301](https://github.com/bensheldon/good_job/issues/1301)
- Figure out how to use bind parameters for time queries [\#1285](https://github.com/bensheldon/good_job/issues/1285)

**Merged pull requests:**

- Upgrade development / demo Ruby to v3.3.1 [\#1333](https://github.com/bensheldon/good_job/pull/1333) ([bensheldon](https://github.com/bensheldon))
- Exploratory testing for presence of scheduled\_at when enqueuing [\#1332](https://github.com/bensheldon/good_job/pull/1332) ([bensheldon](https://github.com/bensheldon))
- Run `erb_lint` against all the views and partials [\#1331](https://github.com/bensheldon/good_job/pull/1331) ([bensheldon](https://github.com/bensheldon))

## [v3.28.0](https://github.com/bensheldon/good_job/tree/v3.28.0) (2024-04-19)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.27.4...v3.28.0)

**Implemented enhancements:**

- Store and optionally display the full execution backtrace [\#1328](https://github.com/bensheldon/good_job/pull/1328) ([Earlopain](https://github.com/Earlopain))
- Store error backtraces on discrete executions [\#1325](https://github.com/bensheldon/good_job/pull/1325) ([Intrepidd](https://github.com/Intrepidd))

**Fixed bugs:**

- add missing dropdown-item class [\#1327](https://github.com/bensheldon/good_job/pull/1327) ([patriciomacadden](https://github.com/patriciomacadden))

**Closed issues:**

- Proposal: Migrating Documentation to a Separate Website [\#1324](https://github.com/bensheldon/good_job/issues/1324)
- Potential documentation error in GoodJob::ActiveJobExtensions::NotifyOptions [\#1321](https://github.com/bensheldon/good_job/issues/1321)
- ActiveSupport::CurrentAttributes reset after `perform_later` [\#1320](https://github.com/bensheldon/good_job/issues/1320)
- Storing backtrace in database? [\#1162](https://github.com/bensheldon/good_job/issues/1162)
- Potential locking race condition when using cron scheduler across multiple processes [\#731](https://github.com/bensheldon/good_job/issues/731)

**Merged pull requests:**

- docs: corrected a typo regarding the use of GoodJob::ActiveJobExtensions::NotifyOptions [\#1322](https://github.com/bensheldon/good_job/pull/1322) ([pgvsalamander](https://github.com/pgvsalamander))
- Add "best practices" section to Readme [\#1318](https://github.com/bensheldon/good_job/pull/1318) ([bensheldon](https://github.com/bensheldon))
- Change ApplicationRecord to ApplicationJob for label documentation. [\#1317](https://github.com/bensheldon/good_job/pull/1317) ([frans-k](https://github.com/frans-k))
- Run test matrix against Ruby 3.3; remove pry [\#1315](https://github.com/bensheldon/good_job/pull/1315) ([bensheldon](https://github.com/bensheldon))
- Add `Rails.application.load_server` to Demo `config.ru`; quiet puma web-concurrency warnings [\#1314](https://github.com/bensheldon/good_job/pull/1314) ([bensheldon](https://github.com/bensheldon))
- Fix test leakage of configuration double [\#1312](https://github.com/bensheldon/good_job/pull/1312) ([bensheldon](https://github.com/bensheldon))
- Rewrite queries to all use bind parameters and prepare: true [\#1308](https://github.com/bensheldon/good_job/pull/1308) ([bensheldon](https://github.com/bensheldon))

## [v3.27.4](https://github.com/bensheldon/good_job/tree/v3.27.4) (2024-04-04)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.27.3...v3.27.4)

**Fixed bugs:**

- Fix status tabs for Spanish translation [\#1307](https://github.com/bensheldon/good_job/pull/1307) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- Adapter to implement `enqueue_after_transaction_commit` [\#1310](https://github.com/bensheldon/good_job/issues/1310)
- PG::SyntaxError: ERROR from timestamp [\#1305](https://github.com/bensheldon/good_job/issues/1305)
- Spanish translation while on the dashboard displays hashes instead of the job status name [\#1304](https://github.com/bensheldon/good_job/issues/1304)
- Exception raised during asset precompilation when no `config/database.yml` [\#1302](https://github.com/bensheldon/good_job/issues/1302)
- Good job is running with standalone action cable server [\#1299](https://github.com/bensheldon/good_job/issues/1299)
- Growing memory usage [\#1276](https://github.com/bensheldon/good_job/issues/1276)

**Merged pull requests:**

- Implement enqueue\_after\_transaction\_commit? [\#1311](https://github.com/bensheldon/good_job/pull/1311) ([luizkowalski](https://github.com/luizkowalski))
- Fix localization formatting of `confirm_force_discard` [\#1309](https://github.com/bensheldon/good_job/pull/1309) ([bensheldon](https://github.com/bensheldon))

## [v3.27.3](https://github.com/bensheldon/good_job/tree/v3.27.3) (2024-03-29)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.27.2...v3.27.3)

**Merged pull requests:**

- Revert "Start async adapters `after_initialize` instead of once Active Job and Active Record are loaded and Rails initialized?" [\#1303](https://github.com/bensheldon/good_job/pull/1303) ([bensheldon](https://github.com/bensheldon))

## [v3.27.2](https://github.com/bensheldon/good_job/tree/v3.27.2) (2024-03-27)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.27.1...v3.27.2)

**Fixed bugs:**

- Use scope-resolutioned constants in Notifier loop [\#1300](https://github.com/bensheldon/good_job/pull/1300) ([bensheldon](https://github.com/bensheldon))
- Invoke inline Bootstrap Color Mode javascript above CSS link tag to better avoid flash of un-themed content [\#1298](https://github.com/bensheldon/good_job/pull/1298) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- Buggy theme animation while switching tabs [\#1224](https://github.com/bensheldon/good_job/issues/1224)

## [v3.27.1](https://github.com/bensheldon/good_job/tree/v3.27.1) (2024-03-24)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.27.0...v3.27.1)

**Fixed bugs:**

- Start async adapters `after_initialize` instead of once Active Job and Active Record are loaded and Rails initialized? [\#1297](https://github.com/bensheldon/good_job/pull/1297) ([bensheldon](https://github.com/bensheldon))

## [v3.27.0](https://github.com/bensheldon/good_job/tree/v3.27.0) (2024-03-24)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.26.2...v3.27.0)

**Implemented enhancements:**

- Add `enabled_by_default: false` as option for cron configuration [\#1289](https://github.com/bensheldon/good_job/pull/1289) ([bensheldon](https://github.com/bensheldon))
- Load metrics for job statuses asynchronously [\#1286](https://github.com/bensheldon/good_job/pull/1286) ([binarygit](https://github.com/binarygit))
- Implement throttling options in concurrency extension [\#1270](https://github.com/bensheldon/good_job/pull/1270) ([marckohlbrugge](https://github.com/marckohlbrugge))

**Fixed bugs:**

- fix\(ui-dropdown\): use dropdown-end on locales dropdown [\#1296](https://github.com/bensheldon/good_job/pull/1296) ([WailanTirajoh](https://github.com/WailanTirajoh))

**Closed issues:**

- Disabling probe [\#1290](https://github.com/bensheldon/good_job/issues/1290)
- Set an implicit order on models [\#1242](https://github.com/bensheldon/good_job/issues/1242)

**Merged pull requests:**

- docs\(readme\): remove double "using" [\#1295](https://github.com/bensheldon/good_job/pull/1295) ([WailanTirajoh](https://github.com/WailanTirajoh))
- Set an implicit order on models [\#1293](https://github.com/bensheldon/good_job/pull/1293) ([mec](https://github.com/mec))
- CI: install gems after loading cache, not before [\#1288](https://github.com/bensheldon/good_job/pull/1288) ([bensheldon](https://github.com/bensheldon))
- Ensure job execution Advisory Lock query uses bind parameters [\#1287](https://github.com/bensheldon/good_job/pull/1287) ([bensheldon](https://github.com/bensheldon))

## [v3.26.2](https://github.com/bensheldon/good_job/tree/v3.26.2) (2024-03-15)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.26.1...v3.26.2)

**Closed issues:**

- Async mode blocks ActionDispatch::Reloader [\#1274](https://github.com/bensheldon/good_job/issues/1274)

**Merged pull requests:**

- Update dependencies and their Sorbet / Tapioca files [\#1284](https://github.com/bensheldon/good_job/pull/1284) ([bensheldon](https://github.com/bensheldon))
- Use require\_relative and do not modify $LOAD\_PATH in gemspec [\#1283](https://github.com/bensheldon/good_job/pull/1283) ([bensheldon](https://github.com/bensheldon))
- Tweak rbtrace script [\#1279](https://github.com/bensheldon/good_job/pull/1279) ([bensheldon](https://github.com/bensheldon))
- Fix for Rails head: Don't try to override connection on connection checkin in tests [\#1277](https://github.com/bensheldon/good_job/pull/1277) ([bensheldon](https://github.com/bensheldon))
- Tiny improvements to french translation [\#1273](https://github.com/bensheldon/good_job/pull/1273) ([francois-ferrandis](https://github.com/francois-ferrandis))
- Load metrics for top nav asynchronously [\#1231](https://github.com/bensheldon/good_job/pull/1231) ([binarygit](https://github.com/binarygit))

## [v3.26.1](https://github.com/bensheldon/good_job/tree/v3.26.1) (2024-03-01)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.26.0...v3.26.1)

**Fixed bugs:**

- Ignore job deserialization errors when mass-retrying through the dashboard [\#1269](https://github.com/bensheldon/good_job/pull/1269) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- Plain HTTP 500 Error when retrying a job for deleted record [\#1263](https://github.com/bensheldon/good_job/issues/1263)

## [v3.26.0](https://github.com/bensheldon/good_job/tree/v3.26.0) (2024-03-01)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.25.0...v3.26.0)

**Implemented enhancements:**

- Add `GoodJob.current_thread_running?` and `GoodJob.current_thread_shutting_down?` for graceful shutdowns [\#1253](https://github.com/bensheldon/good_job/pull/1253) ([bensheldon](https://github.com/bensheldon))

**Fixed bugs:**

- Ensure "shutdown?" behavior is consistent between J Ruby and C Ruby [\#1267](https://github.com/bensheldon/good_job/pull/1267) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- PG Good Job rows add up [\#1262](https://github.com/bensheldon/good_job/issues/1262)
- Bulk operations do not work for Batches [\#1255](https://github.com/bensheldon/good_job/issues/1255)
- What's the difference between 'reschedule' and 'retry' in the dashboard? [\#1241](https://github.com/bensheldon/good_job/issues/1241)

**Merged pull requests:**

- feat: add italian locale [\#1268](https://github.com/bensheldon/good_job/pull/1268) ([metalelf0](https://github.com/metalelf0))

## [v3.25.0](https://github.com/bensheldon/good_job/tree/v3.25.0) (2024-02-22)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.24.0...v3.25.0)

**Implemented enhancements:**

- Allow disabling of Dashboard Live Polling configuration [\#1235](https://github.com/bensheldon/good_job/pull/1235) ([erick-tmr](https://github.com/erick-tmr))
- Add customizable extension partials to good\_job/jobs\#show view [\#1200](https://github.com/bensheldon/good_job/pull/1200) ([grncdr](https://github.com/grncdr))

**Fixed bugs:**

- Fix default engine cron value [\#1258](https://github.com/bensheldon/good_job/pull/1258) ([hss-mateus](https://github.com/hss-mateus))
- Print an error when daemon pidfile dir doesn't exist [\#1252](https://github.com/bensheldon/good_job/pull/1252) ([thepry](https://github.com/thepry))

**Closed issues:**

- Production deployment question [\#1257](https://github.com/bensheldon/good_job/issues/1257)
- Daemon and App not connecting to secondary database [\#1254](https://github.com/bensheldon/good_job/issues/1254)
- Logging with logger.warn in classes is suppressed by good job? \(semantic\_logger\) [\#1250](https://github.com/bensheldon/good_job/issues/1250)

**Merged pull requests:**

- Fix Active Record connection changes on Rails head [\#1259](https://github.com/bensheldon/good_job/pull/1259) ([bensheldon](https://github.com/bensheldon))
- \[Docs\] Bulk.enqueue takes an array of jobs [\#1256](https://github.com/bensheldon/good_job/pull/1256) ([jpcamara](https://github.com/jpcamara))
- Clean up icon helpers for less noisy view rendering [\#1248](https://github.com/bensheldon/good_job/pull/1248) ([bensheldon](https://github.com/bensheldon))
- Use dotenv-rails instead of dotenv [\#1247](https://github.com/bensheldon/good_job/pull/1247) ([bensheldon](https://github.com/bensheldon))
- Perform inline retries iteratively instead of recursively [\#1246](https://github.com/bensheldon/good_job/pull/1246) ([bensheldon](https://github.com/bensheldon))

## [v3.24.0](https://github.com/bensheldon/good_job/tree/v3.24.0) (2024-02-12)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.23.0...v3.24.0)

**Fixed bugs:**

- Fix batches so that retried-and-successful jobs leave the batch succeeded [\#1243](https://github.com/bensheldon/good_job/pull/1243) ([bensheldon](https://github.com/bensheldon))
- Use the job class as the default concurrency key if none is provided [\#1145](https://github.com/bensheldon/good_job/pull/1145) ([Earlopain](https://github.com/Earlopain))

**Closed issues:**

- Batch callbacks not run when job fails, then succeeds [\#1239](https://github.com/bensheldon/good_job/issues/1239)
- Broken pipe @ io\_writev - \<STDERR\> \(Errno::EPIPE\) [\#1233](https://github.com/bensheldon/good_job/issues/1233)
- PG::UniqueViolation unique constraint "index\_good\_jobs\_on\_cron\_key\_and\_cron\_at\_cond" [\#1230](https://github.com/bensheldon/good_job/issues/1230)
- Default concurrency key [\#1110](https://github.com/bensheldon/good_job/issues/1110)

**Merged pull requests:**

- Use Ruby 3.3 for development; add Bootsnap; update to Rails 7.1.3 [\#1240](https://github.com/bensheldon/good_job/pull/1240) ([bensheldon](https://github.com/bensheldon))
- Tweak docs for new concurrency default [\#1229](https://github.com/bensheldon/good_job/pull/1229) ([Earlopain](https://github.com/Earlopain))
- Brazilian Portuguese locale [\#1226](https://github.com/bensheldon/good_job/pull/1226) ([hss-mateus](https://github.com/hss-mateus))

## [v3.23.0](https://github.com/bensheldon/good_job/tree/v3.23.0) (2024-01-23)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.22.0...v3.23.0)

**Implemented enhancements:**

- Add environment label to navbar [\#1206](https://github.com/bensheldon/good_job/pull/1206) ([sparshalc](https://github.com/sparshalc))
- Make health probe server more general purpose [\#1079](https://github.com/bensheldon/good_job/pull/1079) ([jklina](https://github.com/jklina))

**Fixed bugs:**

- Use Rails executor instead of reloader when wrapping inline execution [\#1225](https://github.com/bensheldon/good_job/pull/1225) ([bensheldon](https://github.com/bensheldon))
- Add an index to better support `smaller_number_is_higher_priority` [\#1213](https://github.com/bensheldon/good_job/pull/1213) ([mkrfowler](https://github.com/mkrfowler))
- Fix discard job with nonexistent job class [\#1211](https://github.com/bensheldon/good_job/pull/1211) ([yenshirak](https://github.com/yenshirak))
- Fix: Interacting with input field should pause the live poll [\#1210](https://github.com/bensheldon/good_job/pull/1210) ([sparshalc](https://github.com/sparshalc))

**Closed issues:**

- can't write unknown attribute `active_job_id` [\#1216](https://github.com/bensheldon/good_job/issues/1216)
- Regression: use of Rails reloader causing mixed constants during seeding [\#1215](https://github.com/bensheldon/good_job/issues/1215)
- Production worker doesn't show any processes [\#1214](https://github.com/bensheldon/good_job/issues/1214)
- Clarify required async mode DB pool size [\#1209](https://github.com/bensheldon/good_job/issues/1209)
- Mac forking exception when using Spring [\#1115](https://github.com/bensheldon/good_job/issues/1115)
- Jobs should have labels [\#1095](https://github.com/bensheldon/good_job/issues/1095)
- Set up Dependabot grouped updates [\#1062](https://github.com/bensheldon/good_job/issues/1062)
- Fix documentation to always include space in "Active Job", "Active Record", etc. [\#1048](https://github.com/bensheldon/good_job/issues/1048)

**Merged pull requests:**

- Bump actions/cache from 3 to 4 [\#1223](https://github.com/bensheldon/good_job/pull/1223) ([dependabot[bot]](https://github.com/apps/dependabot))
- Update README, add poll\_interval defaults/recommendations [\#1220](https://github.com/bensheldon/good_job/pull/1220) ([andynu](https://github.com/andynu))
- Update Russian translation [\#1219](https://github.com/bensheldon/good_job/pull/1219) ([alec-c4](https://github.com/alec-c4))
- Add Korean translation \(ko\) [\#1212](https://github.com/bensheldon/good_job/pull/1212) ([hahwul](https://github.com/hahwul))
- Fix default poll interval in documentation [\#1208](https://github.com/bensheldon/good_job/pull/1208) ([yenshirak](https://github.com/yenshirak))

## [v3.22.0](https://github.com/bensheldon/good_job/tree/v3.22.0) (2024-01-03)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.21.5...v3.22.0)

**Implemented enhancements:**

- Add "updated at" info in secondary top navbar [\#1204](https://github.com/bensheldon/good_job/pull/1204) ([sparshalc](https://github.com/sparshalc))
- Re-add footer with GoodJob version number [\#1201](https://github.com/bensheldon/good_job/pull/1201) ([Pauloparakleto](https://github.com/Pauloparakleto))
- Add Active Job extension for Labels [\#1188](https://github.com/bensheldon/good_job/pull/1188) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- Limiting by executed jobs count by period [\#1198](https://github.com/bensheldon/good_job/issues/1198)
- Cron jobs processing in async mode [\#1196](https://github.com/bensheldon/good_job/issues/1196)
- Dashboard Missing Translation? [\#1192](https://github.com/bensheldon/good_job/issues/1192)
- Show last update on top nav bar [\#1183](https://github.com/bensheldon/good_job/issues/1183)
- Wrong quoting of the query to spot new jobs? [\#1179](https://github.com/bensheldon/good_job/issues/1179)
- \[Possible bug\] good\_job does not honour the wait parameter on retry\_on [\#1174](https://github.com/bensheldon/good_job/issues/1174)
- Running GoodJob in production with systemd throws an error due to a wrong communication with WatchDog [\#1172](https://github.com/bensheldon/good_job/issues/1172)

**Merged pull requests:**

- Bump the bundler-dependencies group with 3 updates [\#1202](https://github.com/bensheldon/good_job/pull/1202) ([dependabot[bot]](https://github.com/apps/dependabot))
- Remove duplicated intro sentence in README [\#1195](https://github.com/bensheldon/good_job/pull/1195) ([benoittgt](https://github.com/benoittgt))
- Fix namespace for `InterruptError` in README [\#1193](https://github.com/bensheldon/good_job/pull/1193) ([padde](https://github.com/padde))
- Bump github/codeql-action from 2 to 3 [\#1191](https://github.com/bensheldon/good_job/pull/1191) ([dependabot[bot]](https://github.com/apps/dependabot))
- Bump actions/upload-artifact from 3 to 4 [\#1190](https://github.com/bensheldon/good_job/pull/1190) ([dependabot[bot]](https://github.com/apps/dependabot))
- Lock RubyGems version for Ruby \< 3.0 in CI [\#1189](https://github.com/bensheldon/good_job/pull/1189) ([bensheldon](https://github.com/bensheldon))
- Active Record and Active Job name formatting [\#1182](https://github.com/bensheldon/good_job/pull/1182) ([andyatkinson](https://github.com/andyatkinson))
- Remove redundant `good_jobs.active_job_id` index [\#1181](https://github.com/bensheldon/good_job/pull/1181) ([andyatkinson](https://github.com/andyatkinson))
- Add missing word in readme [\#1177](https://github.com/bensheldon/good_job/pull/1177) ([Earlopain](https://github.com/Earlopain))

## [v3.21.5](https://github.com/bensheldon/good_job/tree/v3.21.5) (2023-12-12)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.21.4...v3.21.5)

**Fixed bugs:**

- Fix conditional index migration to be rollbackable [\#1176](https://github.com/bensheldon/good_job/pull/1176) ([bensheldon](https://github.com/bensheldon))

## [v3.21.4](https://github.com/bensheldon/good_job/tree/v3.21.4) (2023-12-11)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.21.3...v3.21.4)

**Fixed bugs:**

- Fix latest migration not affecting `GoodJob.migrated?` [\#1175](https://github.com/bensheldon/good_job/pull/1175) ([Earlopain](https://github.com/Earlopain))
- Fix no method error in systemd service [\#1173](https://github.com/bensheldon/good_job/pull/1173) ([tagrudev](https://github.com/tagrudev))

## [v3.21.3](https://github.com/bensheldon/good_job/tree/v3.21.3) (2023-12-10)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.21.2...v3.21.3)

**Implemented enhancements:**

- Add `--idle-timeout` CLI option to create temporary processes that exit when inactive [\#1159](https://github.com/bensheldon/good_job/pull/1159) ([bensheldon](https://github.com/bensheldon))

**Fixed bugs:**

- Add correct paths to $LOAD\_PATH [\#1169](https://github.com/bensheldon/good_job/pull/1169) ([jklina](https://github.com/jklina))
- Recreate cron indexes to be conditional [\#1163](https://github.com/bensheldon/good_job/pull/1163) ([defkode](https://github.com/defkode))

**Closed issues:**

- Use partial indices for cron\_key? [\#1161](https://github.com/bensheldon/good_job/issues/1161)
- Mass Update Error [\#1157](https://github.com/bensheldon/good_job/issues/1157)
- v3 roadmap plan [\#705](https://github.com/bensheldon/good_job/issues/705)
- Allow customisation of the dashboard controller parent class [\#687](https://github.com/bensheldon/good_job/issues/687)

**Merged pull requests:**

- \[minor\] Use symbol form of index name [\#1171](https://github.com/bensheldon/good_job/pull/1171) ([andyatkinson](https://github.com/andyatkinson))
- Fix development schema.rb to include conditional index name change [\#1168](https://github.com/bensheldon/good_job/pull/1168) ([bensheldon](https://github.com/bensheldon))
- Create new conditional Cron indexes before dropping old indexes [\#1165](https://github.com/bensheldon/good_job/pull/1165) ([bensheldon](https://github.com/bensheldon))
- Fix test that references Rails logger for Rails 7.2a change [\#1160](https://github.com/bensheldon/good_job/pull/1160) ([bensheldon](https://github.com/bensheldon))

## [v3.21.2](https://github.com/bensheldon/good_job/tree/v3.21.2) (2023-11-24)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.21.1...v3.21.2)

**Fixed bugs:**

- Skip `RecordAlreadyAdvisoryLockedError` during mass-update action [\#1158](https://github.com/bensheldon/good_job/pull/1158) ([jmarsh24](https://github.com/jmarsh24))

**Closed issues:**

- Processes are created for puma workers after version v3.12.5 with execution\_mode==:external [\#1156](https://github.com/bensheldon/good_job/issues/1156)

**Merged pull requests:**

- Update README.md [\#1152](https://github.com/bensheldon/good_job/pull/1152) ([LucasKendi](https://github.com/LucasKendi))

## [v3.21.1](https://github.com/bensheldon/good_job/tree/v3.21.1) (2023-11-14)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.21.0...v3.21.1)

**Fixed bugs:**

- Explicitly require `active_job/arguments` in `GoodJob::BatchRecord` [\#1150](https://github.com/bensheldon/good_job/pull/1150) ([hidenba](https://github.com/hidenba))
- Bug: Polling only activates single thread, should eagerly create additional threads when jobs exist [\#1148](https://github.com/bensheldon/good_job/pull/1148) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- Error when executing ActiveJob::Batch.new in Rails 7.1.x [\#1149](https://github.com/bensheldon/good_job/issues/1149)
- Show whether or not cron scheduler is enable in dashboard \(UI\) [\#1117](https://github.com/bensheldon/good_job/issues/1117)
- ActiveRecord::ConnectionNotEstablished For rails multi DB [\#1103](https://github.com/bensheldon/good_job/issues/1103)
- Rails API dies when using latest good\_job version [\#952](https://github.com/bensheldon/good_job/issues/952)
- config.good\_job.preserve\_job\_records = false not working with CRON [\#927](https://github.com/bensheldon/good_job/issues/927)
- Pundit::NotDefinedError \(unable to find policy `Admin::GoodJob::JobPolicy` for \) - version 2.13.0 and above [\#618](https://github.com/bensheldon/good_job/issues/618)
- Running CLI under foreman doesn't display log output until exit [\#490](https://github.com/bensheldon/good_job/issues/490)

**Merged pull requests:**

- Always instantiate MultiScheduler; delegate Scheduler Metrics to JobPerformer [\#1147](https://github.com/bensheldon/good_job/pull/1147) ([bensheldon](https://github.com/bensheldon))
- Clarify on concurrency uniqueness constraints [\#1144](https://github.com/bensheldon/good_job/pull/1144) ([Earlopain](https://github.com/Earlopain))

## [v3.21.0](https://github.com/bensheldon/good_job/tree/v3.21.0) (2023-11-06)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.20.0...v3.21.0)

**Implemented enhancements:**

- Add "cron enabled" column to processes index page [\#1127](https://github.com/bensheldon/good_job/pull/1127) ([bforma](https://github.com/bforma))
- Add `limit:` kwarg to `GoodJob.perform_inline` [\#1126](https://github.com/bensheldon/good_job/pull/1126) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- Cron scheduler and multiple processes [\#1128](https://github.com/bensheldon/good_job/issues/1128)
- `GoodJob.on_thread_error` not called in tests [\#1102](https://github.com/bensheldon/good_job/issues/1102)

**Merged pull requests:**

- Use a Concurrent::Event for CLI signal-trapping loop [\#1141](https://github.com/bensheldon/good_job/pull/1141) ([bensheldon](https://github.com/bensheldon))
- Update README's optimize queue explanation [\#1138](https://github.com/bensheldon/good_job/pull/1138) ([maestromac](https://github.com/maestromac))
- Update development dependencies and light Rubocop'ing [\#1136](https://github.com/bensheldon/good_job/pull/1136) ([bensheldon](https://github.com/bensheldon))
- Move the Rails app harness from `spec/test_app` to `demo` [\#1135](https://github.com/bensheldon/good_job/pull/1135) ([bensheldon](https://github.com/bensheldon))
- In test, shutdown schedulers/capsules before doing assertions because of race conditions; store CI logs for Dev Env tests [\#1129](https://github.com/bensheldon/good_job/pull/1129) ([bensheldon](https://github.com/bensheldon))
- Use a constant to represent `None` for default/blank memoizable values [\#1125](https://github.com/bensheldon/good_job/pull/1125) ([bensheldon](https://github.com/bensheldon))

## [v3.20.0](https://github.com/bensheldon/good_job/tree/v3.20.0) (2023-10-23)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.19.4...v3.20.0)

**Closed issues:**

- Dashboard blocked in iframe tag [\#1111](https://github.com/bensheldon/good_job/issues/1111)
- PG::ConnectionBad: PQsocket\(\) can't get socket descriptor [\#1100](https://github.com/bensheldon/good_job/issues/1100)

**Merged pull requests:**

- Wrap Adapter enqueue methods and Batch callbacks with Rails Reloader; verify in tests that no Advisory locks remain at database connection check-in  [\#1124](https://github.com/bensheldon/good_job/pull/1124) ([bensheldon](https://github.com/bensheldon))
- Run all RSpec examples within a Rails Executor [\#1122](https://github.com/bensheldon/good_job/pull/1122) ([bensheldon](https://github.com/bensheldon))
- Print better debugging for retained advisory locks in test [\#1121](https://github.com/bensheldon/good_job/pull/1121) ([bensheldon](https://github.com/bensheldon))
- Replace Heroku-specific Rake tasks with `db:prepare` now that Demo is upgraded to Rails 7.1 [\#1120](https://github.com/bensheldon/good_job/pull/1120) ([bensheldon](https://github.com/bensheldon))
- Do not error debug logs if `pg_stat_activity` join is empty [\#1119](https://github.com/bensheldon/good_job/pull/1119) ([bensheldon](https://github.com/bensheldon))
- Remove pinned psych version [\#1114](https://github.com/bensheldon/good_job/pull/1114) ([bensheldon](https://github.com/bensheldon))
- Remove `pg_advisory_unlock_all()` after job is run; only verify blank `finished_at` \(and not lock presence\) before performing job [\#1113](https://github.com/bensheldon/good_job/pull/1113) ([bensheldon](https://github.com/bensheldon))
- Update docs url [\#1112](https://github.com/bensheldon/good_job/pull/1112) ([ur5us](https://github.com/ur5us))
- Pin psych gem 5.1.0 [\#1108](https://github.com/bensheldon/good_job/pull/1108) ([bensheldon](https://github.com/bensheldon))
- Add sampling for Skylight traces on Demo [\#1107](https://github.com/bensheldon/good_job/pull/1107) ([bensheldon](https://github.com/bensheldon))
- Add Rails 7.1 to test matrix [\#1105](https://github.com/bensheldon/good_job/pull/1105) ([bensheldon](https://github.com/bensheldon))
- Add spec to verify unhandled thread errors are reported [\#1104](https://github.com/bensheldon/good_job/pull/1104) ([bensheldon](https://github.com/bensheldon))
- Update Codespace configuration [\#1101](https://github.com/bensheldon/good_job/pull/1101) ([bensheldon](https://github.com/bensheldon))

## [v3.19.4](https://github.com/bensheldon/good_job/tree/v3.19.4) (2023-10-04)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.19.3...v3.19.4)

**Closed issues:**

- Including GoodJob::ActiveJobExtensions::Concurrency triggers rails deprecation notice [\#1096](https://github.com/bensheldon/good_job/issues/1096)
- Add retries exhaused callback [\#1080](https://github.com/bensheldon/good_job/issues/1080)

**Merged pull requests:**

- Address rails 7.1 deprecation when using `ActiveJobExtensions::Concurrency` [\#1097](https://github.com/bensheldon/good_job/pull/1097) ([Earlopain](https://github.com/Earlopain))

## [v3.19.3](https://github.com/bensheldon/good_job/tree/v3.19.3) (2023-09-28)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.19.2...v3.19.3)

**Closed issues:**

- Explicitly write that jobs with higher priority jobs run first \(unlike Que or DelayedJob\) at readme. [\#991](https://github.com/bensheldon/good_job/issues/991)

**Merged pull requests:**

- Correct `discrete_execution#status` method [\#1092](https://github.com/bensheldon/good_job/pull/1092) ([coreyaus](https://github.com/coreyaus))
- Use ActiveSupport::BroadcastLogger [\#1089](https://github.com/bensheldon/good_job/pull/1089) ([bensheldon](https://github.com/bensheldon))
- Log thread name for gem development debugging [\#1085](https://github.com/bensheldon/good_job/pull/1085) ([bensheldon](https://github.com/bensheldon))
- Describe ApplicationController hook in README [\#1082](https://github.com/bensheldon/good_job/pull/1082) ([maxim](https://github.com/maxim))
- \[Docs\] Explain how `priority` works in GoodJob [\#1005](https://github.com/bensheldon/good_job/pull/1005) ([coreyaus](https://github.com/coreyaus))

## [v3.19.2](https://github.com/bensheldon/good_job/tree/v3.19.2) (2023-09-22)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.19.1...v3.19.2)

**Merged pull requests:**

- Fix HttpServer to handle Errno::EPIPE [\#1083](https://github.com/bensheldon/good_job/pull/1083) ([shouichi](https://github.com/shouichi))

## [v3.19.1](https://github.com/bensheldon/good_job/tree/v3.19.1) (2023-09-20)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.19.0...v3.19.1)

**Implemented enhancements:**

- Add `good_job_application_controller` load hook [\#1081](https://github.com/bensheldon/good_job/pull/1081) ([bensheldon](https://github.com/bensheldon))

## [v3.19.0](https://github.com/bensheldon/good_job/tree/v3.19.0) (2023-09-19)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.18.3...v3.19.0)

**Implemented enhancements:**

- "Force" discard jobs that are already running/runaway to prevent retry [\#1073](https://github.com/bensheldon/good_job/pull/1073) ([jgrau](https://github.com/jgrau))

**Closed issues:**

- Possible Memory Leak [\#1074](https://github.com/bensheldon/good_job/issues/1074)
- What's the best way to stop and discard a running job? [\#625](https://github.com/bensheldon/good_job/issues/625)

**Merged pull requests:**

- AdvisoryLockable: Abort record create if with\_advisory\_lock fails to acquire advisory lock [\#1078](https://github.com/bensheldon/good_job/pull/1078) ([bensheldon](https://github.com/bensheldon))
- Wrap all test background threads in Rails executors; better test logging/debugging [\#1077](https://github.com/bensheldon/good_job/pull/1077) ([bensheldon](https://github.com/bensheldon))

## [v3.18.3](https://github.com/bensheldon/good_job/tree/v3.18.3) (2023-09-16)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.18.2...v3.18.3)

**Fixed bugs:**

- Allow Probe Server's `/connect` to handle a certain number of reconnects before statusing [\#1075](https://github.com/bensheldon/good_job/pull/1075) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

-  ActiveRecord::RecordNotUnique good\_jobs.id error in rspec test suite [\#1072](https://github.com/bensheldon/good_job/issues/1072)
- Probe failures on heavy usage of dashboard\(?\) [\#1068](https://github.com/bensheldon/good_job/issues/1068)

**Merged pull requests:**

- Bump actions/checkout from 3 to 4 [\#1070](https://github.com/bensheldon/good_job/pull/1070) ([dependabot[bot]](https://github.com/apps/dependabot))
- Add Skylight for demo site; create distinct development, lint, demo, production Gemfile groups; a little bit of Rubocop [\#1069](https://github.com/bensheldon/good_job/pull/1069) ([bensheldon](https://github.com/bensheldon))
- Add JRuby 9.4 to testing matrix; nerf ActiveJob::TestQueueAdapter overrides [\#1067](https://github.com/bensheldon/good_job/pull/1067) ([bensheldon](https://github.com/bensheldon))
- Reorganize dependencies to make booting JRuby easier [\#1066](https://github.com/bensheldon/good_job/pull/1066) ([bensheldon](https://github.com/bensheldon))
- Slight refactoring to CronEntry [\#1063](https://github.com/bensheldon/good_job/pull/1063) ([bensheldon](https://github.com/bensheldon))

## [v3.18.2](https://github.com/bensheldon/good_job/tree/v3.18.2) (2023-09-02)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.18.1...v3.18.2)

**Fixed bugs:**

- Fix compatibility with Global ID v1.2.0 [\#1064](https://github.com/bensheldon/good_job/pull/1064) ([bensheldon](https://github.com/bensheldon))

**Merged pull requests:**

- Bump pg from 1.5.3 to 1.5.4 [\#1061](https://github.com/bensheldon/good_job/pull/1061) ([dependabot[bot]](https://github.com/apps/dependabot))

## [v3.18.1](https://github.com/bensheldon/good_job/tree/v3.18.1) (2023-08-30)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.18.0...v3.18.1)

**Implemented enhancements:**

- Respect the configured execution mode, even within the CLI [\#1056](https://github.com/bensheldon/good_job/pull/1056) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- Bug: calling `GoodJob.restart` in Puma on\_worker\_boot starts GoodJob regardless of it being in async mode or not [\#1054](https://github.com/bensheldon/good_job/issues/1054)
- \[Feature Request?\] Config Option to Inline Child-Jobs in Worker Processes [\#1052](https://github.com/bensheldon/good_job/issues/1052)
- \[Feature Request\] Hook to extend cron schedules [\#1050](https://github.com/bensheldon/good_job/issues/1050)

**Merged pull requests:**

- `GoodJob.restart` should not start capsules \(job execution\) when in a webserver but not in async mode [\#1055](https://github.com/bensheldon/good_job/pull/1055) ([bensheldon](https://github.com/bensheldon))

## [v3.18.0](https://github.com/bensheldon/good_job/tree/v3.18.0) (2023-08-30)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.17.4...v3.18.0)

**Implemented enhancements:**

- Support configuring cron schedule dynamically with a block [\#1051](https://github.com/bensheldon/good_job/pull/1051) ([DanielHeath](https://github.com/DanielHeath))

## [v3.17.4](https://github.com/bensheldon/good_job/tree/v3.17.4) (2023-08-24)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.17.3...v3.17.4)

**Fixed bugs:**

- Handle edge case of logger not responding to silence [\#1049](https://github.com/bensheldon/good_job/pull/1049) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- An idea for better .silence handling [\#1046](https://github.com/bensheldon/good_job/issues/1046)

## [v3.17.3](https://github.com/bensheldon/good_job/tree/v3.17.3) (2023-08-19)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.17.2...v3.17.3)

**Fixed bugs:**

- New probe server fixes: allow accept\_nonblock to raise and IO.gets return nil [\#1043](https://github.com/bensheldon/good_job/pull/1043) ([stas](https://github.com/stas))

**Closed issues:**

- Dashboard as separate package? [\#965](https://github.com/bensheldon/good_job/issues/965)
- Managing jobs with errors [\#929](https://github.com/bensheldon/good_job/issues/929)
- Feature: dynamic options for good\_job\_control\_concurrency\_with [\#684](https://github.com/bensheldon/good_job/issues/684)

**Merged pull requests:**

- Attempt to overcome github\_changelog\_generator's rate limit problem [\#1045](https://github.com/bensheldon/good_job/pull/1045) ([bensheldon](https://github.com/bensheldon))
- \[Doc\] for cron schedule add info about Dashboard view [\#1042](https://github.com/bensheldon/good_job/pull/1042) ([steveroot](https://github.com/steveroot))
- Add description of  :class to readme for cron style repeating jobs section [\#1040](https://github.com/bensheldon/good_job/pull/1040) ([steveroot](https://github.com/steveroot))

## [v3.17.2](https://github.com/bensheldon/good_job/tree/v3.17.2) (2023-08-10)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.17.1...v3.17.2)

**Fixed bugs:**

- 3.17.0 breaks health check endpoints [\#1033](https://github.com/bensheldon/good_job/issues/1033)
- Fix NoMethodError: undefined method `silence' for nil:NilClass [\#1037](https://github.com/bensheldon/good_job/pull/1037) ([afn](https://github.com/afn))

**Closed issues:**

- NoMethodError in ProcessHeartbeat if ActiveRecord logger is nil [\#1036](https://github.com/bensheldon/good_job/issues/1036)
- JRuby deprecation policy [\#1035](https://github.com/bensheldon/good_job/issues/1035)

**Merged pull requests:**

- Add helpful failure output for Sorbet linter [\#1038](https://github.com/bensheldon/good_job/pull/1038) ([bensheldon](https://github.com/bensheldon))

## [v3.17.1](https://github.com/bensheldon/good_job/tree/v3.17.1) (2023-08-08)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.17.0...v3.17.1)

**Fixed bugs:**

- Fix Probe Server by retrying IO.select instead of returning early [\#1034](https://github.com/bensheldon/good_job/pull/1034) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- Add database connection pool details to Process state [\#1014](https://github.com/bensheldon/good_job/issues/1014)

**Merged pull requests:**

- Add YARD warnings to lint script; fix YARD warnings [\#1032](https://github.com/bensheldon/good_job/pull/1032) ([bensheldon](https://github.com/bensheldon))

## [v3.17.0](https://github.com/bensheldon/good_job/tree/v3.17.0) (2023-08-06)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.16.4...v3.17.0)

**Implemented enhancements:**

- Add Dark Mode color theme for Dashboard [\#1031](https://github.com/bensheldon/good_job/pull/1031) ([bensheldon](https://github.com/bensheldon))
- Automatically send status notifications to systemd [\#1029](https://github.com/bensheldon/good_job/pull/1029) ([Mr0grog](https://github.com/Mr0grog))

**Closed issues:**

- Add systemd/sd\_notify support to CLI [\#1027](https://github.com/bensheldon/good_job/issues/1027)
- Cron job by default runs on the web server even when "async" execution mode is not specified [\#1026](https://github.com/bensheldon/good_job/issues/1026)
- Replace webrick with a small/simple custom rack-compatible http server [\#1017](https://github.com/bensheldon/good_job/issues/1017)
- Dark mode for the dashboard ? [\#974](https://github.com/bensheldon/good_job/issues/974)

**Merged pull requests:**

-  Replace Webrick with custom simple http server [\#1030](https://github.com/bensheldon/good_job/pull/1030) ([dixpac](https://github.com/dixpac))
- Bump appraisal from `b200e63` to `feb78bc` [\#1025](https://github.com/bensheldon/good_job/pull/1025) ([dependabot[bot]](https://github.com/apps/dependabot))
- Bump net-imap from 0.3.6 to 0.3.7 [\#1024](https://github.com/bensheldon/good_job/pull/1024) ([dependabot[bot]](https://github.com/apps/dependabot))
- Bump rack from 2.2.7 to 2.2.8 [\#1023](https://github.com/bensheldon/good_job/pull/1023) ([dependabot[bot]](https://github.com/apps/dependabot))

## [v3.16.4](https://github.com/bensheldon/good_job/tree/v3.16.4) (2023-07-30)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.16.3...v3.16.4)

**Implemented enhancements:**

- Add database\_connection\_pool stats to `GoodJob::Process.current_state` [\#1019](https://github.com/bensheldon/good_job/pull/1019) ([dixpac](https://github.com/dixpac))

**Fixed bugs:**

- Move `Execution#active_job` to BaseExecution to share with Job; refactor `Batch#active_jobs` to use job directly [\#1022](https://github.com/bensheldon/good_job/pull/1022) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- Notifier errored: ArgumentError: wrong number of arguments \(given 1, expected 0\) [\#1016](https://github.com/bensheldon/good_job/issues/1016)
- Understanding Database Connections and Cron [\#1013](https://github.com/bensheldon/good_job/issues/1013)
- Experiencing various database exceptions with Rails 7.1  [\#796](https://github.com/bensheldon/good_job/issues/796)

**Merged pull requests:**

- Refactor Notifier to ensure \#restart is threadsafe [\#1021](https://github.com/bensheldon/good_job/pull/1021) ([bensheldon](https://github.com/bensheldon))
- Notifier and CronManager share a 2-thread executor within the capsule [\#1018](https://github.com/bensheldon/good_job/pull/1018) ([bensheldon](https://github.com/bensheldon))
- Clarify database connections and recurring processes in README.md [\#1015](https://github.com/bensheldon/good_job/pull/1015) ([blumhardts](https://github.com/blumhardts))
- Deprecate `GoodJob::Lockable` and rename to `GoodJob::AdvisoryLockable` [\#1012](https://github.com/bensheldon/good_job/pull/1012) ([bensheldon](https://github.com/bensheldon))

## [v3.16.3](https://github.com/bensheldon/good_job/tree/v3.16.3) (2023-07-18)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.16.2...v3.16.3)

**Fixed bugs:**

- Fix bulk enqueue for unmigrated 'error\_event'; add `GoodJob.migrated?` check method; use custom enum implementation [\#1011](https://github.com/bensheldon/good_job/pull/1011) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- GoodJob::Bulk.enqueue not handling missing migrations [\#1010](https://github.com/bensheldon/good_job/issues/1010)

**Merged pull requests:**

- Move shared `BaseExecution` concerns into the base class. [\#1009](https://github.com/bensheldon/good_job/pull/1009) ([dixpac](https://github.com/dixpac))

## [v3.16.2](https://github.com/bensheldon/good_job/tree/v3.16.2) (2023-07-13)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.16.1...v3.16.2)

**Closed issues:**

- Support for customized job display name [\#956](https://github.com/bensheldon/good_job/issues/956)

**Merged pull requests:**

- Add `GoodJob::Job#display_name` to allow customizing dashboard job display [\#1008](https://github.com/bensheldon/good_job/pull/1008) ([paul](https://github.com/paul))

## [v3.16.1](https://github.com/bensheldon/good_job/tree/v3.16.1) (2023-07-11)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.16.0...v3.16.1)

**Fixed bugs:**

- Wrap Notifier's `refresh_process` with Rails executor [\#1007](https://github.com/bensheldon/good_job/pull/1007) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- uninitialized constant GoodJob::Process [\#1006](https://github.com/bensheldon/good_job/issues/1006)

## [v3.16.0](https://github.com/bensheldon/good_job/tree/v3.16.0) (2023-07-10)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.15.14...v3.16.0)

**Implemented enhancements:**

- Add `GoodJob.configure_active_record` as alternative to `GoodJob.active_record_parent_class` [\#1004](https://github.com/bensheldon/good_job/pull/1004) ([bensheldon](https://github.com/bensheldon))
- Configure `dashboard_default_locale` using custom subclass of `I18n::Config` to isolate I18n configuration from parent application [\#1001](https://github.com/bensheldon/good_job/pull/1001) ([bensheldon](https://github.com/bensheldon))
- Create `error_event` column to track the context of an error \(discarded, retried, retry\_stopped, etc\) [\#995](https://github.com/bensheldon/good_job/pull/995) ([bensheldon](https://github.com/bensheldon))
- Added metrics to Scheduler and track in Process state [\#984](https://github.com/bensheldon/good_job/pull/984) ([AndersGM](https://github.com/AndersGM))

**Fixed bugs:**

- Use Concurrent::Array for class `instances` to avoid JRuby synchronization errors [\#1002](https://github.com/bensheldon/good_job/pull/1002) ([bensheldon](https://github.com/bensheldon))
- Add test to assert enqueuing behavior within transactions [\#998](https://github.com/bensheldon/good_job/pull/998) ([bensheldon](https://github.com/bensheldon))
- Fix Ukrainian language code [\#996](https://github.com/bensheldon/good_job/pull/996) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- Is `pgcrypto` necessary? [\#805](https://github.com/bensheldon/good_job/issues/805)
- Integrate Sorbet type checking [\#404](https://github.com/bensheldon/good_job/issues/404)

**Merged pull requests:**

- Unify `frozen_string_literal` comment style [\#1003](https://github.com/bensheldon/good_job/pull/1003) ([dixpac](https://github.com/dixpac))
- Add more execution mode details and caveats to Readme Set Up section [\#997](https://github.com/bensheldon/good_job/pull/997) ([bensheldon](https://github.com/bensheldon))
- Add note in migrations that `pgcrypto` extension isn't necessary in PG 13+ [\#837](https://github.com/bensheldon/good_job/pull/837) ([bensheldon](https://github.com/bensheldon))
- Add Sorbet to linter [\#760](https://github.com/bensheldon/good_job/pull/760) ([sam1el](https://github.com/sam1el))

## [v3.15.14](https://github.com/bensheldon/good_job/tree/v3.15.14) (2023-07-03)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.15.13...v3.15.14)

**Implemented enhancements:**

- Add Process heartbeat that is updated inside of Notifier [\#977](https://github.com/bensheldon/good_job/pull/977) ([bensheldon](https://github.com/bensheldon))

**Fixed bugs:**

- Dashboard error when trying to display 0 running/queued/retried jobs due to missing 'zero' translation [\#990](https://github.com/bensheldon/good_job/issues/990)
- Add explicit namespace back to `GoodJob::DiscreteExecution` [\#983](https://github.com/bensheldon/good_job/pull/983) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- Persisting ActiveSupport::CurrentAttributes  [\#981](https://github.com/bensheldon/good_job/issues/981)
- uninitialized constant DiscreteExecution [\#962](https://github.com/bensheldon/good_job/issues/962)
- Hard kill resilience with execution counts [\#922](https://github.com/bensheldon/good_job/issues/922)

**Merged pull requests:**

- Bump rubocop from 1.53.0 to 1.54.0 [\#994](https://github.com/bensheldon/good_job/pull/994) ([dependabot[bot]](https://github.com/apps/dependabot))
- Bump rails from 7.0.5 to 7.0.6 [\#993](https://github.com/bensheldon/good_job/pull/993) ([dependabot[bot]](https://github.com/apps/dependabot))
- Fix CI: Lock traces version for Ruby 2.6 compatible version [\#987](https://github.com/bensheldon/good_job/pull/987) ([bensheldon](https://github.com/bensheldon))
- Turkish Language support [\#986](https://github.com/bensheldon/good_job/pull/986) ([SemihCag](https://github.com/SemihCag))
- Use generic error reporter in Readme examples [\#964](https://github.com/bensheldon/good_job/pull/964) ([shouichi](https://github.com/shouichi))

## [v3.15.13](https://github.com/bensheldon/good_job/tree/v3.15.13) (2023-06-14)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.15.12...v3.15.13)

**Fixed bugs:**

- Replace uncached table\_exists? with cached table\_exists? [\#979](https://github.com/bensheldon/good_job/pull/979) ([cmcinnes-mdsol](https://github.com/cmcinnes-mdsol))

## [v3.15.12](https://github.com/bensheldon/good_job/tree/v3.15.12) (2023-06-11)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.15.11...v3.15.12)

**Fixed bugs:**

- Do not allow GoodJob to automatically start after Rails initialization if previously shutdown [\#976](https://github.com/bensheldon/good_job/pull/976) ([bensheldon](https://github.com/bensheldon))

**Merged pull requests:**

- Fix Rubocop linting [\#975](https://github.com/bensheldon/good_job/pull/975) ([bensheldon](https://github.com/bensheldon))
- Bump capybara from 3.38.0 to 3.39.1 [\#970](https://github.com/bensheldon/good_job/pull/970) ([dependabot[bot]](https://github.com/apps/dependabot))
- Bump thor from 1.2.1 to 1.2.2 [\#967](https://github.com/bensheldon/good_job/pull/967) ([dependabot[bot]](https://github.com/apps/dependabot))

## [v3.15.11](https://github.com/bensheldon/good_job/tree/v3.15.11) (2023-06-06)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.15.10...v3.15.11)

**Fixed bugs:**

- Fix `discrete_executions` job re-enqueueing when `retry_job` is called directly [\#973](https://github.com/bensheldon/good_job/pull/973) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- Unclear how discrete executions should work with reenqueued  jobs \(leads to broken job-iteration\) [\#972](https://github.com/bensheldon/good_job/issues/972)
- `build_for_enqueue` discards `scheduled_at` values for bulk-enqueued jobs [\#966](https://github.com/bensheldon/good_job/issues/966)

## [v3.15.10](https://github.com/bensheldon/good_job/tree/v3.15.10) (2023-05-22)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.15.9...v3.15.10)

**Fixed bugs:**

- Ensure migration warning for `DiscreteExecution` constant is in explicit `GoodJob::` namespace [\#963](https://github.com/bensheldon/good_job/pull/963) ([bensheldon](https://github.com/bensheldon))

## [v3.15.9](https://github.com/bensheldon/good_job/tree/v3.15.9) (2023-05-21)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.15.8...v3.15.9)

**Fixed bugs:**

- Fix wait and wait\_until ignored in bulk enqueue [\#960](https://github.com/bensheldon/good_job/pull/960) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- Does Bulk enqueue respect wait? [\#959](https://github.com/bensheldon/good_job/issues/959)
- BaseExecution::discrete\_support?  hardcodes the DiscreteExecution table\_name [\#957](https://github.com/bensheldon/good_job/issues/957)

**Merged pull requests:**

- Fix flaky jruby test to widen time-based range [\#961](https://github.com/bensheldon/good_job/pull/961) ([bensheldon](https://github.com/bensheldon))
- Update README.md [\#953](https://github.com/bensheldon/good_job/pull/953) ([namiwang](https://github.com/namiwang))

## [v3.15.8](https://github.com/bensheldon/good_job/tree/v3.15.8) (2023-05-19)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.15.7...v3.15.8)

**Fixed bugs:**

- Fix hard-coded and duplicated table\_name [\#958](https://github.com/bensheldon/good_job/pull/958) ([gap777](https://github.com/gap777))

**Closed issues:**

- `active_job.enqueue` Performance Issue [\#939](https://github.com/bensheldon/good_job/issues/939)

**Merged pull requests:**

- Bump rubocop from 1.46.0 to 1.50.2 [\#949](https://github.com/bensheldon/good_job/pull/949) ([dependabot[bot]](https://github.com/apps/dependabot))
- Bump rubocop-rails from 2.18.0 to 2.19.1 [\#947](https://github.com/bensheldon/good_job/pull/947) ([dependabot[bot]](https://github.com/apps/dependabot))

## [v3.15.7](https://github.com/bensheldon/good_job/tree/v3.15.7) (2023-04-30)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.15.6...v3.15.7)

**Fixed bugs:**

- Fix Lockable's `SELECT 1 AS one` queries missing `LIMIT 1` [\#946](https://github.com/bensheldon/good_job/pull/946) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- Issue with performing jobs that use ActionMailer::Parameterized [\#944](https://github.com/bensheldon/good_job/issues/944)
- Deprecation warning on the deprecation warning [\#943](https://github.com/bensheldon/good_job/issues/943)

**Merged pull requests:**

- Replace class usage of ActiveSupport::Deprecator with gem-specific instance [\#945](https://github.com/bensheldon/good_job/pull/945) ([bensheldon](https://github.com/bensheldon))

## [v3.15.6](https://github.com/bensheldon/good_job/tree/v3.15.6) (2023-04-24)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.15.5...v3.15.6)

**Merged pull requests:**

- Refine french translations [\#936](https://github.com/bensheldon/good_job/pull/936) ([francois-ferrandis](https://github.com/francois-ferrandis))
- feat: locales for ja [\#935](https://github.com/bensheldon/good_job/pull/935) ([aki77](https://github.com/aki77))

## [v3.15.5](https://github.com/bensheldon/good_job/tree/v3.15.5) (2023-04-24)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.15.4...v3.15.5)

**Fixed bugs:**

- Fix `GoodJob.cleanup_preserved_jobs` to add missing guard for unmigrated discrete executions [\#938](https://github.com/bensheldon/good_job/pull/938) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- Update to 3.15.4 breaks cleanup\_preserved\_jobs [\#937](https://github.com/bensheldon/good_job/issues/937)

## [v3.15.4](https://github.com/bensheldon/good_job/tree/v3.15.4) (2023-04-22)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.15.3...v3.15.4)

**Merged pull requests:**

- Create "discrete" `good_job_executions` table to separate Job records from Execution records and have a 1-to-1 correspondence between `good_jobs` records and Active Job jobs [\#928](https://github.com/bensheldon/good_job/pull/928) ([bensheldon](https://github.com/bensheldon))

## [v3.15.3](https://github.com/bensheldon/good_job/tree/v3.15.3) (2023-04-22)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.15.2...v3.15.3)

**Merged pull requests:**

- Eagerly autoload `ActiveJob::Base`; clean up framework deferred-loading logic to use nested `on_load` blocks [\#931](https://github.com/bensheldon/good_job/pull/931) ([bensheldon](https://github.com/bensheldon))

## [v3.15.2](https://github.com/bensheldon/good_job/tree/v3.15.2) (2023-04-19)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.15.1...v3.15.2)

**Closed issues:**

- Cleaning up preserved jobs giving me timeout [\#933](https://github.com/bensheldon/good_job/issues/933)
- uninitialized constant GoodJob::ActiveJobJob \(NameError\) [\#932](https://github.com/bensheldon/good_job/issues/932)

**Merged pull requests:**

- Use batched queries in `GoodJob::self.cleanup_preserved_jobs` [\#934](https://github.com/bensheldon/good_job/pull/934) ([bensheldon](https://github.com/bensheldon))
- Bump nokogiri from 1.14.2 to 1.14.3 [\#926](https://github.com/bensheldon/good_job/pull/926) ([dependabot[bot]](https://github.com/apps/dependabot))

## [v3.15.1](https://github.com/bensheldon/good_job/tree/v3.15.1) (2023-04-17)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.15.0...v3.15.1)

**Implemented enhancements:**

- Support for Batches? [\#417](https://github.com/bensheldon/good_job/issues/417)

**Fixed bugs:**

- Fix setting of locale via routes `mount ... defaults: { locale: :en }` [\#923](https://github.com/bensheldon/good_job/pull/923) ([bensheldon](https://github.com/bensheldon))
- Set `successfully_enqueued?` when using `perform_all_later` [\#917](https://github.com/bensheldon/good_job/pull/917) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- GoodJob has pending database migrations after v2 -\> v3  [\#920](https://github.com/bensheldon/good_job/issues/920)
- Batch docs in README suggest `Batch#add` is a class method, but it's not [\#912](https://github.com/bensheldon/good_job/issues/912)
- How do I clear queue during tests? [\#887](https://github.com/bensheldon/good_job/issues/887)
- Implement batch functionality [\#691](https://github.com/bensheldon/good_job/issues/691)

**Merged pull requests:**

- In tests, directly use `connection.truncate_tables` instead of  `ActiveRecord::Tasks::DatabaseTasks.truncate_all` [\#918](https://github.com/bensheldon/good_job/pull/918) ([bensheldon](https://github.com/bensheldon))
- Use `GoodJob.capsule` in CLI instead of creating a new Capsule [\#916](https://github.com/bensheldon/good_job/pull/916) ([bensheldon](https://github.com/bensheldon))
- Fix lint: missing fr and nl translations; readme whitespace [\#914](https://github.com/bensheldon/good_job/pull/914) ([bensheldon](https://github.com/bensheldon))
- Switches from Chrome to Chromium to support Apple M1/Arm CPUs [\#910](https://github.com/bensheldon/good_job/pull/910) ([ckdake](https://github.com/ckdake))
- Bump erb\_lint from 0.3.1 to 0.4.0 [\#906](https://github.com/bensheldon/good_job/pull/906) ([dependabot[bot]](https://github.com/apps/dependabot))

## [v3.15.0](https://github.com/bensheldon/good_job/tree/v3.15.0) (2023-04-02)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.14.2...v3.15.0)

**Implemented enhancements:**

- Extract more Dashboard strings into localization strings [\#899](https://github.com/bensheldon/good_job/pull/899) ([patriciomacadden](https://github.com/patriciomacadden))

**Closed issues:**

- ActionView::Template::Error - undefined method `symbolize\_keys' [\#889](https://github.com/bensheldon/good_job/issues/889)

**Merged pull requests:**

- Bump benchmark-ips from 2.11.0 to 2.12.0 [\#907](https://github.com/bensheldon/good_job/pull/907) ([dependabot[bot]](https://github.com/apps/dependabot))
- Bump selenium-webdriver from 4.8.1 to 4.8.6 [\#905](https://github.com/bensheldon/good_job/pull/905) ([dependabot[bot]](https://github.com/apps/dependabot))
- Bump rails from 7.0.4.2 to 7.0.4.3 [\#904](https://github.com/bensheldon/good_job/pull/904) ([dependabot[bot]](https://github.com/apps/dependabot))
- feat: locales for de [\#903](https://github.com/bensheldon/good_job/pull/903) ([eric-christian](https://github.com/eric-christian))
- Update README.md [\#902](https://github.com/bensheldon/good_job/pull/902) ([ain2108](https://github.com/ain2108))
- Extract shared methods/scopes into a BaseExecution to share between Execution and Job models [\#894](https://github.com/bensheldon/good_job/pull/894) ([bensheldon](https://github.com/bensheldon))
- Add translate\_hash to handle missing translation keys that return hashes; only show translatable/available locales in dropdown [\#891](https://github.com/bensheldon/good_job/pull/891) ([bensheldon](https://github.com/bensheldon))

## [v3.14.2](https://github.com/bensheldon/good_job/tree/v3.14.2) (2023-03-16)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.14.1...v3.14.2)

**Merged pull requests:**

- Bump rack from 2.2.6.3 to 2.2.6.4 [\#893](https://github.com/bensheldon/good_job/pull/893) ([dependabot[bot]](https://github.com/apps/dependabot))
- Remove non-ActiveRecord::Base backed association [\#892](https://github.com/bensheldon/good_job/pull/892) ([rrunyon](https://github.com/rrunyon))

## [v3.14.1](https://github.com/bensheldon/good_job/tree/v3.14.1) (2023-03-14)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.14.0...v3.14.1)

**Merged pull requests:**

- Allow joining executions to jobs scoped by state [\#886](https://github.com/bensheldon/good_job/pull/886) ([segiddins](https://github.com/segiddins))
- Add execution\_result to event payload for perform\_job.good\_job [\#885](https://github.com/bensheldon/good_job/pull/885) ([segiddins](https://github.com/segiddins))
- Bump rack from 2.2.6.2 to 2.2.6.3 [\#884](https://github.com/bensheldon/good_job/pull/884) ([dependabot[bot]](https://github.com/apps/dependabot))

## [v3.14.0](https://github.com/bensheldon/good_job/tree/v3.14.0) (2023-03-09)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.13.0...v3.14.0)

**Implemented enhancements:**

- Deprecate definition of job priority, change to "smaller number is higher priority" to align with Active Job definition [\#883](https://github.com/bensheldon/good_job/pull/883) ([bensheldon](https://github.com/bensheldon))

## [v3.13.0](https://github.com/bensheldon/good_job/tree/v3.13.0) (2023-03-08)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.12.8...v3.13.0)

**Implemented enhancements:**

- If logging to STDOUT in CLI set $stdout.sync = true [\#882](https://github.com/bensheldon/good_job/pull/882) ([blafri](https://github.com/blafri))

**Fixed bugs:**

- Don't load all Executions on Jobs Dashboard [\#878](https://github.com/bensheldon/good_job/pull/878) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- No route matches \[POST\] "/scheduler-dashboard/jobs/\<id\>/retry" [\#880](https://github.com/bensheldon/good_job/issues/880)
- What is `concurrency_key` used for? [\#877](https://github.com/bensheldon/good_job/issues/877)
- ArgumentError in GoodJob::Jobs\#index [\#875](https://github.com/bensheldon/good_job/issues/875)
- Nonworking dashboard for job with many retries [\#809](https://github.com/bensheldon/good_job/issues/809)

**Merged pull requests:**

- Add aggressive test for async Batches [\#833](https://github.com/bensheldon/good_job/pull/833) ([bensheldon](https://github.com/bensheldon))

## [v3.12.8](https://github.com/bensheldon/good_job/tree/v3.12.8) (2023-03-06)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.12.7...v3.12.8)

**Fixed bugs:**

- Add `raise: false` to FrontendsController after action skip [\#881](https://github.com/bensheldon/good_job/pull/881) ([simi](https://github.com/simi))

**Closed issues:**

- GoodJob's JavaScript takes precedence over application's JavaScript in GoodJob 3.12.6, Rails 7 [\#873](https://github.com/bensheldon/good_job/issues/873)

**Merged pull requests:**

- Rewrite flaky tests: don't allow nil timeout for restart [\#872](https://github.com/bensheldon/good_job/pull/872) ([bensheldon](https://github.com/bensheldon))

## [v3.12.7](https://github.com/bensheldon/good_job/tree/v3.12.7) (2023-03-01)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.12.6...v3.12.7)

**Fixed bugs:**

- Rename "assets" to "frontends" to avoid Asset Pipeline collisions [\#874](https://github.com/bensheldon/good_job/pull/874) ([bensheldon](https://github.com/bensheldon))

## [v3.12.6](https://github.com/bensheldon/good_job/tree/v3.12.6) (2023-03-01)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.12.5...v3.12.6)

**Merged pull requests:**

- Update and cleanup js and css assets; add Stimulus [\#870](https://github.com/bensheldon/good_job/pull/870) ([bensheldon](https://github.com/bensheldon))
- Bump actions/add-to-project from 0.4.0 to 0.4.1 [\#869](https://github.com/bensheldon/good_job/pull/869) ([dependabot[bot]](https://github.com/apps/dependabot))
- Bump actions/checkout from 2 to 3 [\#868](https://github.com/bensheldon/good_job/pull/868) ([dependabot[bot]](https://github.com/apps/dependabot))
- Bump rubocop-rails from 2.17.4 to 2.18.0 [\#867](https://github.com/bensheldon/good_job/pull/867) ([dependabot[bot]](https://github.com/apps/dependabot))
- Bump pg from 1.4.5 to 1.4.6 [\#866](https://github.com/bensheldon/good_job/pull/866) ([dependabot[bot]](https://github.com/apps/dependabot))
- Extract GoodJob::Capsule [\#861](https://github.com/bensheldon/good_job/pull/861) ([bensheldon](https://github.com/bensheldon))

## [v3.12.5](https://github.com/bensheldon/good_job/tree/v3.12.5) (2023-02-24)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.12.4...v3.12.5)

**Fixed bugs:**

- Fix I18n number formatting; other Dashboard development tweaks [\#862](https://github.com/bensheldon/good_job/pull/862) ([bensheldon](https://github.com/bensheldon))

**Merged pull requests:**

- Update Development Dependencies. Use Ruby 3.2 and Rails 7.0 [\#865](https://github.com/bensheldon/good_job/pull/865) ([bensheldon](https://github.com/bensheldon))

## [v3.12.4](https://github.com/bensheldon/good_job/tree/v3.12.4) (2023-02-24)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.12.3...v3.12.4)

**Fixed bugs:**

- Add serialize coder kwarg for Rails 7.1-alpha [\#864](https://github.com/bensheldon/good_job/pull/864) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- Rails 7.1 - Serialized columns like a store now needs a `coder: JSON` [\#863](https://github.com/bensheldon/good_job/issues/863)
- Does good\_job automatically retry on ActiveRecord::LockWaitTimeout? [\#860](https://github.com/bensheldon/good_job/issues/860)
- race condition for batches callback [\#832](https://github.com/bensheldon/good_job/issues/832)

## [v3.12.3](https://github.com/bensheldon/good_job/tree/v3.12.3) (2023-02-21)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.12.2...v3.12.3)

**Fixed bugs:**

- Fix bug where notification check does not use configuration [\#857](https://github.com/bensheldon/good_job/pull/857) ([mitchellhenke](https://github.com/mitchellhenke))
- Fix template for the update migrations 03 index \(\#851\) [\#852](https://github.com/bensheldon/good_job/pull/852) ([julienanne](https://github.com/julienanne))

**Closed issues:**

- \[Not Critical\] Too much space \(One\) in db/migrate/XXXXXX\_create\_index\_good\_jobs\_jobs\_on\_priority\_created\_at\_when\_unfinished.rb [\#851](https://github.com/bensheldon/good_job/issues/851)
- Use timestamps with timezone when set as the default for postgresql. [\#668](https://github.com/bensheldon/good_job/issues/668)

## [v3.12.2](https://github.com/bensheldon/good_job/tree/v3.12.2) (2023-02-16)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.12.1...v3.12.2)

**Fixed bugs:**

- Ensure all i18n locale keys are under `good_job` namespace [\#850](https://github.com/bensheldon/good_job/pull/850) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- Override locales and conflict with rails-i18n [\#847](https://github.com/bensheldon/good_job/issues/847)

**Merged pull requests:**

- Add rack-mini-profiler to development [\#848](https://github.com/bensheldon/good_job/pull/848) ([bensheldon](https://github.com/bensheldon))
- Fix typo of "class" in README [\#845](https://github.com/bensheldon/good_job/pull/845) ([mthadley](https://github.com/mthadley))
- spelling: add n to 'not' [\#841](https://github.com/bensheldon/good_job/pull/841) ([michaelglass](https://github.com/michaelglass))

## [v3.12.1](https://github.com/bensheldon/good_job/tree/v3.12.1) (2023-02-09)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.12.0...v3.12.1)

**Fixed bugs:**

- Fix "NoMethodError: private method `\_good\_job\_concurrency\_key' if key is nil" [\#836](https://github.com/bensheldon/good_job/pull/836) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- NoMethodError: private method `\_good\_job\_concurrency\_key' if key is nil [\#835](https://github.com/bensheldon/good_job/issues/835)
- Jobs go back into the queued state when a worker is killed [\#821](https://github.com/bensheldon/good_job/issues/821)

**Merged pull requests:**

- Dashboard's tables update [\#834](https://github.com/bensheldon/good_job/pull/834) ([Ajmal](https://github.com/Ajmal))

## [v3.12.0](https://github.com/bensheldon/good_job/tree/v3.12.0) (2023-02-07)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.11.1...v3.12.0)

**Implemented enhancements:**

- Create `InterruptErrors` extension to raise an exception when an interrupted job is retried [\#830](https://github.com/bensheldon/good_job/pull/830) ([bensheldon](https://github.com/bensheldon))

## [v3.11.1](https://github.com/bensheldon/good_job/tree/v3.11.1) (2023-02-06)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.11.0...v3.11.1)

**Merged pull requests:**

- UI improvement [\#829](https://github.com/bensheldon/good_job/pull/829) ([Ajmal](https://github.com/Ajmal))

## [v3.11.0](https://github.com/bensheldon/good_job/tree/v3.11.0) (2023-02-06)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.10.1...v3.11.0)

**Implemented enhancements:**

- Create ActiveJob extension to disable sending a NOTIFY on enqueue and retry [\#814](https://github.com/bensheldon/good_job/pull/814) ([bensheldon](https://github.com/bensheldon))
- Add global enable\_listen\_notify configuration to disable both notify and listen [\#810](https://github.com/bensheldon/good_job/pull/810) ([mitchellhenke](https://github.com/mitchellhenke))

**Merged pull requests:**

- Test Matrix: Use Ruby 3.2 to test against all Postgres versions; add PG 15, remove PG 10 [\#828](https://github.com/bensheldon/good_job/pull/828) ([bensheldon](https://github.com/bensheldon))
- Bump nokogiri from 1.14.0 to 1.14.1 [\#827](https://github.com/bensheldon/good_job/pull/827) ([dependabot[bot]](https://github.com/apps/dependabot))
- Bump rubocop-performance from 1.15.2 to 1.16.0 [\#826](https://github.com/bensheldon/good_job/pull/826) ([dependabot[bot]](https://github.com/apps/dependabot))

## [v3.10.1](https://github.com/bensheldon/good_job/tree/v3.10.1) (2023-02-06)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.10.0...v3.10.1)

**Fixed bugs:**

- Ensure batch is reloaded before updating on multiple enqueues [\#824](https://github.com/bensheldon/good_job/pull/824) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- Can't batch.enqueue the callback after retrying a job within the batch [\#822](https://github.com/bensheldon/good_job/issues/822)

**Merged pull requests:**

- In tests, retry when connecting to Puma returns Net::ReadTimeout [\#825](https://github.com/bensheldon/good_job/pull/825) ([bensheldon](https://github.com/bensheldon))
- Add Batch enqueue example to Demo's cron configuration [\#823](https://github.com/bensheldon/good_job/pull/823) ([bensheldon](https://github.com/bensheldon))

## [v3.10.0](https://github.com/bensheldon/good_job/tree/v3.10.0) (2023-02-04)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.9.0...v3.10.0)

**Implemented enhancements:**

- Implement `GoodJob::Batch` [\#712](https://github.com/bensheldon/good_job/pull/712) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- Support for Rails 6.1 / Ruby 3.2 [\#785](https://github.com/bensheldon/good_job/issues/785)
- Custom table names [\#748](https://github.com/bensheldon/good_job/issues/748)
- Health check issue with cron scheduler job [\#741](https://github.com/bensheldon/good_job/issues/741)

## [v3.9.0](https://github.com/bensheldon/good_job/tree/v3.9.0) (2023-01-31)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.8.0...v3.9.0)

**Implemented enhancements:**

- Abort enqueue when the concurrency limit is reached [\#820](https://github.com/bensheldon/good_job/pull/820) ([TAGraves](https://github.com/TAGraves))
- Add bulk enqueue functionality [\#790](https://github.com/bensheldon/good_job/pull/790) ([julik](https://github.com/julik))

**Merged pull requests:**

- Bump alex-page/github-project-automation-plus from 0.8.2 to 0.8.3 [\#819](https://github.com/bensheldon/good_job/pull/819) ([dependabot[bot]](https://github.com/apps/dependabot))
- Bump concurrent-ruby from 1.1.10 to 1.2.0 [\#818](https://github.com/bensheldon/good_job/pull/818) ([dependabot[bot]](https://github.com/apps/dependabot))
- Bump rails from 6.1.7 to 6.1.7.2 [\#817](https://github.com/bensheldon/good_job/pull/817) ([dependabot[bot]](https://github.com/apps/dependabot))
- Bump selenium-webdriver from 4.7.1 to 4.8.0 [\#816](https://github.com/bensheldon/good_job/pull/816) ([dependabot[bot]](https://github.com/apps/dependabot))
- Bump rubocop from 1.43.0 to 1.44.1 [\#815](https://github.com/bensheldon/good_job/pull/815) ([dependabot[bot]](https://github.com/apps/dependabot))
- Ensure that anytime the Notifier uses autoloaded constants \(ActiveRecord\), they are wrapped with a Rails Executor [\#797](https://github.com/bensheldon/good_job/pull/797) ([bensheldon](https://github.com/bensheldon))
- Remove support for Ruby 2.5 and JRuby 9.2; reactivate appraisal tests for Rails HEAD [\#756](https://github.com/bensheldon/good_job/pull/756) ([bensheldon](https://github.com/bensheldon))

## [v3.8.0](https://github.com/bensheldon/good_job/tree/v3.8.0) (2023-01-27)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.7.4...v3.8.0)

**Implemented enhancements:**

- Capture and log ActiveJob IDs that are interrupted when Scheduler is forced to shutdown [\#794](https://github.com/bensheldon/good_job/pull/794) ([bensheldon](https://github.com/bensheldon))

**Fixed bugs:**

- Ensure Concurrency Keys are string-like and return a better error when they cannot be cast to a string [\#791](https://github.com/bensheldon/good_job/pull/791) ([Earlopain](https://github.com/Earlopain))

**Closed issues:**

- Work is not being picked up at the expected rate [\#802](https://github.com/bensheldon/good_job/issues/802)
- Cleaning up preserved jobs only removes a subset of the jobs [\#801](https://github.com/bensheldon/good_job/issues/801)
- Dashboard fails to execute JS on latest Firefox 108 [\#792](https://github.com/bensheldon/good_job/issues/792)
- Concurrency key doesn't handle Hash: TypeError \(can't cast Hash\) [\#784](https://github.com/bensheldon/good_job/issues/784)

**Merged pull requests:**

- Bump fugit from 1.8.0 to 1.8.1 [\#808](https://github.com/bensheldon/good_job/pull/808) ([dependabot[bot]](https://github.com/apps/dependabot))
- Bump rubocop-rspec from 2.17.1 to 2.18.1 [\#807](https://github.com/bensheldon/good_job/pull/807) ([dependabot[bot]](https://github.com/apps/dependabot))
- Bump globalid from 1.0.0 to 1.0.1 [\#804](https://github.com/bensheldon/good_job/pull/804) ([dependabot[bot]](https://github.com/apps/dependabot))
- Bump rack from 2.2.4 to 2.2.6.2 [\#803](https://github.com/bensheldon/good_job/pull/803) ([dependabot[bot]](https://github.com/apps/dependabot))
- Bump nokogiri from 1.13.10 to 1.14.0 [\#800](https://github.com/bensheldon/good_job/pull/800) ([dependabot[bot]](https://github.com/apps/dependabot))
- Bump rubocop from 1.42.0 to 1.43.0 [\#799](https://github.com/bensheldon/good_job/pull/799) ([dependabot[bot]](https://github.com/apps/dependabot))
- Bump rubocop-rspec from 2.16.0 to 2.17.1 [\#798](https://github.com/bensheldon/good_job/pull/798) ([dependabot[bot]](https://github.com/apps/dependabot))
- Add French translation [\#795](https://github.com/bensheldon/good_job/pull/795) ([francois-ferrandis](https://github.com/francois-ferrandis))
- Bump rubocop-rails from 2.17.3 to 2.17.4 [\#780](https://github.com/bensheldon/good_job/pull/780) ([dependabot[bot]](https://github.com/apps/dependabot))

## [v3.7.4](https://github.com/bensheldon/good_job/tree/v3.7.4) (2023-01-10)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.7.3...v3.7.4)

**Fixed bugs:**

- Update to es-module-shims v1.6.3 and use an inline script entry-point; remove script.js entrypoint; remove sourcemap references [\#793](https://github.com/bensheldon/good_job/pull/793) ([bensheldon](https://github.com/bensheldon))

## [v3.7.3](https://github.com/bensheldon/good_job/tree/v3.7.3) (2023-01-09)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.7.2...v3.7.3)

**Implemented enhancements:**

- Provide clearer values/deprecation notices for `cleanup_interval_jobs` and `cleanup_interval_seconds`; setting `0` disables, `-1` always [\#776](https://github.com/bensheldon/good_job/pull/776) ([zarqman](https://github.com/zarqman))

**Closed issues:**

- Demo page shows Application Error [\#787](https://github.com/bensheldon/good_job/issues/787)
- Configuration for PG Schema Other Than Public [\#774](https://github.com/bensheldon/good_job/issues/774)

**Merged pull requests:**

- Avoid including unnecessary pg\_locks references when counting jobs [\#789](https://github.com/bensheldon/good_job/pull/789) ([mkrfowler](https://github.com/mkrfowler))
- Add net-\* gems to Gemfile for Heroku [\#788](https://github.com/bensheldon/good_job/pull/788) ([bensheldon](https://github.com/bensheldon))
- Add Ruby 3.2 to test matrix [\#786](https://github.com/bensheldon/good_job/pull/786) ([bensheldon](https://github.com/bensheldon))
- Bump rubocop from 1.41.1 to 1.42.0 [\#781](https://github.com/bensheldon/good_job/pull/781) ([dependabot[bot]](https://github.com/apps/dependabot))
- Bump rubocop from 1.40.0 to 1.41.1 [\#779](https://github.com/bensheldon/good_job/pull/779) ([dependabot[bot]](https://github.com/apps/dependabot))
- Bump rubocop-performance from 1.15.1 to 1.15.2 [\#777](https://github.com/bensheldon/good_job/pull/777) ([dependabot[bot]](https://github.com/apps/dependabot))
- Bump rubocop-rspec from 2.15.0 to 2.16.0 [\#775](https://github.com/bensheldon/good_job/pull/775) ([dependabot[bot]](https://github.com/apps/dependabot))
- Bump rails-html-sanitizer from 1.4.3 to 1.4.4 [\#773](https://github.com/bensheldon/good_job/pull/773) ([dependabot[bot]](https://github.com/apps/dependabot))
- Bump loofah from 2.19.0 to 2.19.1 [\#772](https://github.com/bensheldon/good_job/pull/772) ([dependabot[bot]](https://github.com/apps/dependabot))

## [v3.7.2](https://github.com/bensheldon/good_job/tree/v3.7.2) (2022-12-12)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.7.1...v3.7.2)

**Fixed bugs:**

- Ignore ActiveJob::DeserializationError when discarding jobs [\#771](https://github.com/bensheldon/good_job/pull/771) ([nickcampbell18](https://github.com/nickcampbell18))

**Closed issues:**

- Unable to discard failed jobs which crashed with `ActiveJob::DeserializationError` [\#770](https://github.com/bensheldon/good_job/issues/770)

**Merged pull requests:**

- Bump rubocop from 1.39.0 to 1.40.0 [\#769](https://github.com/bensheldon/good_job/pull/769) ([dependabot[bot]](https://github.com/apps/dependabot))

## [v3.7.1](https://github.com/bensheldon/good_job/tree/v3.7.1) (2022-12-12)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.7.0...v3.7.1)

**Fixed bugs:**

- Fix disabling of interval cleanups [\#768](https://github.com/bensheldon/good_job/pull/768) ([zarqman](https://github.com/zarqman))

## [v3.7.0](https://github.com/bensheldon/good_job/tree/v3.7.0) (2022-12-10)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.6.2...v3.7.0)

**Implemented enhancements:**

- Add GoodJob version to start banner [\#766](https://github.com/bensheldon/good_job/pull/766) ([zarqman](https://github.com/zarqman))

**Fixed bugs:**

- Always preserve job records created by cron [\#767](https://github.com/bensheldon/good_job/pull/767) ([bensheldon](https://github.com/bensheldon))

**Merged pull requests:**

- Bump nokogiri from 1.13.9 to 1.13.10 [\#765](https://github.com/bensheldon/good_job/pull/765) ([dependabot[bot]](https://github.com/apps/dependabot))
- Remove JRuby 9.2 from testing matrix [\#763](https://github.com/bensheldon/good_job/pull/763) ([bensheldon](https://github.com/bensheldon))
- Bump actions/cache from 1 to 3 [\#762](https://github.com/bensheldon/good_job/pull/762) ([dependabot[bot]](https://github.com/apps/dependabot))
- Bump actions/upload-artifact from 2 to 3 [\#761](https://github.com/bensheldon/good_job/pull/761) ([dependabot[bot]](https://github.com/apps/dependabot))
- Bump actions/add-to-project from 0.3.0 to 0.4.0 [\#759](https://github.com/bensheldon/good_job/pull/759) ([dependabot[bot]](https://github.com/apps/dependabot))
- Bump alex-page/github-project-automation-plus from 9a05133789dbc96bd560ec84223a0ad49253d342 to 1f8873e97e3c8f58161a323b7c568c1f623a1c4d [\#758](https://github.com/bensheldon/good_job/pull/758) ([dependabot[bot]](https://github.com/apps/dependabot))
- Bump selenium-webdriver from 4.6.1 to 4.7.1 [\#757](https://github.com/bensheldon/good_job/pull/757) ([dependabot[bot]](https://github.com/apps/dependabot))
- Add explicit ruby version in Gemfile for Heroku demo [\#755](https://github.com/bensheldon/good_job/pull/755) ([bensheldon](https://github.com/bensheldon))

## [v3.6.2](https://github.com/bensheldon/good_job/tree/v3.6.2) (2022-12-04)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.6.1...v3.6.2)

**Fixed bugs:**

- Redirect to Jobs path after destroy [\#754](https://github.com/bensheldon/good_job/pull/754) ([BilalBudhani](https://github.com/BilalBudhani))

**Merged pull requests:**

- Bump pg from 1.4.4 to 1.4.5 [\#751](https://github.com/bensheldon/good_job/pull/751) ([dependabot[bot]](https://github.com/apps/dependabot))

## [v3.6.1](https://github.com/bensheldon/good_job/tree/v3.6.1) (2022-11-30)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.6.0...v3.6.1)

**Implemented enhancements:**

- add UA to i18n [\#747](https://github.com/bensheldon/good_job/pull/747) ([yshmarov](https://github.com/yshmarov))

**Closed issues:**

- Minor Cron Concurrency Clarification [\#743](https://github.com/bensheldon/good_job/issues/743)
- Materialized CTE performance bottleneck [\#720](https://github.com/bensheldon/good_job/issues/720)
- Calculating database connections [\#669](https://github.com/bensheldon/good_job/issues/669)

**Merged pull requests:**

- Update gems, rubocop, and development ruby \(v2.7.7\) [\#752](https://github.com/bensheldon/good_job/pull/752) ([bensheldon](https://github.com/bensheldon))
- Add chrome/chromdriver to Codespace configuration [\#746](https://github.com/bensheldon/good_job/pull/746) ([bensheldon](https://github.com/bensheldon))
- Add GitHub Codespaces / devcontainer configuration [\#745](https://github.com/bensheldon/good_job/pull/745) ([bensheldon](https://github.com/bensheldon))
- Bump fugit from 1.7.1 to 1.7.2 [\#742](https://github.com/bensheldon/good_job/pull/742) ([dependabot[bot]](https://github.com/apps/dependabot))
- Bundle update and Rubocop lints [\#740](https://github.com/bensheldon/good_job/pull/740) ([bensheldon](https://github.com/bensheldon))
- Add dependabot to update development dependencies [\#734](https://github.com/bensheldon/good_job/pull/734) ([bensheldon](https://github.com/bensheldon))
- Fix misspellings and grammar in README [\#732](https://github.com/bensheldon/good_job/pull/732) ([aisayo](https://github.com/aisayo))

## [v3.6.0](https://github.com/bensheldon/good_job/tree/v3.6.0) (2022-10-22)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.5.1...v3.6.0)

**Implemented enhancements:**

- Add configurable limit \(`queue_select_limit`\) when querying candidate jobs [\#727](https://github.com/bensheldon/good_job/pull/727) ([mitchellhenke](https://github.com/mitchellhenke))
- Add index to `good_jobs` to improve querying candidate jobs [\#726](https://github.com/bensheldon/good_job/pull/726) ([mitchellhenke](https://github.com/mitchellhenke))

**Fixed bugs:**

- 3.4.8 release breaks job retrying [\#728](https://github.com/bensheldon/good_job/issues/728)
- Redo: When not preserving job records, ensure all prior executions are deleted after successful retry [\#730](https://github.com/bensheldon/good_job/pull/730) ([bensheldon](https://github.com/bensheldon))

## [v3.5.1](https://github.com/bensheldon/good_job/tree/v3.5.1) (2022-10-20)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.5.0...v3.5.1)

**Fixed bugs:**

- Revert "When not preserving job records, ensure all prior executions are deleted after successful retry" because some retry patterns stopped working [\#729](https://github.com/bensheldon/good_job/pull/729) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- Assert cancelled jobs [\#724](https://github.com/bensheldon/good_job/issues/724)

## [v3.5.0](https://github.com/bensheldon/good_job/tree/v3.5.0) (2022-10-18)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.4.8...v3.5.0)

**Merged pull requests:**

- Fix flaky test for `Scheduler#cleanup_interval_jobs` [\#723](https://github.com/bensheldon/good_job/pull/723) ([bensheldon](https://github.com/bensheldon))
- Pin development Puma version until Capybara is compatible [\#722](https://github.com/bensheldon/good_job/pull/722) ([bensheldon](https://github.com/bensheldon))
- Rename Job status of `finished` to `succeeded`; `finished` now means either `succeeded` or `discarded` [\#721](https://github.com/bensheldon/good_job/pull/721) ([bensheldon](https://github.com/bensheldon))

## [v3.4.8](https://github.com/bensheldon/good_job/tree/v3.4.8) (2022-10-11)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.4.7...v3.4.8)

**Fixed bugs:**

- When not preserving job records, ensure all prior executions are deleted after successful retry [\#719](https://github.com/bensheldon/good_job/pull/719) ([ylansegal](https://github.com/ylansegal))

## [v3.4.7](https://github.com/bensheldon/good_job/tree/v3.4.7) (2022-10-06)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.4.6...v3.4.7)

**Closed issues:**

- Changing assets path? [\#717](https://github.com/bensheldon/good_job/issues/717)
- Support Sequel [\#713](https://github.com/bensheldon/good_job/issues/713)

**Merged pull requests:**

- Update bootstrap to latest 5.2.2 [\#718](https://github.com/bensheldon/good_job/pull/718) ([morgoth](https://github.com/morgoth))

## [v3.4.6](https://github.com/bensheldon/good_job/tree/v3.4.6) (2022-09-26)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.4.5...v3.4.6)

**Fixed bugs:**

- Support SemanticLogger logging with improve stdout logic and tagged logs [\#715](https://github.com/bensheldon/good_job/pull/715) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- Unable to Replace GoodJob's Logger [\#667](https://github.com/bensheldon/good_job/issues/667)
- Jobs never get run... [\#516](https://github.com/bensheldon/good_job/issues/516)

## [v3.4.5](https://github.com/bensheldon/good_job/tree/v3.4.5) (2022-09-12)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.4.4...v3.4.5)

**Fixed bugs:**

- Dashboard: Remove translation\_missing red highlighting; remove number\_to\_human.hundreds; add form labels [\#708](https://github.com/bensheldon/good_job/pull/708) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- pg\_xact No Such File error in logs [\#709](https://github.com/bensheldon/good_job/issues/709)
- Broken upgrade to v3. [\#703](https://github.com/bensheldon/good_job/issues/703)

**Merged pull requests:**

- Sentry integration Docs [\#711](https://github.com/bensheldon/good_job/pull/711) ([remy727](https://github.com/remy727))
- Add an `Execution` `after_perform_unlocked` callback [\#706](https://github.com/bensheldon/good_job/pull/706) ([bensheldon](https://github.com/bensheldon))

## [v3.4.4](https://github.com/bensheldon/good_job/tree/v3.4.4) (2022-08-20)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.4.3...v3.4.4)

**Fixed bugs:**

- Keep locale param when submitting dashboard filter [\#707](https://github.com/bensheldon/good_job/pull/707) ([aki77](https://github.com/aki77))

**Merged pull requests:**

- Fix document [\#704](https://github.com/bensheldon/good_job/pull/704) ([aki77](https://github.com/aki77))
- Describe pessimistic usecases [\#702](https://github.com/bensheldon/good_job/pull/702) ([shouichi](https://github.com/shouichi))

## [v3.4.3](https://github.com/bensheldon/good_job/tree/v3.4.3) (2022-08-15)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.4.2...v3.4.3)

**Closed issues:**

- How to run multiple workers? [\#699](https://github.com/bensheldon/good_job/issues/699)
- Getting Postgres Errors on killing development server after setting up Goodjob [\#692](https://github.com/bensheldon/good_job/issues/692)

**Merged pull requests:**

- Fix Project v2 GitHub Actions [\#701](https://github.com/bensheldon/good_job/pull/701) ([bensheldon](https://github.com/bensheldon))
- Remove development dependencies: memory\_profiler, rbtrace, sigdump [\#700](https://github.com/bensheldon/good_job/pull/700) ([bensheldon](https://github.com/bensheldon))
- Allow concurrency limits to be configured dynamically with lambda/proc [\#696](https://github.com/bensheldon/good_job/pull/696) ([baka-san](https://github.com/baka-san))
- Add additional details to Concurrency Control explanation [\#695](https://github.com/bensheldon/good_job/pull/695) ([bensheldon](https://github.com/bensheldon))

## [v3.4.2](https://github.com/bensheldon/good_job/tree/v3.4.2) (2022-08-13)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.4.1...v3.4.2)

**Fixed bugs:**

- Jobs enqueued via dashboard ignores app default\_locale [\#697](https://github.com/bensheldon/good_job/issues/697)
- Enqueues Cron jobs with I18n default locale [\#698](https://github.com/bensheldon/good_job/pull/698) ([esasse](https://github.com/esasse))
- Include better exception log messages, including class and backtrace [\#693](https://github.com/bensheldon/good_job/pull/693) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- Do we need to implement concurrency with scheduled cron jobs? [\#690](https://github.com/bensheldon/good_job/issues/690)
- Uninitialized constant GoodJob::JobsController [\#674](https://github.com/bensheldon/good_job/issues/674)
- ActiveRecord::StatementInvalid: PG::ConnectionBad: PQsocket\(\) can't get socket descriptor every 30 minutes aprox. [\#579](https://github.com/bensheldon/good_job/issues/579)
- Handle assets in dashboard when rails app is behind proxy path [\#424](https://github.com/bensheldon/good_job/issues/424)

## [v3.4.1](https://github.com/bensheldon/good_job/tree/v3.4.1) (2022-08-06)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.4.0...v3.4.1)

**Closed issues:**

- Add `cron_enabled` to Process state [\#673](https://github.com/bensheldon/good_job/issues/673)
- Good job is using a lot of memory / ram [\#613](https://github.com/bensheldon/good_job/issues/613)

**Merged pull requests:**

- Only report Notifier connection errors once after they happen 3 consecutive times [\#689](https://github.com/bensheldon/good_job/pull/689) ([bensheldon](https://github.com/bensheldon))

## [v3.4.0](https://github.com/bensheldon/good_job/tree/v3.4.0) (2022-08-05)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.3.3...v3.4.0)

**Implemented enhancements:**

- Add cron\_enabled attribute to good\_job and pass it to process current state [\#675](https://github.com/bensheldon/good_job/pull/675) ([saksham-jain](https://github.com/saksham-jain))
- Reverse Dashboard Filter Hierarchy to be: queues+jobs then state [\#666](https://github.com/bensheldon/good_job/pull/666) ([bensheldon](https://github.com/bensheldon))
- Allow cron entries to be temporarily disabled and re-enabled through the Dashboard [\#649](https://github.com/bensheldon/good_job/pull/649) ([sasha-id](https://github.com/sasha-id))
- Add Configuration.total\_estimated\_threads to report number of threads consumed by GoodJob [\#645](https://github.com/bensheldon/good_job/pull/645) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- Cron Schedule jobs add disable action [\#540](https://github.com/bensheldon/good_job/issues/540)

**Merged pull requests:**

- Removed text that implied an existing feature had not been finished [\#688](https://github.com/bensheldon/good_job/pull/688) ([pgvsalamander](https://github.com/pgvsalamander))

## [v3.3.3](https://github.com/bensheldon/good_job/tree/v3.3.3) (2022-08-02)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.3.2...v3.3.3)

**Fixed bugs:**

- Detect usage of `puma` CLI for async mode [\#686](https://github.com/bensheldon/good_job/pull/686) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- Async not working Rails 7 with puma CLI [\#685](https://github.com/bensheldon/good_job/issues/685)

## [v3.3.2](https://github.com/bensheldon/good_job/tree/v3.3.2) (2022-07-27)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.3.1...v3.3.2)

**Fixed bugs:**

- Defer setting Adapter's execution mode until Rails initializes [\#683](https://github.com/bensheldon/good_job/pull/683) ([bensheldon](https://github.com/bensheldon))

## [v3.3.1](https://github.com/bensheldon/good_job/tree/v3.3.1) (2022-07-26)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.3.0...v3.3.1)

**Implemented enhancements:**

- Show basename of proctitle [\#679](https://github.com/bensheldon/good_job/pull/679) ([bkeepers](https://github.com/bkeepers))

**Fixed bugs:**

- Only count \_active\_ processes in the Navbar [\#680](https://github.com/bensheldon/good_job/pull/680) ([bensheldon](https://github.com/bensheldon))
- Remove Zeitwerk and use explicit requires to be more like an engine [\#677](https://github.com/bensheldon/good_job/pull/677) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- Dashboard UI Invalid count of running process  [\#678](https://github.com/bensheldon/good_job/issues/678)

**Merged pull requests:**

- Lock to dotenv 2.7.x for Ruby 2.5 compatibility [\#682](https://github.com/bensheldon/good_job/pull/682) ([bensheldon](https://github.com/bensheldon))
- Create global GoodJob.configuration object [\#681](https://github.com/bensheldon/good_job/pull/681) ([bensheldon](https://github.com/bensheldon))

## [v3.3.0](https://github.com/bensheldon/good_job/tree/v3.3.0) (2022-07-24)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.2.0...v3.3.0)

**Implemented enhancements:**

- Dashboard: Update cron and processes to match jobs listing [\#676](https://github.com/bensheldon/good_job/pull/676) ([bkeepers](https://github.com/bkeepers))
- Dashboard: improvements to jobs index and show pages [\#672](https://github.com/bensheldon/good_job/pull/672) ([bkeepers](https://github.com/bkeepers))

**Fixed bugs:**

- Replace "timestamp" column-type in migrations with "datetime" [\#671](https://github.com/bensheldon/good_job/pull/671) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- Readme should consistently encourage usage of `config.good_job....` instead of `GoodJob.` configuration [\#628](https://github.com/bensheldon/good_job/issues/628)
- Improve the "Gem development" section of README? [\#551](https://github.com/bensheldon/good_job/issues/551)
- Simplify Rails initialization to only be a mountable Engine [\#543](https://github.com/bensheldon/good_job/issues/543)

**Merged pull requests:**

- Improve Readme description of v3 job preservation defaults [\#670](https://github.com/bensheldon/good_job/pull/670) ([bensheldon](https://github.com/bensheldon))
- update Gemfile.lock to latest dependencies [\#647](https://github.com/bensheldon/good_job/pull/647) ([jrochkind](https://github.com/jrochkind))

## [v3.2.0](https://github.com/bensheldon/good_job/tree/v3.2.0) (2022-07-12)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.1.0...v3.2.0)

**Implemented enhancements:**

- Ordered queue handling by workers [\#665](https://github.com/bensheldon/good_job/pull/665) ([jrochkind](https://github.com/jrochkind))

## [v3.1.0](https://github.com/bensheldon/good_job/tree/v3.1.0) (2022-07-11)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.0.2...v3.1.0)

**Implemented enhancements:**

- Show job/cron/process counts in the Navbar [\#663](https://github.com/bensheldon/good_job/pull/663) ([bensheldon](https://github.com/bensheldon))
- Improve Dashboard display of parameters \(CronEntry kwargs; Process configuration; Job and Execution database values\) [\#662](https://github.com/bensheldon/good_job/pull/662) ([bensheldon](https://github.com/bensheldon))
- Dequeing should be first-in first-out [\#651](https://github.com/bensheldon/good_job/pull/651) ([jrochkind](https://github.com/jrochkind))

**Fixed bugs:**

- Don't delegate `GoodJob::Job#status` to executions to avoid race condition [\#661](https://github.com/bensheldon/good_job/pull/661) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- How to suppress repetitive logs in development? [\#658](https://github.com/bensheldon/good_job/issues/658)
- 500 Internal Server Error Exception in web interface trying to view running jobs [\#656](https://github.com/bensheldon/good_job/issues/656)
- Cron schedule page in dashboard not showing kwargs [\#608](https://github.com/bensheldon/good_job/issues/608)
- Paralelism x database connections [\#569](https://github.com/bensheldon/good_job/issues/569)

## [v3.0.2](https://github.com/bensheldon/good_job/tree/v3.0.2) (2022-07-10)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.0.1...v3.0.2)

**Fixed bugs:**

- Copy forward concurrency key value when retrying a job, rather than regenerating it [\#622](https://github.com/bensheldon/good_job/issues/622)
- All concurrency controlled jobs throw exceptions and are rescheduled if they are called using perform\_now [\#591](https://github.com/bensheldon/good_job/issues/591)

**Closed issues:**

- Queue config not respecting limits [\#659](https://github.com/bensheldon/good_job/issues/659)
- UI engine does not work without explicit require [\#646](https://github.com/bensheldon/good_job/issues/646)
- Should `:inline` adapter mode retry jobs? [\#611](https://github.com/bensheldon/good_job/issues/611)
- Error Job Not Preserved  [\#594](https://github.com/bensheldon/good_job/issues/594)
- Release GoodJob 3.0 [\#507](https://github.com/bensheldon/good_job/issues/507)
- Improve security of Gem releases [\#422](https://github.com/bensheldon/good_job/issues/422)

**Merged pull requests:**

- Preserve initial concurrency key when retrying jobs [\#657](https://github.com/bensheldon/good_job/pull/657) ([bensheldon](https://github.com/bensheldon))
- Add Dashboard troubleshooting note to explicitly require the engine [\#654](https://github.com/bensheldon/good_job/pull/654) ([bensheldon](https://github.com/bensheldon))
- Removes wrong parentheses [\#653](https://github.com/bensheldon/good_job/pull/653) ([esasse](https://github.com/esasse))

## [v3.0.1](https://github.com/bensheldon/good_job/tree/v3.0.1) (2022-07-02)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v3.0.0...v3.0.1)

**Fixed bugs:**

- Fix `GoodJob.cleanup_preserved_jobs` to use `delete_all` instead of `destroy_all` [\#652](https://github.com/bensheldon/good_job/pull/652) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- ERROR:  relation "good\_jobs" does not exist at character 454 [\#308](https://github.com/bensheldon/good_job/issues/308)

**Merged pull requests:**

- Create codeql-analysis.yml [\#648](https://github.com/bensheldon/good_job/pull/648) ([bensheldon](https://github.com/bensheldon))

## [v3.0.0](https://github.com/bensheldon/good_job/tree/v3.0.0) (2022-06-26)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v2.99.0...v3.0.0)

**Implemented enhancements:**

- By default, preserve job records and automatically them clean up [\#545](https://github.com/bensheldon/good_job/pull/545) ([bensheldon](https://github.com/bensheldon))

**Merged pull requests:**

- Update tests to reflect default of `GoodJob.preserve_job_records = true`; update appraisal Gemfiles too [\#643](https://github.com/bensheldon/good_job/pull/643) ([bensheldon](https://github.com/bensheldon))
- Remove database migration shims and old migrations [\#642](https://github.com/bensheldon/good_job/pull/642) ([bensheldon](https://github.com/bensheldon))
- Remove support for EOL Rails 5.2 [\#637](https://github.com/bensheldon/good_job/pull/637) ([bensheldon](https://github.com/bensheldon))
- Remove/rename deprecated behavior and constants for GoodJob v3  [\#633](https://github.com/bensheldon/good_job/pull/633) ([bensheldon](https://github.com/bensheldon))

## [v2.99.0](https://github.com/bensheldon/good_job/tree/v2.99.0) (2022-06-26)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v2.17.1...v2.99.0)

**Closed issues:**

- How to accomplish user controlled recurring jobs? [\#640](https://github.com/bensheldon/good_job/issues/640)
- "uninitialized constant GoodJob::Execution" in development env [\#634](https://github.com/bensheldon/good_job/issues/634)

**Merged pull requests:**

- Create upgrade instructions for v2.99 -\> v3.0.0 [\#641](https://github.com/bensheldon/good_job/pull/641) ([bensheldon](https://github.com/bensheldon))
- Update development dependencies; delete Gemfile.lock in CI to avoid Ruby version dependency mismatches [\#639](https://github.com/bensheldon/good_job/pull/639) ([bensheldon](https://github.com/bensheldon))
- Put more model files in `lib/models` and align specs too [\#638](https://github.com/bensheldon/good_job/pull/638) ([bensheldon](https://github.com/bensheldon))
- Generate sha256 checksums on gem release too [\#636](https://github.com/bensheldon/good_job/pull/636) ([bensheldon](https://github.com/bensheldon))

## [v2.17.1](https://github.com/bensheldon/good_job/tree/v2.17.1) (2022-06-24)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v2.17.0...v2.17.1)

**Fixed bugs:**

- Move models out of `app` into `lib/models` [\#635](https://github.com/bensheldon/good_job/pull/635) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- dashboard "delete all" does not work [\#630](https://github.com/bensheldon/good_job/issues/630)
- Concurrency controlled jobs cause infinite loops when perform\_limit is exceeded in test environments [\#609](https://github.com/bensheldon/good_job/issues/609)

**Merged pull requests:**

- Better isolate test environment: run server integration tests on port 3009 with custom pidfile; scope advisory lock counts to test database [\#632](https://github.com/bensheldon/good_job/pull/632) ([bensheldon](https://github.com/bensheldon))

## [v2.17.0](https://github.com/bensheldon/good_job/tree/v2.17.0) (2022-06-23)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v2.16.1...v2.17.0)

**Merged pull requests:**

- Remove nonexistant `engine/lib` from $LOAD\_PATH [\#629](https://github.com/bensheldon/good_job/pull/629) ([bensheldon](https://github.com/bensheldon))
- Mention in README that dashboard can't see completed jobs unless they are preserved [\#627](https://github.com/bensheldon/good_job/pull/627) ([jrochkind](https://github.com/jrochkind))
- Clarify README on default in development [\#623](https://github.com/bensheldon/good_job/pull/623) ([jrochkind](https://github.com/jrochkind))
- Convert GoodJob into a single mountable engine \(instead of a plugin plus optional engine\) [\#554](https://github.com/bensheldon/good_job/pull/554) ([bensheldon](https://github.com/bensheldon))

## [v2.16.1](https://github.com/bensheldon/good_job/tree/v2.16.1) (2022-06-18)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v2.16.0...v2.16.1)

**Fixed bugs:**

- Fix `:inline` mode with future behavior to run unscheduled jobs immediately [\#620](https://github.com/bensheldon/good_job/pull/620) ([bensheldon](https://github.com/bensheldon))

**Merged pull requests:**

- Version check `Zeitwerk::Loader.new(warn_on_extra_files: false)` flag [\#619](https://github.com/bensheldon/good_job/pull/619) ([bensheldon](https://github.com/bensheldon))

## [v2.16.0](https://github.com/bensheldon/good_job/tree/v2.16.0) (2022-06-17)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v2.15.2...v2.16.0)

**Implemented enhancements:**

- Allow inline executor to respect scheduled jobs; deprecate old behavior. Add `GoodJob.perform_inline` [\#615](https://github.com/bensheldon/good_job/pull/615) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- Upgrading zeitwerk to 2.6.0 causes a warning related to good\_job [\#616](https://github.com/bensheldon/good_job/issues/616)

## [v2.15.2](https://github.com/bensheldon/good_job/tree/v2.15.2) (2022-06-17)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v2.15.1...v2.15.2)

**Closed issues:**

- ActiveRecord::StatementInvalid PG::ProgramLimitExceeded:  ERROR: index row size 3296 exceeds btree version 4 maximum 2704 for index [\#612](https://github.com/bensheldon/good_job/issues/612)

**Merged pull requests:**

- Zeitwerk ignore `lib/active_job` [\#617](https://github.com/bensheldon/good_job/pull/617) ([bensheldon](https://github.com/bensheldon))

## [v2.15.1](https://github.com/bensheldon/good_job/tree/v2.15.1) (2022-05-24)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v2.15.0...v2.15.1)

**Closed issues:**

- dashboard/engine – i18n: Wrong translation scope [\#605](https://github.com/bensheldon/good_job/issues/605)
- Concurrency not properly putting jobs in the queue [\#603](https://github.com/bensheldon/good_job/issues/603)
- Some dashboard actions have a routing error [\#602](https://github.com/bensheldon/good_job/issues/602)

**Merged pull requests:**

- Fix/i18n status scopes [\#607](https://github.com/bensheldon/good_job/pull/607) ([Jay-Schneider](https://github.com/Jay-Schneider))
- Make "Live Polling" ToC entry clickable [\#606](https://github.com/bensheldon/good_job/pull/606) ([aried3r](https://github.com/aried3r))
- Update readme explaining Concurrency implementation and how to integrate Dashboard with API-only Rails apps [\#604](https://github.com/bensheldon/good_job/pull/604) ([bensheldon](https://github.com/bensheldon))

## [v2.15.0](https://github.com/bensheldon/good_job/tree/v2.15.0) (2022-05-18)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v2.14.4...v2.15.0)

**Implemented enhancements:**

- Remove ability to destroy individual Executions from Dashboard; rename "Toggle" to "Inspect" everywhere [\#601](https://github.com/bensheldon/good_job/pull/601) ([bensheldon](https://github.com/bensheldon))
- Adds the ability to delete jobs on the dashboard; add `cleanup_discarded_jobs` option to retain discarded jobs during cleanup [\#597](https://github.com/bensheldon/good_job/pull/597) ([TAGraves](https://github.com/TAGraves))
- Dashboard: show more details about jobs [\#575](https://github.com/bensheldon/good_job/pull/575) ([bkeepers](https://github.com/bkeepers))

**Closed issues:**

- Show status on jobs\#show page [\#547](https://github.com/bensheldon/good_job/issues/547)

**Merged pull requests:**

- Disable ActiveRecord Connection Reaper in test [\#600](https://github.com/bensheldon/good_job/pull/600) ([bensheldon](https://github.com/bensheldon))
- Update README dashboard screenshot [\#599](https://github.com/bensheldon/good_job/pull/599) ([aried3r](https://github.com/aried3r))

## [v2.14.4](https://github.com/bensheldon/good_job/tree/v2.14.4) (2022-05-15)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v2.14.3...v2.14.4)

**Fixed bugs:**

- Fix Concurrency extension to not break `perform_now` [\#593](https://github.com/bensheldon/good_job/pull/593) ([bensheldon](https://github.com/bensheldon))

## [v2.14.3](https://github.com/bensheldon/good_job/tree/v2.14.3) (2022-05-13)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v2.14.2...v2.14.3)

**Fixed bugs:**

- Bind probe server to all interfaces [\#598](https://github.com/bensheldon/good_job/pull/598) ([Timmitry](https://github.com/Timmitry))

**Closed issues:**

- NoMethodError: undefined method `current\_tags' for nil:NilClass  [\#596](https://github.com/bensheldon/good_job/issues/596)
- When running rspec, I get: current transaction is aborted, commands ignored until end of transaction block [\#595](https://github.com/bensheldon/good_job/issues/595)
- CLI healtheck only listening on localhost, not reachable for Kubernetes [\#592](https://github.com/bensheldon/good_job/issues/592)

**Merged pull requests:**

- Improve development instructions and tooling \(rename bin/rails, add bin/appraisal\) [\#590](https://github.com/bensheldon/good_job/pull/590) ([bensheldon](https://github.com/bensheldon))
- Replace test Instrumentation mocking with temporary subscriptions [\#589](https://github.com/bensheldon/good_job/pull/589) ([bensheldon](https://github.com/bensheldon))
- Update to development to Ruby 3.0.4, include `matrix` gem in development Gemfile [\#588](https://github.com/bensheldon/good_job/pull/588) ([bensheldon](https://github.com/bensheldon))

## [v2.14.2](https://github.com/bensheldon/good_job/tree/v2.14.2) (2022-05-01)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v2.14.1...v2.14.2)

**Fixed bugs:**

- Reintroduce fixed "Apply to all" mass action [\#586](https://github.com/bensheldon/good_job/pull/586) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- how to get the number of tasks in the queue and the size of the queue? [\#564](https://github.com/bensheldon/good_job/issues/564)
- GoodJob tells me to upgrade but migrations fail [\#544](https://github.com/bensheldon/good_job/issues/544)

**Merged pull requests:**

- Update development dependencies [\#584](https://github.com/bensheldon/good_job/pull/584) ([bensheldon](https://github.com/bensheldon))
- Refactor Dashboard Live Poll javascript [\#582](https://github.com/bensheldon/good_job/pull/582) ([bensheldon](https://github.com/bensheldon))

## [v2.14.1](https://github.com/bensheldon/good_job/tree/v2.14.1) (2022-04-26)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v2.14.0...v2.14.1)

**Fixed bugs:**

- Temporarily disable Mass Action "Apply to all" because the action is badly scoped [\#583](https://github.com/bensheldon/good_job/pull/583) ([bensheldon](https://github.com/bensheldon))

## [v2.14.0](https://github.com/bensheldon/good_job/tree/v2.14.0) (2022-04-26)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v2.13.2...v2.14.0)

**Implemented enhancements:**

- Add mass update operations for jobs to Dashboard [\#578](https://github.com/bensheldon/good_job/pull/578) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- Allow "mass"-actions through Dashboard \(e.g. retry all\) [\#446](https://github.com/bensheldon/good_job/issues/446)

**Merged pull requests:**

- Track down incompatibility/race condition between JRuby and RSpec mocks in tests [\#581](https://github.com/bensheldon/good_job/pull/581) ([bensheldon](https://github.com/bensheldon))

## [v2.13.2](https://github.com/bensheldon/good_job/tree/v2.13.2) (2022-04-25)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v2.13.1...v2.13.2)

**Fixed bugs:**

- Namespaces assets per Rails docs [\#580](https://github.com/bensheldon/good_job/pull/580) ([kylekthompson](https://github.com/kylekthompson))

## [v2.13.1](https://github.com/bensheldon/good_job/tree/v2.13.1) (2022-04-22)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v2.13.0...v2.13.1)

**Implemented enhancements:**

- Dashboard: Use toasts to show notices and alerts [\#577](https://github.com/bensheldon/good_job/pull/577) ([bkeepers](https://github.com/bkeepers))
- Remove executions from the dashboard [\#576](https://github.com/bensheldon/good_job/pull/576) ([bkeepers](https://github.com/bkeepers))

**Fixed bugs:**

- `ActionMailer::MailDeliveryJob` executing twice [\#329](https://github.com/bensheldon/good_job/issues/329)

**Closed issues:**

- Possible encryption feature? [\#561](https://github.com/bensheldon/good_job/issues/561)
- Inconsistencies in configuration settings [\#380](https://github.com/bensheldon/good_job/issues/380)
- Lockable should accept an explicit keys on class methods too [\#341](https://github.com/bensheldon/good_job/issues/341)
- Run Scheduler\#cache\_warm on global thread pool instead of Scheduler's thread pool [\#286](https://github.com/bensheldon/good_job/issues/286)

**Merged pull requests:**

- Use javascript importmaps for Dashboard [\#574](https://github.com/bensheldon/good_job/pull/574) ([bensheldon](https://github.com/bensheldon))

## [v2.13.0](https://github.com/bensheldon/good_job/tree/v2.13.0) (2022-04-19)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v2.12.2...v2.13.0)

**Implemented enhancements:**

- Dashboard UI updates: sticky navbar, statuses as tabs [\#572](https://github.com/bensheldon/good_job/pull/572) ([bkeepers](https://github.com/bkeepers))

**Closed issues:**

- Internationalize/I18n the Dashboard Engine [\#408](https://github.com/bensheldon/good_job/issues/408)

**Merged pull requests:**

- Fix Russian translation linting [\#573](https://github.com/bensheldon/good_job/pull/573) ([bensheldon](https://github.com/bensheldon))

## [v2.12.2](https://github.com/bensheldon/good_job/tree/v2.12.2) (2022-04-18)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v2.12.1...v2.12.2)

**Fixed bugs:**

- Un-deprecate Adapter's `execution_mode` argument [\#567](https://github.com/bensheldon/good_job/pull/567) ([bensheldon](https://github.com/bensheldon))

**Merged pull requests:**

- Dashboard: added NL translations [\#568](https://github.com/bensheldon/good_job/pull/568) ([eelcoj](https://github.com/eelcoj))

## [v2.12.1](https://github.com/bensheldon/good_job/tree/v2.12.1) (2022-04-18)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v2.12.0...v2.12.1)

**Implemented enhancements:**

- Dashboard: adding Russian translation [\#565](https://github.com/bensheldon/good_job/pull/565) ([skatkov](https://github.com/skatkov))

**Fixed bugs:**

- I18n::InvalidLocale \(:en is not a valid locale\): [\#549](https://github.com/bensheldon/good_job/issues/549)
- FIX: make 'default\_url\_options' method private [\#562](https://github.com/bensheldon/good_job/pull/562) ([friendlyantz](https://github.com/friendlyantz))

**Closed issues:**

- Exponential backoff by default? [\#563](https://github.com/bensheldon/good_job/issues/563)
- Finished without Error [\#552](https://github.com/bensheldon/good_job/issues/552)
- Track processes in the database [\#421](https://github.com/bensheldon/good_job/issues/421)

**Merged pull requests:**

- Remove WIP comments from dashboard [\#566](https://github.com/bensheldon/good_job/pull/566) ([bkeepers](https://github.com/bkeepers))
- Add i18n-tasks to linter, add binstub and move config to project root [\#559](https://github.com/bensheldon/good_job/pull/559) ([bensheldon](https://github.com/bensheldon))

## [v2.12.0](https://github.com/bensheldon/good_job/tree/v2.12.0) (2022-04-05)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v2.11.3...v2.12.0)

**Closed issues:**

- TimeTask timeouts are now ignored as these were not able to be implemented correctly [\#555](https://github.com/bensheldon/good_job/issues/555)
- undefined method `relative\_time' when include\_all\_helpers is false [\#550](https://github.com/bensheldon/good_job/issues/550)
- ArgumentError: wrong number of arguments \(given 1, expected 0; required keyword: schedule\) - cron [\#546](https://github.com/bensheldon/good_job/issues/546)

**Merged pull requests:**

- Deprecate Adapter configuration of job execution/cron [\#558](https://github.com/bensheldon/good_job/pull/558) ([bensheldon](https://github.com/bensheldon))
- Remove usage of Concurrent::TimerTask's timeout\_interval [\#557](https://github.com/bensheldon/good_job/pull/557) ([bensheldon](https://github.com/bensheldon))
- Include locale in html lang attribute [\#556](https://github.com/bensheldon/good_job/pull/556) ([bensheldon](https://github.com/bensheldon))
- Rename `GoodJob::BaseController` to `GoodJob::ApplicationController` [\#553](https://github.com/bensheldon/good_job/pull/553) ([shouichi](https://github.com/shouichi))
- Internationalize/I18n the Dashboard Engine [\#497](https://github.com/bensheldon/good_job/pull/497) ([JuanVqz](https://github.com/JuanVqz))

## [v2.11.3](https://github.com/bensheldon/good_job/tree/v2.11.3) (2022-03-30)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v2.11.2...v2.11.3)

**Fixed bugs:**

- Add explicit `kwargs:` key to cron configuration [\#548](https://github.com/bensheldon/good_job/pull/548) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- How to run clean up preserved jobs in cron? [\#541](https://github.com/bensheldon/good_job/issues/541)
- Erroring with "Too many open files" when good\_job tries reconnecting to database [\#530](https://github.com/bensheldon/good_job/issues/530)
- Can't cast Array [\#529](https://github.com/bensheldon/good_job/issues/529)

**Merged pull requests:**

- Use bundle add instead [\#542](https://github.com/bensheldon/good_job/pull/542) ([glaucocustodio](https://github.com/glaucocustodio))
- Update Readme to better explain queues, pools, threads, and database connections; update CLI to frontload queue option [\#539](https://github.com/bensheldon/good_job/pull/539) ([bensheldon](https://github.com/bensheldon))

## [v2.11.2](https://github.com/bensheldon/good_job/tree/v2.11.2) (2022-03-03)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v2.11.1...v2.11.2)

**Closed issues:**

- Best practices in deploying and monitoring a queue [\#523](https://github.com/bensheldon/good_job/issues/523)

**Merged pull requests:**

- Wrap Rspec before and example blocks with a mutex for JRuby [\#537](https://github.com/bensheldon/good_job/pull/537) ([bensheldon](https://github.com/bensheldon))
- Delegate `ActiveJobJob.table_name` to `Execution` and prevent it from being directly assignable [\#536](https://github.com/bensheldon/good_job/pull/536) ([bensheldon](https://github.com/bensheldon))
- Enable DB table names customization [\#535](https://github.com/bensheldon/good_job/pull/535) ([dimvic](https://github.com/dimvic))
- Added a chapter on how to prepare for production. [\#525](https://github.com/bensheldon/good_job/pull/525) ([stas](https://github.com/stas))

## [v2.11.1](https://github.com/bensheldon/good_job/tree/v2.11.1) (2022-03-01)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v2.11.0...v2.11.1)

**Fixed bugs:**

- Ensure sticky footer doesn't overlap paginater; fix polling interval to 30 seconds, not ms [\#534](https://github.com/bensheldon/good_job/pull/534) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- Pagination buttons hidden behind footer [\#533](https://github.com/bensheldon/good_job/issues/533)

## [v2.11.0](https://github.com/bensheldon/good_job/tree/v2.11.0) (2022-02-27)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v2.10.0...v2.11.0)

**Implemented enhancements:**

- Add support for live polling the dashboard [\#528](https://github.com/bensheldon/good_job/pull/528) ([danielwestendorf](https://github.com/danielwestendorf))

**Closed issues:**

- How do I ensure that a the same job can't run twice? \(unique job / avoid duplicates\) [\#531](https://github.com/bensheldon/good_job/issues/531)
- Bulk reschedule and discard jobs via dashboard [\#527](https://github.com/bensheldon/good_job/issues/527)
- "Live Poll" dashboard [\#526](https://github.com/bensheldon/good_job/issues/526)

## [v2.10.0](https://github.com/bensheldon/good_job/tree/v2.10.0) (2022-02-18)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v2.9.6...v2.10.0)

**Implemented enhancements:**

- Dashboard: update search filters and some small UI updates [\#518](https://github.com/bensheldon/good_job/pull/518) ([multiplegeorges](https://github.com/multiplegeorges))

**Closed issues:**

- Cron jobs not getting run [\#519](https://github.com/bensheldon/good_job/issues/519)
- Slow queries with many finished entries and concurrency control [\#514](https://github.com/bensheldon/good_job/issues/514)
- Make default retry behaviour safer [\#505](https://github.com/bensheldon/good_job/issues/505)

**Merged pull requests:**

- Fix Benchmark job throughput script   [\#522](https://github.com/bensheldon/good_job/pull/522) ([douglara](https://github.com/douglara))
- Update development Gemfile.lock [\#521](https://github.com/bensheldon/good_job/pull/521) ([bensheldon](https://github.com/bensheldon))
- Ensure Rails 6.0 is tested against Ruby 3.0; use Ruby 3.0 in demo environment [\#520](https://github.com/bensheldon/good_job/pull/520) ([bensheldon](https://github.com/bensheldon))
- Document safer setting for retry\_on\_unhandled\_error [\#517](https://github.com/bensheldon/good_job/pull/517) ([tamaloa](https://github.com/tamaloa))

## [v2.9.6](https://github.com/bensheldon/good_job/tree/v2.9.6) (2022-02-07)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v2.9.5...v2.9.6)

**Merged pull requests:**

- Limit query for allowed concurrent jobs to unfinished [\#515](https://github.com/bensheldon/good_job/pull/515) ([til](https://github.com/til))

## [v2.9.5](https://github.com/bensheldon/good_job/tree/v2.9.5) (2022-02-07)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v2.9.4...v2.9.5)

**Fixed bugs:**

- Transactions in "aborting" threads do not commit; causes GoodJob::Process record not destroyed on exit [\#489](https://github.com/bensheldon/good_job/issues/489)
- Deserialize ActiveJob arguments when manually retrying a job [\#513](https://github.com/bensheldon/good_job/pull/513) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- Concurrency key proc is missing `arguments` when retrying a discarded job. [\#512](https://github.com/bensheldon/good_job/issues/512)
- Cron Schedule not visible in dashboard [\#496](https://github.com/bensheldon/good_job/issues/496)

**Merged pull requests:**

- Rename methods to `advisory_lock_key` and allow it to take a block instead of `with_advisory_lock` [\#511](https://github.com/bensheldon/good_job/pull/511) ([bensheldon](https://github.com/bensheldon))
- README: Limiting concurrency - fetch symbol instead of string [\#510](https://github.com/bensheldon/good_job/pull/510) ([BenSto](https://github.com/BenSto))
- Add arbitrary lock on class level too [\#499](https://github.com/bensheldon/good_job/pull/499) ([pandwoter](https://github.com/pandwoter))

## [v2.9.4](https://github.com/bensheldon/good_job/tree/v2.9.4) (2022-01-31)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v2.9.3...v2.9.4)

**Fixed bugs:**

- Fix navbar toggler [\#506](https://github.com/bensheldon/good_job/pull/506) ([JuanVqz](https://github.com/JuanVqz))
- Guard LogSubscriber against tagged logger without a formatter [\#504](https://github.com/bensheldon/good_job/pull/504) ([bensheldon](https://github.com/bensheldon))
- Markdown lint fixes + Added missing responsive meta tag  [\#492](https://github.com/bensheldon/good_job/pull/492) ([zeevy](https://github.com/zeevy))

**Closed issues:**

- The navbar icon doesn't show the navbar menu when clicking it [\#503](https://github.com/bensheldon/good_job/issues/503)
- Not all loggers have a formatter [\#502](https://github.com/bensheldon/good_job/issues/502)
- Error logs from failed jobs used all storage space [\#495](https://github.com/bensheldon/good_job/issues/495)

**Merged pull requests:**

- Update Code of Conduct to Contributor Covenant 2.1 [\#501](https://github.com/bensheldon/good_job/pull/501) ([bensheldon](https://github.com/bensheldon))
- Test with Ruby 3.1 [\#498](https://github.com/bensheldon/good_job/pull/498) ([aried3r](https://github.com/aried3r))

## [v2.9.3](https://github.com/bensheldon/good_job/tree/v2.9.3) (2022-01-23)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v2.9.2...v2.9.3)

**Fixed bugs:**

- Use `*_url` route helpers for Dashboard assets to avoid being overridden by `config.asset_host` [\#493](https://github.com/bensheldon/good_job/pull/493) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- Assets not loaded when Rails is configured with a different hostname for assets [\#491](https://github.com/bensheldon/good_job/issues/491)

## [v2.9.2](https://github.com/bensheldon/good_job/tree/v2.9.2) (2022-01-19)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v2.9.1...v2.9.2)

**Fixed bugs:**

- Error on GJ admin UI search form [\#487](https://github.com/bensheldon/good_job/issues/487)
- Use `websearch_to_tsquery` or \(`plainto_tsquery` for Postgres \< v11\) for Dashboard search filter [\#488](https://github.com/bensheldon/good_job/pull/488) ([bensheldon](https://github.com/bensheldon))

**Merged pull requests:**

- Update README to illustrate using named arguments for the unique key. [\#486](https://github.com/bensheldon/good_job/pull/486) ([phallstrom](https://github.com/phallstrom))
- Add details about exactly where to require the engine. [\#485](https://github.com/bensheldon/good_job/pull/485) ([phallstrom](https://github.com/phallstrom))
- $ symbol gets copied when clicking on the copy button [\#484](https://github.com/bensheldon/good_job/pull/484) ([zeevy](https://github.com/zeevy))

## [v2.9.1](https://github.com/bensheldon/good_job/tree/v2.9.1) (2022-01-13)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v2.9.0...v2.9.1)

**Fixed bugs:**

- Start async adapters once `ActiveRecord` and `ActiveJob` have loaded, potentially before `Rails.application.initialized?` [\#483](https://github.com/bensheldon/good_job/pull/483) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- Graceful fallback to polling when LISTEN/NOTIFY isn't available [\#482](https://github.com/bensheldon/good_job/issues/482)
- Long running locks on latest good job [\#480](https://github.com/bensheldon/good_job/issues/480)

## [v2.9.0](https://github.com/bensheldon/good_job/tree/v2.9.0) (2022-01-09)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v2.8.1...v2.9.0)

**Implemented enhancements:**

- Add JRuby / JDBC support for LISTEN  [\#479](https://github.com/bensheldon/good_job/pull/479) ([bensheldon](https://github.com/bensheldon))

**Merged pull requests:**

- Remove demo CleanupJob in favor of using built-in cleanup intervals [\#478](https://github.com/bensheldon/good_job/pull/478) ([bensheldon](https://github.com/bensheldon))

## [v2.8.1](https://github.com/bensheldon/good_job/tree/v2.8.1) (2022-01-03)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v2.8.0...v2.8.1)

**Implemented enhancements:**

- Add indexes to `good_jobs.finished_at` and have `GoodJob.cleanup_preserved_jobs` delete all executions for a given job [\#477](https://github.com/bensheldon/good_job/pull/477) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- finished\_at should be indexed and clean up should clean up all of a job's executions [\#476](https://github.com/bensheldon/good_job/issues/476)

**Merged pull requests:**

- Update development Ruby \(2.7.5\) and Rails \(6.1.4.4\) versions [\#475](https://github.com/bensheldon/good_job/pull/475) ([bensheldon](https://github.com/bensheldon))
- Clean up server integration tests [\#474](https://github.com/bensheldon/good_job/pull/474) ([bensheldon](https://github.com/bensheldon))

## [v2.8.0](https://github.com/bensheldon/good_job/tree/v2.8.0) (2021-12-31)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v2.7.4...v2.8.0)

**Implemented enhancements:**

- GoodJob should automatically clean up after itself and delete old job records [\#412](https://github.com/bensheldon/good_job/issues/412)
- Track processes in the database and on the Dashboard [\#472](https://github.com/bensheldon/good_job/pull/472) ([bensheldon](https://github.com/bensheldon))
- Allow Scheduler to automatically clean up preserved jobs every N jobs or seconds [\#465](https://github.com/bensheldon/good_job/pull/465) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- Is there a way to show how many worker/process is running currently [\#471](https://github.com/bensheldon/good_job/issues/471)
- Jobs stuck in the unfinished state [\#448](https://github.com/bensheldon/good_job/issues/448)

**Merged pull requests:**

- Doublequote Ruby 3.0 in testing matrix [\#473](https://github.com/bensheldon/good_job/pull/473) ([bensheldon](https://github.com/bensheldon))
- Have demo CleanupJob use GoodJob.cleanup\_preserved\_jobs [\#470](https://github.com/bensheldon/good_job/pull/470) ([bensheldon](https://github.com/bensheldon))
- Test with Rails 7.0.0 [\#469](https://github.com/bensheldon/good_job/pull/469) ([aried3r](https://github.com/aried3r))

## [v2.7.4](https://github.com/bensheldon/good_job/tree/v2.7.4) (2021-12-16)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v2.7.3...v2.7.4)

**Fixed bugs:**

- Add nonce: true to javascript\_include\_tag in dashboard [\#468](https://github.com/bensheldon/good_job/pull/468) ([bouk](https://github.com/bouk))

**Closed issues:**

- Add nonce: true to engine views  [\#467](https://github.com/bensheldon/good_job/issues/467)
- Updating good\_job breaks my Rails 7 alpha 2 local development [\#462](https://github.com/bensheldon/good_job/issues/462)

**Merged pull requests:**

- Update appraisal for Rails 7.0.0.rc1 [\#466](https://github.com/bensheldon/good_job/pull/466) ([bensheldon](https://github.com/bensheldon))

## [v2.7.3](https://github.com/bensheldon/good_job/tree/v2.7.3) (2021-11-30)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v2.7.2...v2.7.3)

**Fixed bugs:**

- Logger error on 2.7.2 [\#463](https://github.com/bensheldon/good_job/issues/463)
- Fix Railtie configuration assignment when Rails configuration is a Hash, not an OrderedOptions [\#464](https://github.com/bensheldon/good_job/pull/464) ([bensheldon](https://github.com/bensheldon))

## [v2.7.2](https://github.com/bensheldon/good_job/tree/v2.7.2) (2021-11-29)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v2.7.1...v2.7.2)

**Implemented enhancements:**

- Allow GoodJob global configuration accessors to also be set via Rails config hash [\#460](https://github.com/bensheldon/good_job/pull/460) ([bensheldon](https://github.com/bensheldon))

**Merged pull requests:**

- Use `ActiveRecord::Relation::QueryAttribute` when setting up bindings for `exec_query` [\#461](https://github.com/bensheldon/good_job/pull/461) ([bensheldon](https://github.com/bensheldon))
- Configure RSpec `config.example_status_persistence_file_path` [\#459](https://github.com/bensheldon/good_job/pull/459) ([bensheldon](https://github.com/bensheldon))
- Defer async initialization until Rails fully initialized [\#454](https://github.com/bensheldon/good_job/pull/454) ([bensheldon](https://github.com/bensheldon))

## [v2.7.1](https://github.com/bensheldon/good_job/tree/v2.7.1) (2021-11-26)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v2.7.0...v2.7.1)

**Fixed bugs:**

- Unclear error when database can't be reached [\#457](https://github.com/bensheldon/good_job/issues/457)
- Remove Concurrent::Delay wrapping of database-loading methods [\#458](https://github.com/bensheldon/good_job/pull/458) ([bensheldon](https://github.com/bensheldon))
- Do not delete csp policies when checking csp policies [\#456](https://github.com/bensheldon/good_job/pull/456) ([JonathanFrias](https://github.com/JonathanFrias))

**Closed issues:**

- How to suppress job scheduler logs? [\#455](https://github.com/bensheldon/good_job/issues/455)
- Configuration in environments/\*.rb overrides application.rb [\#453](https://github.com/bensheldon/good_job/issues/453)
- Testing jobs synchronously [\#435](https://github.com/bensheldon/good_job/issues/435)
- HTTP health check endpoint [\#403](https://github.com/bensheldon/good_job/issues/403)

## [v2.7.0](https://github.com/bensheldon/good_job/tree/v2.7.0) (2021-11-10)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v2.6.2...v2.7.0)

**Implemented enhancements:**

- Add http probe for CLI healthcheck/readiness/liveliness [\#452](https://github.com/bensheldon/good_job/pull/452) ([bensheldon](https://github.com/bensheldon))
- Add explicit Content Security Policy \(CSP\) for Dashboard [\#449](https://github.com/bensheldon/good_job/pull/449) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- Add a default Content-Security-Policy for the Dashboard [\#420](https://github.com/bensheldon/good_job/issues/420)

## [v2.6.2](https://github.com/bensheldon/good_job/tree/v2.6.2) (2021-11-05)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v2.6.1...v2.6.2)

**Fixed bugs:**

- Rename Filterable\#search to Filterable\#search\_text to avoid name collision [\#451](https://github.com/bensheldon/good_job/pull/451) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- v2.6.1 is incompatible with gem thinking-sphinx [\#450](https://github.com/bensheldon/good_job/issues/450)

## [v2.6.1](https://github.com/bensheldon/good_job/tree/v2.6.1) (2021-11-05)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v2.6.0...v2.6.1)

**Implemented enhancements:**

- Allow job management \(retry, destroy\) through the Web UI [\#256](https://github.com/bensheldon/good_job/issues/256)
- Add fulltext search filter [\#440](https://github.com/bensheldon/good_job/pull/440) ([bensheldon](https://github.com/bensheldon))

**Fixed bugs:**

- Unsubscribed LISTEN forever after database connection lost [\#303](https://github.com/bensheldon/good_job/issues/303)
- Add `PG::UnableToSend` and `PG::Error` as a Notifier connection error [\#445](https://github.com/bensheldon/good_job/pull/445) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- Question: what's the correct way to handle database connection pool size when using cron [\#443](https://github.com/bensheldon/good_job/issues/443)
- Add a search bar to Dashboard [\#432](https://github.com/bensheldon/good_job/issues/432)
- Hacktoberfest 2021 [\#393](https://github.com/bensheldon/good_job/issues/393)
- Ideas for improvements to Cron [\#392](https://github.com/bensheldon/good_job/issues/392)
- Fix flakey test that times out [\#382](https://github.com/bensheldon/good_job/issues/382)

**Merged pull requests:**

- Update development dependencies [\#447](https://github.com/bensheldon/good_job/pull/447) ([bensheldon](https://github.com/bensheldon))
- Replace Chartist.js with Chart.js [\#444](https://github.com/bensheldon/good_job/pull/444) ([bensheldon](https://github.com/bensheldon))
- Fix JRuby flake: "Scheduler\#create\_thread returns false if there are no threads available" [\#442](https://github.com/bensheldon/good_job/pull/442) ([bensheldon](https://github.com/bensheldon))

## [v2.6.0](https://github.com/bensheldon/good_job/tree/v2.6.0) (2021-10-30)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v2.5.0...v2.6.0)

**Implemented enhancements:**

- Allow for cron schedules to be expressed using fugit natural language parsing [\#441](https://github.com/bensheldon/good_job/pull/441) ([jgrau](https://github.com/jgrau))
- Add Rails UJS javascript to Dashboard along with confirmations [\#437](https://github.com/bensheldon/good_job/pull/437) ([bensheldon](https://github.com/bensheldon))
- Reorganize Cron dashboard screen; add jobs drill-drown and enqueue-now action [\#436](https://github.com/bensheldon/good_job/pull/436) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- Ability to express cron schedule using fugit natural language parser [\#439](https://github.com/bensheldon/good_job/issues/439)
- Best way to ensure ordering of a queue. [\#402](https://github.com/bensheldon/good_job/issues/402)
- ActiveJob concurrency raises FrozenError [\#386](https://github.com/bensheldon/good_job/issues/386)

## [v2.5.0](https://github.com/bensheldon/good_job/tree/v2.5.0) (2021-10-25)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v2.4.2...v2.5.0)

**Implemented enhancements:**

- Add Reschedule, Discard, Retry Job buttons to Dashboard [\#425](https://github.com/bensheldon/good_job/pull/425) ([bensheldon](https://github.com/bensheldon))
- Use unique index on \[cron\_key, cron\_at\] columns to prevent duplicate cron jobs from being enqueued [\#423](https://github.com/bensheldon/good_job/pull/423) ([bensheldon](https://github.com/bensheldon))

**Fixed bugs:**

- Dashboard fix preservation of `limit` and `queue_name` filter params; add pager to jobs [\#434](https://github.com/bensheldon/good_job/pull/434) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- PgLock state inspection is not isolated to current database  [\#431](https://github.com/bensheldon/good_job/issues/431)
- Race condition with concurency control [\#378](https://github.com/bensheldon/good_job/issues/378)

**Merged pull requests:**

- Add Readme note about race conditions in Concurrency's `enqueue\_limit` and `perform\_limit [\#433](https://github.com/bensheldon/good_job/pull/433) ([bensheldon](https://github.com/bensheldon))
- Test harness should only force-unlock db connections for the current database [\#430](https://github.com/bensheldon/good_job/pull/430) ([bensheldon](https://github.com/bensheldon))

## [v2.4.2](https://github.com/bensheldon/good_job/tree/v2.4.2) (2021-10-19)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v2.4.1...v2.4.2)

**Implemented enhancements:**

- Add migration version to install/update generator templates [\#426](https://github.com/bensheldon/good_job/pull/426) ([bensheldon](https://github.com/bensheldon))

**Fixed bugs:**

- Explicitly unscope queries within block yielded to Lockable.within\_advisory\_lock [\#429](https://github.com/bensheldon/good_job/pull/429) ([bensheldon](https://github.com/bensheldon))
- Fix Demo CleanupJob args [\#427](https://github.com/bensheldon/good_job/pull/427) ([bensheldon](https://github.com/bensheldon))

**Merged pull requests:**

- Remove v1.99/v2 transitional extra advisory lock [\#428](https://github.com/bensheldon/good_job/pull/428) ([bensheldon](https://github.com/bensheldon))

## [v2.4.1](https://github.com/bensheldon/good_job/tree/v2.4.1) (2021-10-11)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v2.4.0...v2.4.1)

**Implemented enhancements:**

- Support Datadog APM / `dd-trace-rb` [\#323](https://github.com/bensheldon/good_job/issues/323)
- Display info about used timezone. [\#398](https://github.com/bensheldon/good_job/pull/398) ([morgoth](https://github.com/morgoth))
- Display cron schedules args in dashboard [\#396](https://github.com/bensheldon/good_job/pull/396) ([aried3r](https://github.com/aried3r))

**Fixed bugs:**

- Inline adapter should raise unhandled exceptions during execution [\#416](https://github.com/bensheldon/good_job/pull/416) ([bensheldon](https://github.com/bensheldon))
- Enforce english locale in UI [\#407](https://github.com/bensheldon/good_job/pull/407) ([morgoth](https://github.com/morgoth))

**Closed issues:**

- Finished jobs don't show up as finished [\#415](https://github.com/bensheldon/good_job/issues/415)
- Inline adapter should raise unhandled exceptions during execution [\#410](https://github.com/bensheldon/good_job/issues/410)
- Rewrite Scheduler "worker" thread name to be `thread` [\#406](https://github.com/bensheldon/good_job/issues/406)
- "WARNING: you don't own a lock of type ExclusiveLock" in Development [\#388](https://github.com/bensheldon/good_job/issues/388)
- Improve Readme's "Optimize queues, threads, processes" section [\#132](https://github.com/bensheldon/good_job/issues/132)

**Merged pull requests:**

- Ignore Rails HEAD Appraisal until `rails new` fixed [\#419](https://github.com/bensheldon/good_job/pull/419) ([bensheldon](https://github.com/bensheldon))
- Warn in Readme that configuration should not go into `config/initializers/*.rb` [\#418](https://github.com/bensheldon/good_job/pull/418) ([bensheldon](https://github.com/bensheldon))
- Replace worker wording [\#409](https://github.com/bensheldon/good_job/pull/409) ([Hugo-Hache](https://github.com/Hugo-Hache))
- Improve Readme's "Optimize queues, threads, processes" section [\#405](https://github.com/bensheldon/good_job/pull/405) ([Hugo-Hache](https://github.com/Hugo-Hache))
- Update GH Test Matrix with more PG versions [\#401](https://github.com/bensheldon/good_job/pull/401) ([tedt10e](https://github.com/tedt10e))
- Extract cron configuration hash into CronEntry ActiveModel objects [\#400](https://github.com/bensheldon/good_job/pull/400) ([bensheldon](https://github.com/bensheldon))
- Remove errant copy-paste from app.json [\#397](https://github.com/bensheldon/good_job/pull/397) ([morgoth](https://github.com/morgoth))

## [v2.4.0](https://github.com/bensheldon/good_job/tree/v2.4.0) (2021-10-02)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v2.3.1...v2.4.0)

**Implemented enhancements:**

- Display schedule time relative to now. [\#394](https://github.com/bensheldon/good_job/pull/394) ([morgoth](https://github.com/morgoth))
- Display cron schedules properties in dashboard [\#391](https://github.com/bensheldon/good_job/pull/391) ([aried3r](https://github.com/aried3r))

**Fixed bugs:**

- Correct icon for alert flash [\#395](https://github.com/bensheldon/good_job/pull/395) ([morgoth](https://github.com/morgoth))

## [v2.3.1](https://github.com/bensheldon/good_job/tree/v2.3.1) (2021-09-30)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v2.3.0...v2.3.1)

**Fixed bugs:**

- Wrap Scheduler task execution with Rails `reloader` instead of `executor` to avoid database connection changing during code reload [\#389](https://github.com/bensheldon/good_job/pull/389) ([bensheldon](https://github.com/bensheldon))

**Merged pull requests:**

- Log Cleanup thread tests, introduce "Slow" ExampleJob type, refactor ExampleJob types, run cron and log Postgres warnings in GoodJob Development harness [\#390](https://github.com/bensheldon/good_job/pull/390) ([bensheldon](https://github.com/bensheldon))

## [v2.3.0](https://github.com/bensheldon/good_job/tree/v2.3.0) (2021-09-25)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v2.2.0...v2.3.0)

**Implemented enhancements:**

- Create an ActiveJobJob model and Dashboard [\#383](https://github.com/bensheldon/good_job/pull/383) ([bensheldon](https://github.com/bensheldon))
- Preserve page filter when deleting execution [\#381](https://github.com/bensheldon/good_job/pull/381) ([morgoth](https://github.com/morgoth))

**Merged pull requests:**

- Update GH Test Matrix with latest JRuby 9.3.0.0 [\#387](https://github.com/bensheldon/good_job/pull/387) ([tedt10e](https://github.com/tedt10e))
- Improve test support's ShellOut command's process termination and add test logs [\#385](https://github.com/bensheldon/good_job/pull/385) ([bensheldon](https://github.com/bensheldon))
- @bensheldon Add Rails 7 alpha to Appraisal; update development dependencies [\#384](https://github.com/bensheldon/good_job/pull/384) ([bensheldon](https://github.com/bensheldon))

## [v2.2.0](https://github.com/bensheldon/good_job/tree/v2.2.0) (2021-09-15)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v2.1.0...v2.2.0)

**Implemented enhancements:**

- Add dashboard for cron-style jobs [\#367](https://github.com/bensheldon/good_job/pull/367) ([aried3r](https://github.com/aried3r))

**Fixed bugs:**

- Fix Dashboard navigation active class for Scheduled Jobs [\#375](https://github.com/bensheldon/good_job/pull/375) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- Rename `GoodJob::Job` to be `GoodJob::Execution` [\#376](https://github.com/bensheldon/good_job/issues/376)
- More recognition in Rails community [\#370](https://github.com/bensheldon/good_job/issues/370)
- Concurrency control for all queued jobs [\#366](https://github.com/bensheldon/good_job/issues/366)

**Merged pull requests:**

- Rename `GoodJob::Job` to `GoodJob::Execution` [\#377](https://github.com/bensheldon/good_job/pull/377) ([bensheldon](https://github.com/bensheldon))
- Add example execution behavior \(errored, retried, dead\) to demo ExampleJob [\#374](https://github.com/bensheldon/good_job/pull/374) ([bensheldon](https://github.com/bensheldon))
- Add Passenger info for running in async mode [\#373](https://github.com/bensheldon/good_job/pull/373) ([aried3r](https://github.com/aried3r))
- Update bootstrap to latest 5.1.1 [\#372](https://github.com/bensheldon/good_job/pull/372) ([morgoth](https://github.com/morgoth))

## [v2.1.0](https://github.com/bensheldon/good_job/tree/v2.1.0) (2021-09-09)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v2.0.5...v2.1.0)

**Implemented enhancements:**

- Add `total_limit:` option to GoodJob::Concurrency to be inclusive of counting both enqueued and performing jobs [\#369](https://github.com/bensheldon/good_job/pull/369) ([bensheldon](https://github.com/bensheldon))
- Add button to toggle all job params in Dashboard [\#365](https://github.com/bensheldon/good_job/pull/365) ([bensheldon](https://github.com/bensheldon))

**Fixed bugs:**

- Fix unlock key for Lockable\#with\_advisory\_lock [\#368](https://github.com/bensheldon/good_job/pull/368) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- Cron-like jobs not always executed, possible reasons? [\#359](https://github.com/bensheldon/good_job/issues/359)

**Merged pull requests:**

- When shelling out in tests, send SIGKILL if process does not exit [\#371](https://github.com/bensheldon/good_job/pull/371) ([bensheldon](https://github.com/bensheldon))
- Have all tests use stubbed TestJob [\#364](https://github.com/bensheldon/good_job/pull/364) ([bensheldon](https://github.com/bensheldon))

## [v2.0.5](https://github.com/bensheldon/good_job/tree/v2.0.5) (2021-09-06)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v2.0.4...v2.0.5)

**Closed issues:**

- Serialized Params and ActiveJob extensions [\#362](https://github.com/bensheldon/good_job/issues/362)

**Merged pull requests:**

- `deep_dup` serialized job data instead of`attr_readonly` to prevent overwriting [\#363](https://github.com/bensheldon/good_job/pull/363) ([bensheldon](https://github.com/bensheldon))

## [v2.0.4](https://github.com/bensheldon/good_job/tree/v2.0.4) (2021-08-31)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v2.0.3...v2.0.4)

**Fixed bugs:**

- Remove `NOW()` from Dashboard SQL; fix chart x-axis order left-to-right, old-to-new [\#355](https://github.com/bensheldon/good_job/pull/355) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- Content security policy for dashboard; nest shared view partials; problematic NOW\(\) SQL in Dashboard query   [\#304](https://github.com/bensheldon/good_job/issues/304)

**Merged pull requests:**

- Update development dependencies and ruby to 2.7.4 [\#358](https://github.com/bensheldon/good_job/pull/358) ([bensheldon](https://github.com/bensheldon))
- Add info about how to disable polling to README [\#357](https://github.com/bensheldon/good_job/pull/357) ([aried3r](https://github.com/aried3r))

## [v2.0.3](https://github.com/bensheldon/good_job/tree/v2.0.3) (2021-08-31)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v2.0.2...v2.0.3)

**Implemented enhancements:**

- Implement `GoodJob.cleanup_preserved_jobs`, fixes \#351 [\#356](https://github.com/bensheldon/good_job/pull/356) ([aried3r](https://github.com/aried3r))

**Closed issues:**

- Expose CLI `cleanup_preserved_jobs` functionality via `GoodJob`? [\#351](https://github.com/bensheldon/good_job/issues/351)

## [v2.0.2](https://github.com/bensheldon/good_job/tree/v2.0.2) (2021-08-27)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v1.99.1...v2.0.2)

**Fixed bugs:**

- v2.0: Generators support multiple databases: `--database` option, `migrations_paths`, custom `GoodJob.active_record_parent_class` [\#354](https://github.com/bensheldon/good_job/pull/354) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- Migrations generator assumes migrations are in db/migrate [\#352](https://github.com/bensheldon/good_job/issues/352)

**Merged pull requests:**

- README style/typo fixes: "web server" and possessive "Rails'" [\#350](https://github.com/bensheldon/good_job/pull/350) ([aried3r](https://github.com/aried3r))
- Add examples of setting config.good\_job.queues [\#349](https://github.com/bensheldon/good_job/pull/349) ([zachmargolis](https://github.com/zachmargolis))

## [v1.99.1](https://github.com/bensheldon/good_job/tree/v1.99.1) (2021-08-27)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v2.0.1...v1.99.1)

**Closed issues:**

- Does Good job support delay method? [\#344](https://github.com/bensheldon/good_job/issues/344)

## [v2.0.1](https://github.com/bensheldon/good_job/tree/v2.0.1) (2021-08-24)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v2.0.0...v2.0.1)

**Implemented enhancements:**

- Suppress backtrace of ConcurrencyExceededError [\#348](https://github.com/bensheldon/good_job/pull/348) ([mikereczek](https://github.com/mikereczek))

**Closed issues:**

- Is there any value in seeing a backtrace for ConcurrencyExceededError? [\#347](https://github.com/bensheldon/good_job/issues/347)
- Release GoodJob 2.0 [\#307](https://github.com/bensheldon/good_job/issues/307)
- Unhandled ActiveJob errors should trigger GoodJob.on\_thread\_error [\#247](https://github.com/bensheldon/good_job/issues/247)

## [v2.0.0](https://github.com/bensheldon/good_job/tree/v2.0.0) (2021-08-24)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v1.99.0...v2.0.0)

**Implemented enhancements:**

- Concurrency's enqueue\_limit should exclude performing jobs from count [\#317](https://github.com/bensheldon/good_job/issues/317)
- Rename `:async` to `:async_all`; `:async_server` to `:async` and set as Development environment default; do not poll in async development [\#343](https://github.com/bensheldon/good_job/pull/343) ([bensheldon](https://github.com/bensheldon))
- Exclude executing jobs from Concurrency's enqueue\_limit's count [\#342](https://github.com/bensheldon/good_job/pull/342) ([bensheldon](https://github.com/bensheldon))
- Unhandled ActiveJob errors should trigger GoodJob.on\_thread\_error [\#312](https://github.com/bensheldon/good_job/pull/312) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- Swap behavior of `async` with `async_server`; rename `async` execution mode to be `async_all`; default `async` in Development; [\#340](https://github.com/bensheldon/good_job/issues/340)
- Add hyphen to lock key. e.g. "\[table\_name\]-\[column\]" instead of "\[table\_name\]\[column\]" [\#335](https://github.com/bensheldon/good_job/issues/335)
- Use `async_server` as default execution mode in Development environment [\#139](https://github.com/bensheldon/good_job/issues/139)

**Merged pull requests:**

- Remove v1.0 deprecation notices and incremental migrations [\#338](https://github.com/bensheldon/good_job/pull/338) ([bensheldon](https://github.com/bensheldon))
- Lock GoodJob::Job on active\_job\_id instead of the row id; adds separator hyphen to lock key [\#337](https://github.com/bensheldon/good_job/pull/337) ([bensheldon](https://github.com/bensheldon))

## [v1.99.0](https://github.com/bensheldon/good_job/tree/v1.99.0) (2021-08-24)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v1.13.2...v1.99.0)

**Closed issues:**

- Set Advisory Lock on ActiveJob job uuid instead of GoodJob's job uuid [\#272](https://github.com/bensheldon/good_job/issues/272)

**Merged pull requests:**

- Add upgrade instructions for v1 to v2 [\#345](https://github.com/bensheldon/good_job/pull/345) ([bensheldon](https://github.com/bensheldon))
- Add transitional/temporary additional lock on good\_jobs-\[active\_job\_id\] [\#336](https://github.com/bensheldon/good_job/pull/336) ([bensheldon](https://github.com/bensheldon))

## [v1.13.2](https://github.com/bensheldon/good_job/tree/v1.13.2) (2021-08-18)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v1.13.1...v1.13.2)

**Merged pull requests:**

- Add deprecation notice that `async` mode will be renamed `async_all` in GoodJob v2.0 [\#339](https://github.com/bensheldon/good_job/pull/339) ([bensheldon](https://github.com/bensheldon))

## [v1.13.1](https://github.com/bensheldon/good_job/tree/v1.13.1) (2021-08-18)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v1.13.0...v1.13.1)

**Fixed bugs:**

- Don’t attempt to enforce concurrency limits with other queue adapters [\#333](https://github.com/bensheldon/good_job/pull/333) ([codyrobbins](https://github.com/codyrobbins))

## [v1.13.0](https://github.com/bensheldon/good_job/tree/v1.13.0) (2021-08-18)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v1.12.2...v1.13.0)

**Implemented enhancements:**

- Track if a GoodJob::Job has been subsequently retried [\#331](https://github.com/bensheldon/good_job/pull/331) ([bensheldon](https://github.com/bensheldon))
- Wrap and truncate error message, which can be a huge text [\#294](https://github.com/bensheldon/good_job/pull/294) ([morgoth](https://github.com/morgoth))

**Closed issues:**

- Add hyphen to lock string. e.g. "table\_name-column" instead of "table\_namecolumn [\#334](https://github.com/bensheldon/good_job/issues/334)
- Optimize db indexes in advance of v2.0.0 [\#332](https://github.com/bensheldon/good_job/issues/332)
- wait\_until in development? [\#330](https://github.com/bensheldon/good_job/issues/330)
- Race conditions in ActiveJob concurrency extension [\#325](https://github.com/bensheldon/good_job/issues/325)
- Store in database if a job has been ActiveJob retried [\#321](https://github.com/bensheldon/good_job/issues/321)
- Revisit and embrace concurrency control, scheduled jobs, and other extensions of ActiveJob [\#255](https://github.com/bensheldon/good_job/issues/255)
- Why 1 million jobs per day? [\#222](https://github.com/bensheldon/good_job/issues/222)

## [v1.12.2](https://github.com/bensheldon/good_job/tree/v1.12.2) (2021-08-13)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v1.12.1...v1.12.2)

**Fixed bugs:**

- Fixes for race conditions in ActiveJob concurrency extension [\#326](https://github.com/bensheldon/good_job/pull/326) ([codyrobbins](https://github.com/codyrobbins))

**Merged pull requests:**

- On gem release, add instructions to author a Github Release [\#324](https://github.com/bensheldon/good_job/pull/324) ([bensheldon](https://github.com/bensheldon))

## [v1.12.1](https://github.com/bensheldon/good_job/tree/v1.12.1) (2021-08-05)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v1.12.0...v1.12.1)

**Fixed bugs:**

- Ensure CLI can shutdown cleanly with multiple queues and timeout [\#319](https://github.com/bensheldon/good_job/pull/319) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- Setting a shutdown timeout causes the CLI executor to throw an exception on shutdown. [\#318](https://github.com/bensheldon/good_job/issues/318)
- PgBouncer and prepared statements [\#269](https://github.com/bensheldon/good_job/issues/269)
- Question about locking internals [\#212](https://github.com/bensheldon/good_job/issues/212)
- Encoding::UndefinedConversionError \("\xE2" from ASCII-8BIT to UTF-8\) [\#198](https://github.com/bensheldon/good_job/issues/198)

**Merged pull requests:**

- Fix Readme lint warnings [\#320](https://github.com/bensheldon/good_job/pull/320) ([bensheldon](https://github.com/bensheldon))

## [v1.12.0](https://github.com/bensheldon/good_job/tree/v1.12.0) (2021-07-27)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v1.11.3...v1.12.0)

**Implemented enhancements:**

- Add the ability to schedule repeating / recurring / cron-like jobs [\#53](https://github.com/bensheldon/good_job/issues/53)
- Add cron-like support for recurring/repeating jobs [\#297](https://github.com/bensheldon/good_job/pull/297) ([bensheldon](https://github.com/bensheldon))

**Fixed bugs:**

- Place Dashboard shared view partials under `good_job` namespace [\#310](https://github.com/bensheldon/good_job/pull/310) ([bensheldon](https://github.com/bensheldon))
- Ensure Dashboard inline javascript has CSP nonce for strict Content-Security Policy [\#309](https://github.com/bensheldon/good_job/pull/309) ([bensheldon](https://github.com/bensheldon))

## [v1.11.3](https://github.com/bensheldon/good_job/tree/v1.11.3) (2021-07-25)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v1.11.2...v1.11.3)

**Closed issues:**

- Add Frozen String Literal to all files [\#298](https://github.com/bensheldon/good_job/issues/298)
- Support for good\_job without Rails? [\#295](https://github.com/bensheldon/good_job/issues/295)

**Merged pull requests:**

- Have prettier Dashboard asset urls e.g. `bootstrap.css` instead of `bootstrap_css.css` [\#306](https://github.com/bensheldon/good_job/pull/306) ([bensheldon](https://github.com/bensheldon))
- Create dashboard demo app on Heroku [\#305](https://github.com/bensheldon/good_job/pull/305) ([bensheldon](https://github.com/bensheldon))
- Add Frozen String Literal to all files [\#302](https://github.com/bensheldon/good_job/pull/302) ([tedt10e](https://github.com/tedt10e))

## [v1.11.2](https://github.com/bensheldon/good_job/tree/v1.11.2) (2021-07-20)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v1.11.1...v1.11.2)

**Fixed bugs:**

- Notifier waits to retry listening when database is unavailable [\#301](https://github.com/bensheldon/good_job/pull/301) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- Handle database connection drops [\#296](https://github.com/bensheldon/good_job/issues/296)
- Using the `async` worker results in `ActiveModel::UnknownAttributeError  unknown attribute 'create_with_advisory_lock' for GoodJob::Job`. [\#290](https://github.com/bensheldon/good_job/issues/290)

**Merged pull requests:**

- Rename development and test databases to be `good_job` [\#300](https://github.com/bensheldon/good_job/pull/300) ([bensheldon](https://github.com/bensheldon))
- Move generators spec into top-level spec directory; update dependencies [\#299](https://github.com/bensheldon/good_job/pull/299) ([bensheldon](https://github.com/bensheldon))

## [v1.11.1](https://github.com/bensheldon/good_job/tree/v1.11.1) (2021-07-07)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v1.11.0...v1.11.1)

**Fixed bugs:**

- Defer accessing ActiveRecord `primary_key` in Lockable [\#293](https://github.com/bensheldon/good_job/pull/293) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- Database connection required while loading the code on 1.10.x [\#291](https://github.com/bensheldon/good_job/issues/291)

## [v1.11.0](https://github.com/bensheldon/good_job/tree/v1.11.0) (2021-07-07)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v1.10.1...v1.11.0)

**Implemented enhancements:**

- Add concurrency extension for ActiveJob [\#281](https://github.com/bensheldon/good_job/pull/281) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- Investigate GoodJob concurrency [\#289](https://github.com/bensheldon/good_job/issues/289)
- Problem with migrating database on 1.10.0 [\#287](https://github.com/bensheldon/good_job/issues/287)
- Support migration --database option for install task? [\#267](https://github.com/bensheldon/good_job/issues/267)
- Add GoodJob to Ruby Toolbox [\#243](https://github.com/bensheldon/good_job/issues/243)
- Custom advisory locks to prevent certain jobs from being worked on concurrently? [\#206](https://github.com/bensheldon/good_job/issues/206)

## [v1.10.1](https://github.com/bensheldon/good_job/tree/v1.10.1) (2021-06-30)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v1.10.0...v1.10.1)

**Fixed bugs:**

- Remove `FOR UPDATE SKIP LOCKED` from job locking sql statement [\#288](https://github.com/bensheldon/good_job/pull/288) ([bensheldon](https://github.com/bensheldon))

**Merged pull requests:**

- Update GH Test Matrix with latest JRuby 9.2.19.0 [\#283](https://github.com/bensheldon/good_job/pull/283) ([tedt10e](https://github.com/tedt10e))

## [v1.10.0](https://github.com/bensheldon/good_job/tree/v1.10.0) (2021-06-29)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v1.9.6...v1.10.0)

**Implemented enhancements:**

- Use `pg_advisory_unlock_all` after each thread's job execution; fix Lockable return values; improve test stability [\#285](https://github.com/bensheldon/good_job/pull/285) ([bensheldon](https://github.com/bensheldon))
- Add `rails g good_job:update` command to add idempotent migration files, including `active_job_id`, `concurrency_key`, `cron_key` columns [\#266](https://github.com/bensheldon/good_job/pull/266) ([bensheldon](https://github.com/bensheldon))

**Fixed bugs:**

- Dashboard AssetsController does not raise if verify\_authenticity\_token is not in the callback chain [\#284](https://github.com/bensheldon/good_job/pull/284) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- \[Question\] Dashboard assets not showing [\#282](https://github.com/bensheldon/good_job/issues/282)

**Merged pull requests:**

- Separately cache Appraisal gems in GH Action [\#280](https://github.com/bensheldon/good_job/pull/280) ([bensheldon](https://github.com/bensheldon))
- Use custom RSpec doc formatter to show spec examples that are running [\#279](https://github.com/bensheldon/good_job/pull/279) ([bensheldon](https://github.com/bensheldon))
- Update development dependencies [\#278](https://github.com/bensheldon/good_job/pull/278) ([bensheldon](https://github.com/bensheldon))
- Fix Scheduler integration spec to ensure jobs are run in the Scheduler under test [\#276](https://github.com/bensheldon/good_job/pull/276) ([bensheldon](https://github.com/bensheldon))
- Add example benchmark for job throughput [\#275](https://github.com/bensheldon/good_job/pull/275) ([bensheldon](https://github.com/bensheldon))
- Allow Lockable to be passed custom column, key, and Postgres advisory lock/unlock function [\#273](https://github.com/bensheldon/good_job/pull/273) ([bensheldon](https://github.com/bensheldon))

## [v1.9.6](https://github.com/bensheldon/good_job/tree/v1.9.6) (2021-06-04)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v1.9.5...v1.9.6)

**Implemented enhancements:**

- Add deleting jobs from UI. [\#265](https://github.com/bensheldon/good_job/pull/265) ([morgoth](https://github.com/morgoth))
- Collapse Dashboard params by default [\#263](https://github.com/bensheldon/good_job/pull/263) ([morgoth](https://github.com/morgoth))

**Closed issues:**

- Pause jobs during migration / maintenance? [\#257](https://github.com/bensheldon/good_job/issues/257)
- How to properly report errors to error tracker service [\#159](https://github.com/bensheldon/good_job/issues/159)

## [v1.9.5](https://github.com/bensheldon/good_job/tree/v1.9.5) (2021-05-24)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v1.9.4...v1.9.5)

**Implemented enhancements:**

- Update Dashboard to Bootstrap 5 [\#260](https://github.com/bensheldon/good_job/pull/260) ([morgoth](https://github.com/morgoth))

**Closed issues:**

- Update from bootstrap 4 to bootstrap 5 [\#258](https://github.com/bensheldon/good_job/issues/258)

**Merged pull requests:**

- Serve Dashboard assets as discrete paths instead of inlining [\#262](https://github.com/bensheldon/good_job/pull/262) ([bensheldon](https://github.com/bensheldon))
- Fix Gemfile.lock's missing JRuby dependencies; fix release script and add check [\#261](https://github.com/bensheldon/good_job/pull/261) ([bensheldon](https://github.com/bensheldon))

## [v1.9.4](https://github.com/bensheldon/good_job/tree/v1.9.4) (2021-05-18)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v1.9.3...v1.9.4)

**Implemented enhancements:**

- Add "running" jobs state to Dashboard [\#253](https://github.com/bensheldon/good_job/pull/253) ([morgoth](https://github.com/morgoth))

**Fixed bugs:**

- Unify displaying timestamps [\#252](https://github.com/bensheldon/good_job/pull/252) ([morgoth](https://github.com/morgoth))
- Fix dashboard jobs endless pagination with timezone handling [\#251](https://github.com/bensheldon/good_job/pull/251) ([morgoth](https://github.com/morgoth))

**Closed issues:**

- exception\_executions not counted correctly? [\#215](https://github.com/bensheldon/good_job/issues/215)
- Document issues with PgBouncer and session-level Advisory Locks [\#52](https://github.com/bensheldon/good_job/issues/52)

**Merged pull requests:**

- Add handy scope for filtering by job class [\#259](https://github.com/bensheldon/good_job/pull/259) ([morgoth](https://github.com/morgoth))
- Nest exception stub within job class and cleanup let! precedence to fix flakey JRuby tests [\#254](https://github.com/bensheldon/good_job/pull/254) ([bensheldon](https://github.com/bensheldon))
- Move good\_job\_spec.rb to proper location in lib directory [\#250](https://github.com/bensheldon/good_job/pull/250) ([bensheldon](https://github.com/bensheldon))
- Refactor deprecated wait parameter and assorted improvements [\#249](https://github.com/bensheldon/good_job/pull/249) ([bensheldon](https://github.com/bensheldon))
- Update development dependencies \(Rails v6.1.3.2\) [\#248](https://github.com/bensheldon/good_job/pull/248) ([bensheldon](https://github.com/bensheldon))
- Update YARD documentation param types and return values [\#239](https://github.com/bensheldon/good_job/pull/239) ([bensheldon](https://github.com/bensheldon))

## [v1.9.3](https://github.com/bensheldon/good_job/tree/v1.9.3) (2021-05-10)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v1.9.2...v1.9.3)

**Implemented enhancements:**

- Add async\_server detection for extensions of rack handler [\#246](https://github.com/bensheldon/good_job/pull/246) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- Not processing unfinished jobs across server restarts using async\_server mode on Iodine server [\#244](https://github.com/bensheldon/good_job/issues/244)
- No connection pool for 'ActiveRecord::Base' found [\#236](https://github.com/bensheldon/good_job/issues/236)

## [v1.9.2](https://github.com/bensheldon/good_job/tree/v1.9.2) (2021-05-10)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v1.9.1...v1.9.2)

**Fixed bugs:**

- Run Scheduler\#warm\_cache operation in threadpool executor [\#242](https://github.com/bensheldon/good_job/pull/242) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- Jobs not visible in dashboard [\#245](https://github.com/bensheldon/good_job/issues/245)

**Merged pull requests:**

- Use GoodJob::Job::ExecutionResult object instead of job execution returning an ordered array [\#241](https://github.com/bensheldon/good_job/pull/241) ([bensheldon](https://github.com/bensheldon))
- Update development dependencies [\#240](https://github.com/bensheldon/good_job/pull/240) ([bensheldon](https://github.com/bensheldon))

## [v1.9.1](https://github.com/bensheldon/good_job/tree/v1.9.1) (2021-04-19)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v1.9.0...v1.9.1)

**Implemented enhancements:**

- Allow to specify parent class for active record [\#238](https://github.com/bensheldon/good_job/pull/238) ([morgoth](https://github.com/morgoth))

## [v1.9.0](https://github.com/bensheldon/good_job/tree/v1.9.0) (2021-04-16)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v1.8.0...v1.9.0)

**Implemented enhancements:**

- Add `async_server` option to run async only in Rails web server process [\#230](https://github.com/bensheldon/good_job/pull/230) ([bensheldon](https://github.com/bensheldon))
- FreeBSD startup script [\#221](https://github.com/bensheldon/good_job/pull/221) ([lauer](https://github.com/lauer))

**Fixed bugs:**

- Fix instrumentation of GoodJob::Poller finished\_timer\_task event [\#233](https://github.com/bensheldon/good_job/pull/233) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- Cannot run db:migrate when execution mode is :async [\#229](https://github.com/bensheldon/good_job/issues/229)
- How do you enqueue a job to be executed immediately outside of Rails \(eg. creating a new record of good\_jobs in Postgresql\)? [\#225](https://github.com/bensheldon/good_job/issues/225)
- Feature Ideas [\#220](https://github.com/bensheldon/good_job/issues/220)
- Goodjob startup script for FreeBSD [\#214](https://github.com/bensheldon/good_job/issues/214)
- Only start async mode executors when server is running [\#194](https://github.com/bensheldon/good_job/issues/194)

**Merged pull requests:**

- Move executable flags from constants to accessors on GoodJob::CLI [\#234](https://github.com/bensheldon/good_job/pull/234) ([bensheldon](https://github.com/bensheldon))
- Add custom Scheduler::TimerSet [\#232](https://github.com/bensheldon/good_job/pull/232) ([bensheldon](https://github.com/bensheldon))
- Fix assorted constant references in YARD documentation [\#231](https://github.com/bensheldon/good_job/pull/231) ([bensheldon](https://github.com/bensheldon))
- Update GH Test Matrix with latest JRuby 9.2.17.0 [\#228](https://github.com/bensheldon/good_job/pull/228) ([tedt10e](https://github.com/tedt10e))
- Update gem dependencies [\#227](https://github.com/bensheldon/good_job/pull/227) ([bensheldon](https://github.com/bensheldon))
- Remove leftover text from Readme [\#226](https://github.com/bensheldon/good_job/pull/226) ([weh](https://github.com/weh))
- Fix appraisal and bundler version CI conflicts [\#224](https://github.com/bensheldon/good_job/pull/224) ([bensheldon](https://github.com/bensheldon))
- Update GH Test Matrix with latest JRuby [\#223](https://github.com/bensheldon/good_job/pull/223) ([tedt10e](https://github.com/tedt10e))

## [v1.8.0](https://github.com/bensheldon/good_job/tree/v1.8.0) (2021-03-04)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v1.7.1...v1.8.0)

**Implemented enhancements:**

- Wait then stop on shutdown [\#126](https://github.com/bensheldon/good_job/issues/126)
- Add shutdown-timeout option to configure the wait for jobs to gracefully finish before stopping them [\#213](https://github.com/bensheldon/good_job/pull/213) ([bensheldon](https://github.com/bensheldon))

**Fixed bugs:**

- Ensure Job\#serialized\_params are immutable [\#218](https://github.com/bensheldon/good_job/pull/218) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- Run GoodJob on puma boot [\#91](https://github.com/bensheldon/good_job/issues/91)
- ActiveRecord::ConnectionNotEstablished when using async mode [\#89](https://github.com/bensheldon/good_job/issues/89)

**Merged pull requests:**

- Update bundler and Appraisals so Rails HEAD is locked to Ruby version \>= 2.7 [\#219](https://github.com/bensheldon/good_job/pull/219) ([bensheldon](https://github.com/bensheldon))

## [v1.7.1](https://github.com/bensheldon/good_job/tree/v1.7.1) (2021-01-27)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v1.7.0...v1.7.1)

**Fixed bugs:**

- Scheduler should always push a new task on completion of previous task, regardless of available thread calculation [\#209](https://github.com/bensheldon/good_job/pull/209) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- Unexpected behavior with max\_threads = 1 [\#208](https://github.com/bensheldon/good_job/issues/208)

**Merged pull requests:**

- Fix equality typo in development.rb of test\_app [\#207](https://github.com/bensheldon/good_job/pull/207) ([mikereczek](https://github.com/mikereczek))

## [v1.7.0](https://github.com/bensheldon/good_job/tree/v1.7.0) (2021-01-25)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v1.6.0...v1.7.0)

**Implemented enhancements:**

- Cache scheduled jobs in memory so they can be executed without polling [\#205](https://github.com/bensheldon/good_job/pull/205) ([bensheldon](https://github.com/bensheldon))

## [v1.6.0](https://github.com/bensheldon/good_job/tree/v1.6.0) (2021-01-22)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v1.5.0...v1.6.0)

**Implemented enhancements:**

- Running as a daemon [\#88](https://github.com/bensheldon/good_job/issues/88)
- Add daemonize option to CLI [\#202](https://github.com/bensheldon/good_job/pull/202) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- Rails 6.1 & async - `queue_parser': undefined method `first' for "\*":String \(NoMethodError\) [\#195](https://github.com/bensheldon/good_job/issues/195)

**Merged pull requests:**

- Add scripts directory for benchmarking and dev tasks [\#204](https://github.com/bensheldon/good_job/pull/204) ([bensheldon](https://github.com/bensheldon))
- Fix YARD attr\_ declarations for documentation [\#203](https://github.com/bensheldon/good_job/pull/203) ([bensheldon](https://github.com/bensheldon))
- Remove Appraisal gemfile locks [\#201](https://github.com/bensheldon/good_job/pull/201) ([bensheldon](https://github.com/bensheldon))

## [v1.5.0](https://github.com/bensheldon/good_job/tree/v1.5.0) (2021-01-18)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v1.4.1...v1.5.0)

**Implemented enhancements:**

- Create Web UI Dashboard [\#50](https://github.com/bensheldon/good_job/issues/50)
- Configure GoodJob via `Rails.application.config` instead of recommending `GoodJob::Adapter.new` [\#199](https://github.com/bensheldon/good_job/pull/199) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- JRuby Support [\#160](https://github.com/bensheldon/good_job/issues/160)

**Merged pull requests:**

- Update bundler version to 2.2.5 [\#200](https://github.com/bensheldon/good_job/pull/200) ([bensheldon](https://github.com/bensheldon))
- Update GH Test Matrix with minimum & latest JRuby version [\#197](https://github.com/bensheldon/good_job/pull/197) ([tedt10e](https://github.com/tedt10e))
- Fix JRuby version number [\#193](https://github.com/bensheldon/good_job/pull/193) ([tedt10e](https://github.com/tedt10e))

## [v1.4.1](https://github.com/bensheldon/good_job/tree/v1.4.1) (2021-01-09)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v1.4.0...v1.4.1)

**Fixed bugs:**

- Do not add lib/generators to Zeitwerk autoloader [\#192](https://github.com/bensheldon/good_job/pull/192) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- Issues with Heroku and Good Job [\#184](https://github.com/bensheldon/good_job/issues/184)

**Merged pull requests:**

- Add missing YARD docs and Dashboard screenshot [\#191](https://github.com/bensheldon/good_job/pull/191) ([bensheldon](https://github.com/bensheldon))

## [v1.4.0](https://github.com/bensheldon/good_job/tree/v1.4.0) (2020-12-31)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v1.3.6...v1.4.0)

**Implemented enhancements:**

- Add JRuby support [\#167](https://github.com/bensheldon/good_job/pull/167) ([bensheldon](https://github.com/bensheldon))

## [v1.3.6](https://github.com/bensheldon/good_job/tree/v1.3.6) (2020-12-30)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v1.3.5...v1.3.6)

**Implemented enhancements:**

- Call GoodJob.on\_thread\_error when Notifier thread raises exception [\#185](https://github.com/bensheldon/good_job/pull/185) ([bensheldon](https://github.com/bensheldon))
- Improve dashboard UI, fix button state, add unfiltering [\#181](https://github.com/bensheldon/good_job/pull/181) ([bensheldon](https://github.com/bensheldon))

**Fixed bugs:**

- Replace ActiveRecord execute usage and avoid potential memory leakage [\#187](https://github.com/bensheldon/good_job/issues/187)
- Does good\_job hold on to advisory locks for finished jobs? [\#177](https://github.com/bensheldon/good_job/issues/177)

**Merged pull requests:**

- Run tests with Rails default configuration to enable Zeitwerk [\#190](https://github.com/bensheldon/good_job/pull/190) ([bensheldon](https://github.com/bensheldon))
- Update all Lockable queries to use exec\_query instead of execute; clear async\_exec results [\#189](https://github.com/bensheldon/good_job/pull/189) ([bensheldon](https://github.com/bensheldon))
- Have Lockable\#advisory\_locked? directly query pg\_locks table [\#188](https://github.com/bensheldon/good_job/pull/188) ([bensheldon](https://github.com/bensheldon))
- Update development gems, including Rails v6.1 and Rails HEAD [\#186](https://github.com/bensheldon/good_job/pull/186) ([bensheldon](https://github.com/bensheldon))
- Update Appraisals for Rails 6.1 [\#183](https://github.com/bensheldon/good_job/pull/183) ([bensheldon](https://github.com/bensheldon))
- Add Ruby 3 to CI test matrix [\#182](https://github.com/bensheldon/good_job/pull/182) ([bensheldon](https://github.com/bensheldon))

## [v1.3.5](https://github.com/bensheldon/good_job/tree/v1.3.5) (2020-12-17)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v1.3.4...v1.3.5)

**Fixed bugs:**

-  Ensure advisory lock CTE is MATERIALIZED on Postgres v12+ [\#179](https://github.com/bensheldon/good_job/pull/179) ([bensheldon](https://github.com/bensheldon))
- Ensure that deleted jobs are unlocked [\#178](https://github.com/bensheldon/good_job/pull/178) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- not running jobs [\#168](https://github.com/bensheldon/good_job/issues/168)
- how to run good\_job on a separate machine  [\#162](https://github.com/bensheldon/good_job/issues/162)

**Merged pull requests:**

- Add Appraisal for Rails 6.1-rc2 [\#175](https://github.com/bensheldon/good_job/pull/175) ([bensheldon](https://github.com/bensheldon))

## [v1.3.4](https://github.com/bensheldon/good_job/tree/v1.3.4) (2020-12-02)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v1.3.3...v1.3.4)

**Fixed bugs:**

- Fix job ordering for Rails 6.1 [\#174](https://github.com/bensheldon/good_job/pull/174) ([morgoth](https://github.com/morgoth))

## [v1.3.3](https://github.com/bensheldon/good_job/tree/v1.3.3) (2020-12-01)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v1.3.2...v1.3.3)

**Implemented enhancements:**

- UI: Admin UI with filters and space efficient layout [\#173](https://github.com/bensheldon/good_job/pull/173) ([zealot128](https://github.com/zealot128))

## [v1.3.2](https://github.com/bensheldon/good_job/tree/v1.3.2) (2020-11-12)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v1.3.1...v1.3.2)

**Fixed bugs:**

- \(bug\) MultiScheduler polling bug [\#171](https://github.com/bensheldon/good_job/issues/171)
- MultiScheduler should delegate to all schedulers when state is nil [\#172](https://github.com/bensheldon/good_job/pull/172) ([bensheldon](https://github.com/bensheldon))

## [v1.3.1](https://github.com/bensheldon/good_job/tree/v1.3.1) (2020-11-01)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v1.3.0...v1.3.1)

**Implemented enhancements:**

- Extract polling from scheduler into Polling object [\#128](https://github.com/bensheldon/good_job/issues/128)
- Format serialized params to ease reading [\#170](https://github.com/bensheldon/good_job/pull/170) ([morgoth](https://github.com/morgoth))

**Fixed bugs:**

- Don't disconnect a nil activerecord connection [\#161](https://github.com/bensheldon/good_job/pull/161) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- Propose addition of GoodJob to queue-shootout benchmarks [\#40](https://github.com/bensheldon/good_job/issues/40)

**Merged pull requests:**

- Ensure Rails is a development dependency [\#169](https://github.com/bensheldon/good_job/pull/169) ([bensheldon](https://github.com/bensheldon))
- Fix Ruby 2.7 GH action by setting default bundler explicitly [\#166](https://github.com/bensheldon/good_job/pull/166) ([bensheldon](https://github.com/bensheldon))
- Cache ruby version explicitly in Github Action [\#165](https://github.com/bensheldon/good_job/pull/165) ([bensheldon](https://github.com/bensheldon))
- Update development dependencies, rubocop [\#164](https://github.com/bensheldon/good_job/pull/164) ([bensheldon](https://github.com/bensheldon))
- Fix intended constant hierarchy of GoodJob::Scheduler::ThreadPoolExecutor [\#158](https://github.com/bensheldon/good_job/pull/158) ([bensheldon](https://github.com/bensheldon))
- Add bin/test\_app executable for Rails debugging [\#157](https://github.com/bensheldon/good_job/pull/157) ([bensheldon](https://github.com/bensheldon))
- Extract Scheduler polling behavior to its own object [\#152](https://github.com/bensheldon/good_job/pull/152) ([bensheldon](https://github.com/bensheldon))

## [v1.3.0](https://github.com/bensheldon/good_job/tree/v1.3.0) (2020-10-03)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v1.2.6...v1.3.0)

**Implemented enhancements:**

- Lengthen default poll interval from 1 to 5 seconds [\#156](https://github.com/bensheldon/good_job/pull/156) ([bensheldon](https://github.com/bensheldon))
- Rename reperform\_jobs\_on\_standard\_error to retry\_on\_unhandled\_error [\#154](https://github.com/bensheldon/good_job/pull/154) ([morgoth](https://github.com/morgoth))

## [v1.2.6](https://github.com/bensheldon/good_job/tree/v1.2.6) (2020-09-29)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v1.2.5...v1.2.6)

**Implemented enhancements:**

- Preserve only failed jobs [\#136](https://github.com/bensheldon/good_job/issues/136)
- Add `GoodJob.preserve_job_records = :on_unhandled_error` option to only preserve jobs that errored [\#145](https://github.com/bensheldon/good_job/pull/145) ([morgoth](https://github.com/morgoth))

**Fixed bugs:**

- Fix LogSubscriber notifications for finished\_timer\_task and finished\_job\_task [\#148](https://github.com/bensheldon/good_job/pull/148) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- run-once guarantee? [\#151](https://github.com/bensheldon/good_job/issues/151)

**Merged pull requests:**

- Add info how to setup basic auth for engine [\#153](https://github.com/bensheldon/good_job/pull/153) ([morgoth](https://github.com/morgoth))
- Add documentation for Dashboard Rails::Engine [\#149](https://github.com/bensheldon/good_job/pull/149) ([bensheldon](https://github.com/bensheldon))
- Style cleanup to Job error handling [\#147](https://github.com/bensheldon/good_job/pull/147) ([bensheldon](https://github.com/bensheldon))
- Replace gerund titles in Readme [\#146](https://github.com/bensheldon/good_job/pull/146) ([bensheldon](https://github.com/bensheldon))
- Only allow Scheduler to be initialized with max\_threads and poll\_interval; remove full access to pool and timer\_task options [\#137](https://github.com/bensheldon/good_job/pull/137) ([bensheldon](https://github.com/bensheldon))

## [v1.2.5](https://github.com/bensheldon/good_job/tree/v1.2.5) (2020-09-17)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v1.2.4...v1.2.5)

**Implemented enhancements:**

- Use Zeitwerk for auto-loading [\#87](https://github.com/bensheldon/good_job/issues/87)
- Spike on data dashboard; pull in full Bootstrap CSS and JS [\#131](https://github.com/bensheldon/good_job/pull/131) ([bensheldon](https://github.com/bensheldon))

**Fixed bugs:**

- `poll-interval=-1` does not disable polling as intended [\#133](https://github.com/bensheldon/good_job/issues/133)
- Update Gemspec to reflect that GoodJob is not compatible with Rails 5.1 [\#143](https://github.com/bensheldon/good_job/pull/143) ([bensheldon](https://github.com/bensheldon))
- Prevent jobs hanging [\#141](https://github.com/bensheldon/good_job/pull/141) ([morgoth](https://github.com/morgoth))
- Add explicit require\_paths to gemspec for engine [\#134](https://github.com/bensheldon/good_job/pull/134) ([bensheldon](https://github.com/bensheldon))
- Use `connection.quote_table_name` and add spacing for SQL concatenation [\#124](https://github.com/bensheldon/good_job/pull/124) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- Lint - Introduce line character limits [\#122](https://github.com/bensheldon/good_job/issues/122)
- Jobs are not processed in multi schema setup. Apartment + GoodJob \( post 1.1.2 \) [\#117](https://github.com/bensheldon/good_job/issues/117)
- Host a documentation sprint [\#48](https://github.com/bensheldon/good_job/issues/48)

**Merged pull requests:**

- Test GoodJob against Rails HEAD [\#144](https://github.com/bensheldon/good_job/pull/144) ([bensheldon](https://github.com/bensheldon))
- Drop Ruby 2.4 support [\#142](https://github.com/bensheldon/good_job/pull/142) ([morgoth](https://github.com/morgoth))
- Remove arguments from perform method [\#140](https://github.com/bensheldon/good_job/pull/140) ([morgoth](https://github.com/morgoth))
- Extract "execute" method to reduce "perform" method complexity [\#138](https://github.com/bensheldon/good_job/pull/138) ([morgoth](https://github.com/morgoth))
- Correct example on how to configure multiple queues by command line. [\#135](https://github.com/bensheldon/good_job/pull/135) ([morgoth](https://github.com/morgoth))
- Update ActionMailer Job class, to match the default [\#130](https://github.com/bensheldon/good_job/pull/130) ([morgoth](https://github.com/morgoth))
- Add initial Engine scaffold [\#125](https://github.com/bensheldon/good_job/pull/125) ([bensheldon](https://github.com/bensheldon))
- Zeitwerk Loader Implementation [\#123](https://github.com/bensheldon/good_job/pull/123) ([gadimbaylisahil](https://github.com/gadimbaylisahil))
- Update code-level documentation [\#111](https://github.com/bensheldon/good_job/pull/111) ([bensheldon](https://github.com/bensheldon))

## [v1.2.4](https://github.com/bensheldon/good_job/tree/v1.2.4) (2020-09-01)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v1.2.3...v1.2.4)

**Implemented enhancements:**

- Add environment variable to mirror `cleanup_preserved_jobs --before-seconds-ago=SECONDS` [\#110](https://github.com/bensheldon/good_job/issues/110)
- Allow env variable config for cleanups [\#114](https://github.com/bensheldon/good_job/pull/114) ([gadimbaylisahil](https://github.com/gadimbaylisahil))

**Fixed bugs:**

- Better table name detection for Job queries [\#119](https://github.com/bensheldon/good_job/pull/119) ([gadimbaylisahil](https://github.com/gadimbaylisahil))

**Closed issues:**

- Remove unused PgLocks class [\#121](https://github.com/bensheldon/good_job/issues/121)
- Fix minor issue with CommandLine option links in README.md [\#116](https://github.com/bensheldon/good_job/issues/116)
- Unused .advisory\_lock\_details in PgLocks [\#105](https://github.com/bensheldon/good_job/issues/105)

**Merged pull requests:**

- Remove unused PgLocks class [\#120](https://github.com/bensheldon/good_job/pull/120) ([gadimbaylisahil](https://github.com/gadimbaylisahil))
- Fix readme CommandLine option links [\#115](https://github.com/bensheldon/good_job/pull/115) ([gadimbaylisahil](https://github.com/gadimbaylisahil))
- Have YARD render markdown files with GFM \(Github Flavored Markdown\) [\#113](https://github.com/bensheldon/good_job/pull/113) ([bensheldon](https://github.com/bensheldon))
- Add markdownlint to lint readme [\#109](https://github.com/bensheldon/good_job/pull/109) ([bensheldon](https://github.com/bensheldon))
- Remove unused method in PgLocks [\#107](https://github.com/bensheldon/good_job/pull/107) ([gadimbaylisahil](https://github.com/gadimbaylisahil))
- Re-organize Readme: frontload configuration, add Table of Contents  [\#106](https://github.com/bensheldon/good_job/pull/106) ([bensheldon](https://github.com/bensheldon))

## [v1.2.3](https://github.com/bensheldon/good_job/tree/v1.2.3) (2020-08-27)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v1.2.2...v1.2.3)

**Closed issues:**

- requiring more dependencies in then needed [\#103](https://github.com/bensheldon/good_job/issues/103)

**Merged pull requests:**

- stop depending on all rails libs [\#104](https://github.com/bensheldon/good_job/pull/104) ([thilo](https://github.com/thilo))

## [v1.2.2](https://github.com/bensheldon/good_job/tree/v1.2.2) (2020-08-27)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v1.2.1...v1.2.2)

**Implemented enhancements:**

- Run Github Action tests against Ruby 2.5, 2.6, 2.7 [\#100](https://github.com/bensheldon/good_job/issues/100)
- Name the thread pools [\#96](https://github.com/bensheldon/good_job/pull/96) ([sj26](https://github.com/sj26))

**Fixed bugs:**

- Freezes puma on code change [\#95](https://github.com/bensheldon/good_job/issues/95)
- Ruby 2.7 keyword arguments warning [\#93](https://github.com/bensheldon/good_job/issues/93)
- Return to using executor.wrap around Scheduler execution task [\#99](https://github.com/bensheldon/good_job/pull/99) ([bensheldon](https://github.com/bensheldon))

**Closed issues:**

- Add test for `rails g good_job:install` [\#57](https://github.com/bensheldon/good_job/issues/57)

**Merged pull requests:**

- Use more ActiveRecord in Lockable and not connection.execute [\#102](https://github.com/bensheldon/good_job/pull/102) ([bensheldon](https://github.com/bensheldon))
- Run CI tests on Ruby 2.5, 2.6, and 2.7 [\#101](https://github.com/bensheldon/good_job/pull/101) ([arku](https://github.com/arku))
- Fix Ruby 2.7 keyword arguments warning [\#98](https://github.com/bensheldon/good_job/pull/98) ([arku](https://github.com/arku))
- Remove executor/reloader for less interlocking [\#97](https://github.com/bensheldon/good_job/pull/97) ([sj26](https://github.com/sj26))
- Add test for `rails g good_job:install` [\#94](https://github.com/bensheldon/good_job/pull/94) ([arku](https://github.com/arku))

## [v1.2.1](https://github.com/bensheldon/good_job/tree/v1.2.1) (2020-08-21)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v1.2.0...v1.2.1)

**Fixed bugs:**

- undefined method `thread\_mattr\_accessor' when not requiring the Sprockets Railstie [\#85](https://github.com/bensheldon/good_job/issues/85)

**Closed issues:**

- Document comparison of GoodJob with other backends [\#51](https://github.com/bensheldon/good_job/issues/51)

**Merged pull requests:**

- Explicitly require thread\_mattr\_accessor from ActiveSupport [\#86](https://github.com/bensheldon/good_job/pull/86) ([bensheldon](https://github.com/bensheldon))
- Add comparison of other backends to Readme [\#84](https://github.com/bensheldon/good_job/pull/84) ([bensheldon](https://github.com/bensheldon))

## [v1.2.0](https://github.com/bensheldon/good_job/tree/v1.2.0) (2020-08-20)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v1.1.4...v1.2.0)

**Merged pull requests:**

- Document GoodJob module [\#83](https://github.com/bensheldon/good_job/pull/83) ([bensheldon](https://github.com/bensheldon))

## [v1.1.4](https://github.com/bensheldon/good_job/tree/v1.1.4) (2020-08-19)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v1.1.3...v1.1.4)

**Implemented enhancements:**

- Explicitly name threads for easier debugging [\#64](https://github.com/bensheldon/good_job/issues/64)
- Investigate Listen/Notify as alternative to polling [\#54](https://github.com/bensheldon/good_job/issues/54)

**Merged pull requests:**

- Add Postgres LISTEN/NOTIFY support [\#82](https://github.com/bensheldon/good_job/pull/82) ([bensheldon](https://github.com/bensheldon))
- Allow Schedulers to filter \#create\_thread to avoid flood of queries when running async with multiple schedulers [\#81](https://github.com/bensheldon/good_job/pull/81) ([bensheldon](https://github.com/bensheldon))
- Fully name scheduler threadpools and thread names; refactor CLI STDOUT [\#80](https://github.com/bensheldon/good_job/pull/80) ([bensheldon](https://github.com/bensheldon))

## [v1.1.3](https://github.com/bensheldon/good_job/tree/v1.1.3) (2020-08-14)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v1.1.2...v1.1.3)

**Fixed bugs:**

- Job exceptions not properly attached to good\_jobs record  [\#72](https://github.com/bensheldon/good_job/issues/72)

**Merged pull requests:**

- Capture errors via instrumentation from retry\_on and discard\_on [\#79](https://github.com/bensheldon/good_job/pull/79) ([bensheldon](https://github.com/bensheldon))
- Document GoodJob::Scheduler with Yard [\#78](https://github.com/bensheldon/good_job/pull/78) ([bensheldon](https://github.com/bensheldon))

## [v1.1.2](https://github.com/bensheldon/good_job/tree/v1.1.2) (2020-08-13)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v1.1.1...v1.1.2)

**Implemented enhancements:**

- Allow the omission of queue names within a scheduler [\#73](https://github.com/bensheldon/good_job/issues/73)

**Merged pull requests:**

- Allow named queues to be excluded with a minus [\#77](https://github.com/bensheldon/good_job/pull/77) ([bensheldon](https://github.com/bensheldon))

## [v1.1.1](https://github.com/bensheldon/good_job/tree/v1.1.1) (2020-08-12)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v1.1.0...v1.1.1)

**Implemented enhancements:**

- Allow multiple schedulers within the same process. e.g. `queues=mice:2,elephants:4` [\#45](https://github.com/bensheldon/good_job/issues/45)

**Merged pull requests:**

- Allow instantiation of multiple schedulers via --queues [\#76](https://github.com/bensheldon/good_job/pull/76) ([bensheldon](https://github.com/bensheldon))
- Extract options parsing to Configuration object [\#74](https://github.com/bensheldon/good_job/pull/74) ([bensheldon](https://github.com/bensheldon))

## [v1.1.0](https://github.com/bensheldon/good_job/tree/v1.1.0) (2020-08-10)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v1.0.3...v1.1.0)

**Closed issues:**

- Document reliability guarantees [\#59](https://github.com/bensheldon/good_job/issues/59)
- Document how to hook in exception monitor \(Sentry, Rollbar, etc\) [\#47](https://github.com/bensheldon/good_job/issues/47)
- Allow an Async mode [\#27](https://github.com/bensheldon/good_job/issues/27)

**Merged pull requests:**

- Add a callable hook on thread errors [\#71](https://github.com/bensheldon/good_job/pull/71) ([bensheldon](https://github.com/bensheldon))
- Clarify reliability guarantees [\#70](https://github.com/bensheldon/good_job/pull/70) ([bensheldon](https://github.com/bensheldon))
- Clean up Readme formatting; re-arrange tests for clarity and values [\#69](https://github.com/bensheldon/good_job/pull/69) ([bensheldon](https://github.com/bensheldon))
- Create an Async execution mode [\#68](https://github.com/bensheldon/good_job/pull/68) ([bensheldon](https://github.com/bensheldon))
- Move all stdout to LogSubscriber [\#67](https://github.com/bensheldon/good_job/pull/67) ([bensheldon](https://github.com/bensheldon))
- Allow schedulers to be restarted; separate unit tests from integration tests [\#66](https://github.com/bensheldon/good_job/pull/66) ([bensheldon](https://github.com/bensheldon))

## [v1.0.3](https://github.com/bensheldon/good_job/tree/v1.0.3) (2020-07-26)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v1.0.2...v1.0.3)

**Fixed bugs:**

- Preserve GoodJob::Jobs when a StandardError is raised [\#60](https://github.com/bensheldon/good_job/issues/60)

**Closed issues:**

- Have an initial setup generator [\#6](https://github.com/bensheldon/good_job/issues/6)

**Merged pull requests:**

- Re-perform a job if a StandardError bubbles up; better document job reliability [\#62](https://github.com/bensheldon/good_job/pull/62) ([bensheldon](https://github.com/bensheldon))
- Update the setup documentation to use correct bin setup command [\#61](https://github.com/bensheldon/good_job/pull/61) ([jm96441n](https://github.com/jm96441n))

## [v1.0.2](https://github.com/bensheldon/good_job/tree/v1.0.2) (2020-07-25)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v1.0.1...v1.0.2)

**Fixed bugs:**

- Fix counting of available execution threads [\#58](https://github.com/bensheldon/good_job/pull/58) ([bensheldon](https://github.com/bensheldon))

**Merged pull requests:**

- Add migration generator [\#56](https://github.com/bensheldon/good_job/pull/56) ([thedanbob](https://github.com/thedanbob))
- Fix migration script in readme [\#55](https://github.com/bensheldon/good_job/pull/55) ([thedanbob](https://github.com/thedanbob))

## [v1.0.1](https://github.com/bensheldon/good_job/tree/v1.0.1) (2020-07-22)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v1.0.0...v1.0.1)

**Merged pull requests:**

- Change threadpool idletime default to 60 seconds from 0 [\#49](https://github.com/bensheldon/good_job/pull/49) ([bensheldon](https://github.com/bensheldon))

## [v1.0.0](https://github.com/bensheldon/good_job/tree/v1.0.0) (2020-07-20)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v0.9.0...v1.0.0)

## [v0.9.0](https://github.com/bensheldon/good_job/tree/v0.9.0) (2020-07-20)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v0.8.2...v0.9.0)

**Merged pull requests:**

- Allow preservation of finished job records [\#46](https://github.com/bensheldon/good_job/pull/46) ([bensheldon](https://github.com/bensheldon))

## [v0.8.2](https://github.com/bensheldon/good_job/tree/v0.8.2) (2020-07-18)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v0.8.1...v0.8.2)

**Closed issues:**

- Add a job timeout configuration to time out jobs that have run too long [\#19](https://github.com/bensheldon/good_job/issues/19)

**Merged pull requests:**

- Run Github Action tests on PRs from forks [\#44](https://github.com/bensheldon/good_job/pull/44) ([bensheldon](https://github.com/bensheldon))
- Fix Rubygems homepage URL [\#43](https://github.com/bensheldon/good_job/pull/43) ([joshmn](https://github.com/joshmn))

## [v0.8.1](https://github.com/bensheldon/good_job/tree/v0.8.1) (2020-07-18)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v0.8.0...v0.8.1)

**Merged pull requests:**

- Move where\(scheduled\_at: Time.current\) into dynamic part of GoodJob::Job::Performer [\#42](https://github.com/bensheldon/good_job/pull/42) ([bensheldon](https://github.com/bensheldon))

## [v0.8.0](https://github.com/bensheldon/good_job/tree/v0.8.0) (2020-07-17)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v0.7.0...v0.8.0)

**Merged pull requests:**

- Replace Adapter inline boolean kwarg with execution\_mode instead [\#41](https://github.com/bensheldon/good_job/pull/41) ([bensheldon](https://github.com/bensheldon))

## [v0.7.0](https://github.com/bensheldon/good_job/tree/v0.7.0) (2020-07-16)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v0.6.0...v0.7.0)

**Closed issues:**

- Always store a default priority \(0\) and scheduled\_at\(Time.current\) [\#30](https://github.com/bensheldon/good_job/issues/30)

**Merged pull requests:**

- Add more examples to Readme [\#39](https://github.com/bensheldon/good_job/pull/39) ([bensheldon](https://github.com/bensheldon))
- Add additional Rubocops and lint [\#38](https://github.com/bensheldon/good_job/pull/38) ([bensheldon](https://github.com/bensheldon))
- Always store a default queue\_name, priority and scheduled\_at; index by queue\_name and scheduled\_at [\#37](https://github.com/bensheldon/good_job/pull/37) ([bensheldon](https://github.com/bensheldon))

## [v0.6.0](https://github.com/bensheldon/good_job/tree/v0.6.0) (2020-07-15)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v0.5.0...v0.6.0)

**Closed issues:**

- Improve the command line options [\#32](https://github.com/bensheldon/good_job/issues/32)
- Allow config.active\_job.queue\_adapter = :good\_job to work [\#5](https://github.com/bensheldon/good_job/issues/5)

**Merged pull requests:**

- Improve generation of changelog [\#36](https://github.com/bensheldon/good_job/pull/36) ([bensheldon](https://github.com/bensheldon))
- Update Github Action Workflow for Backlog Project Board [\#35](https://github.com/bensheldon/good_job/pull/35) ([bensheldon](https://github.com/bensheldon))
- Add configuration options to good\_job executable [\#33](https://github.com/bensheldon/good_job/pull/33) ([bensheldon](https://github.com/bensheldon))
- Extract Job querying behavior out of Scheduler [\#31](https://github.com/bensheldon/good_job/pull/31) ([bensheldon](https://github.com/bensheldon))
- Allow configuration of Rails queue adapter with `:good_job` [\#28](https://github.com/bensheldon/good_job/pull/28) ([bensheldon](https://github.com/bensheldon))

## [v0.5.0](https://github.com/bensheldon/good_job/tree/v0.5.0) (2020-07-13)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v0.4.0...v0.5.0)

**Merged pull requests:**

- Update development Ruby to 2.6.6 and gems [\#29](https://github.com/bensheldon/good_job/pull/29) ([bensheldon](https://github.com/bensheldon))

## [v0.4.0](https://github.com/bensheldon/good_job/tree/v0.4.0) (2020-03-31)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v0.3.0...v0.4.0)

**Merged pull requests:**

- Improve ActiveRecord usage for advisory locking [\#24](https://github.com/bensheldon/good_job/pull/24) ([bensheldon](https://github.com/bensheldon))
- Remove support for Rails 5.1 [\#23](https://github.com/bensheldon/good_job/pull/23) ([bensheldon](https://github.com/bensheldon))

## [v0.3.0](https://github.com/bensheldon/good_job/tree/v0.3.0) (2020-03-22)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v0.2.2...v0.3.0)

**Merged pull requests:**

- Update development Ruby to 2.6.5 [\#22](https://github.com/bensheldon/good_job/pull/22) ([bensheldon](https://github.com/bensheldon))
- Simplify the internal API, removing JobWrapper and InlineScheduler [\#21](https://github.com/bensheldon/good_job/pull/21) ([bensheldon](https://github.com/bensheldon))
- Generate a new future for every executed job [\#20](https://github.com/bensheldon/good_job/pull/20) ([bensheldon](https://github.com/bensheldon))
- Configuration for maximum number of job execution threads [\#18](https://github.com/bensheldon/good_job/pull/18) ([bensheldon](https://github.com/bensheldon))

## [v0.2.2](https://github.com/bensheldon/good_job/tree/v0.2.2) (2020-03-08)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v0.2.1...v0.2.2)

**Merged pull requests:**

- Gracefully shutdown Scheduler when executable receives TERM or INT [\#17](https://github.com/bensheldon/good_job/pull/17) ([bensheldon](https://github.com/bensheldon))
- Update Appraisals [\#16](https://github.com/bensheldon/good_job/pull/16) ([bensheldon](https://github.com/bensheldon))

## [v0.2.1](https://github.com/bensheldon/good_job/tree/v0.2.1) (2020-03-07)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v0.2.0...v0.2.1)

**Merged pull requests:**

- Clean up Gemspec [\#15](https://github.com/bensheldon/good_job/pull/15) ([bensheldon](https://github.com/bensheldon))
- Set up Rubocop [\#14](https://github.com/bensheldon/good_job/pull/14) ([bensheldon](https://github.com/bensheldon))
- Add pg gem as explicit dependency [\#13](https://github.com/bensheldon/good_job/pull/13) ([bensheldon](https://github.com/bensheldon))
- Bump nokogiri from 1.10.7 to 1.10.9 [\#12](https://github.com/bensheldon/good_job/pull/12) ([dependabot[bot]](https://github.com/apps/dependabot))
- Add Appraisal with tests for Rails 5.1, 5.2, 6.0 [\#11](https://github.com/bensheldon/good_job/pull/11) ([bensheldon](https://github.com/bensheldon))

## [v0.2.0](https://github.com/bensheldon/good_job/tree/v0.2.0) (2020-03-06)

[Full Changelog](https://github.com/bensheldon/good_job/compare/v0.1.0...v0.2.0)

**Merged pull requests:**

- Use Rails.logger and ActiveSupport::Notifications for logging instead of puts [\#10](https://github.com/bensheldon/good_job/pull/10) ([bensheldon](https://github.com/bensheldon))
- Remove minitest files [\#9](https://github.com/bensheldon/good_job/pull/9) ([bensheldon](https://github.com/bensheldon))
- Use scheduled\_at and priority for scheduling [\#8](https://github.com/bensheldon/good_job/pull/8) ([bensheldon](https://github.com/bensheldon))
- Create Github Action workflow for PRs and Issues [\#7](https://github.com/bensheldon/good_job/pull/7) ([bensheldon](https://github.com/bensheldon))

## [v0.1.0](https://github.com/bensheldon/good_job/tree/v0.1.0) (2020-03-03)

[Full Changelog](https://github.com/bensheldon/good_job/compare/6866006239f1a6b7fcb7103f5df60d904952fb84...v0.1.0)

**Merged pull requests:**

- Add executable with Thor [\#4](https://github.com/bensheldon/good_job/pull/4) ([bensheldon](https://github.com/bensheldon))
- Refactor adapter enqueing methods; expand Readme, tests, editorconfig [\#3](https://github.com/bensheldon/good_job/pull/3) ([bensheldon](https://github.com/bensheldon))
- Fetch new jobs within the worker thread itself; incrementally grow worker threads [\#2](https://github.com/bensheldon/good_job/pull/2) ([bensheldon](https://github.com/bensheldon))
- Set up Github Workflows for tests [\#1](https://github.com/bensheldon/good_job/pull/1) ([bensheldon](https://github.com/bensheldon))



\* *This Changelog was automatically generated by [github_changelog_generator](https://github.com/github-changelog-generator/github-changelog-generator)*
