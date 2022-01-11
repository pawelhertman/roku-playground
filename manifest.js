const baseManifest = require('@dazn/kopytko-packager/base-manifest.js');

module.exports = {
  ...baseManifest,
  title: 'Roku Playground app',
  ui_resolutions: 'fhd',
  bsprof_data_dest: 'network',
  bsprof_enable: 1,
  bsprof_enable_mem: 1,
  bsprof_enable_lines: 1,
//   bsprof_pause_on_start: 1,
  rsg_version: '1.2'
}