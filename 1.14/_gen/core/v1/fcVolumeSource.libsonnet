{
  local d = (import 'doc-util/main.libsonnet'),
  '#': d.pkg(name='fcVolumeSource', url='', help='Represents a Fibre Channel volume. Fibre Channel volumes can only be mounted as read/write once. Fibre Channel volumes support ownership management and SELinux relabeling.'),
  '#withFsType': d.fn(help='Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.', args=[d.arg(name='fsType', type=d.T.string)]),
  withFsType(fsType): { fsType: fsType },
  '#withLun': d.fn(help='Optional: FC target lun number', args=[d.arg(name='lun', type=d.T.integer)]),
  withLun(lun): { lun: lun },
  '#withReadOnly': d.fn(help='Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.', args=[d.arg(name='readOnly', type=d.T.boolean)]),
  withReadOnly(readOnly): { readOnly: readOnly },
  '#withTargetWWNs': d.fn(help='Optional: FC target worldwide names (WWNs)', args=[d.arg(name='targetWWNs', type=d.T.array)]),
  withTargetWWNs(targetWWNs): { targetWWNs: if std.isArray(v=targetWWNs) then targetWWNs else [targetWWNs] },
  '#withTargetWWNsMixin': d.fn(help='Optional: FC target worldwide names (WWNs)\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='targetWWNs', type=d.T.array)]),
  withTargetWWNsMixin(targetWWNs): { targetWWNs+: if std.isArray(v=targetWWNs) then targetWWNs else [targetWWNs] },
  '#withWwids': d.fn(help='Optional: FC volume world wide identifiers (wwids) Either wwids or combination of targetWWNs and lun must be set, but not both simultaneously.', args=[d.arg(name='wwids', type=d.T.array)]),
  withWwids(wwids): { wwids: if std.isArray(v=wwids) then wwids else [wwids] },
  '#withWwidsMixin': d.fn(help='Optional: FC volume world wide identifiers (wwids) Either wwids or combination of targetWWNs and lun must be set, but not both simultaneously.\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='wwids', type=d.T.array)]),
  withWwidsMixin(wwids): { wwids+: if std.isArray(v=wwids) then wwids else [wwids] },
  '#mixin': 'ignore',
  mixin: self
}