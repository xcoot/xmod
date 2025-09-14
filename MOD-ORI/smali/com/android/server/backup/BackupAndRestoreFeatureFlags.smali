.class public abstract Lcom/android/server/backup/BackupAndRestoreFeatureFlags;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static getBackupTransportFutureTimeoutMillis()J
    .locals 4

    .line 1
    const-string v0, "backup_transport_future_timeout_millis"

    .line 2
    .line 3
    const-wide/32 v1, 0x927c0

    .line 4
    .line 5
    .line 6
    const-string v3, "backup_and_restore"

    .line 7
    .line 8
    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    return-wide v0
.end method
