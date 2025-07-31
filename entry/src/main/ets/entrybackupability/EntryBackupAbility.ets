import { BackupExtensionAbility, BundleVersion } from '@kit.CoreFileKit';

//应用数据备份和恢复
export default class EntryBackupAbility extends BackupExtensionAbility {
  async onBackup() {
    //hilog.info(DOMAIN, 'testTag', 'onBackup ok');
    await Promise.resolve();
  }

  async onRestore(bundleVersion: BundleVersion) {
    //hilog.info(DOMAIN, 'testTag', 'onRestore ok %{public}s', JSON.stringify(bundleVersion));
    await Promise.resolve();
  }
}