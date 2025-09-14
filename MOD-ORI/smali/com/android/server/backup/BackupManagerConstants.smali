.class public final Lcom/android/server/backup/BackupManagerConstants;
.super Landroid/util/KeyValueSettingObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final BACKUP_FINISHED_NOTIFICATION_RECEIVERS:Ljava/lang/String; = "backup_finished_notification_receivers"

.field public static final DEFAULT_BACKUP_FINISHED_NOTIFICATION_RECEIVERS:Ljava/lang/String; = ""

.field public static final DEFAULT_FULL_BACKUP_INTERVAL_MILLISECONDS:J = 0x5265c00L

.field public static final DEFAULT_FULL_BACKUP_REQUIRED_NETWORK_TYPE:I = 0x2

.field public static final DEFAULT_FULL_BACKUP_REQUIRE_CHARGING:Z = true

.field public static final DEFAULT_KEY_VALUE_BACKUP_FUZZ_MILLISECONDS:J = 0x927c0L

.field public static final DEFAULT_KEY_VALUE_BACKUP_INTERVAL_MILLISECONDS:J = 0xdbba00L

.field public static final DEFAULT_KEY_VALUE_BACKUP_REQUIRED_NETWORK_TYPE:I = 0x1

.field public static final DEFAULT_KEY_VALUE_BACKUP_REQUIRE_CHARGING:Z = true

.field public static final FULL_BACKUP_INTERVAL_MILLISECONDS:Ljava/lang/String; = "full_backup_interval_milliseconds"

.field public static final FULL_BACKUP_REQUIRED_NETWORK_TYPE:Ljava/lang/String; = "full_backup_required_network_type"

.field public static final FULL_BACKUP_REQUIRE_CHARGING:Ljava/lang/String; = "full_backup_require_charging"

.field public static final KEY_VALUE_BACKUP_FUZZ_MILLISECONDS:Ljava/lang/String; = "key_value_backup_fuzz_milliseconds"

.field public static final KEY_VALUE_BACKUP_INTERVAL_MILLISECONDS:Ljava/lang/String; = "key_value_backup_interval_milliseconds"

.field public static final KEY_VALUE_BACKUP_REQUIRED_NETWORK_TYPE:Ljava/lang/String; = "key_value_backup_required_network_type"

.field public static final KEY_VALUE_BACKUP_REQUIRE_CHARGING:Ljava/lang/String; = "key_value_backup_require_charging"


# instance fields
.field public mBackupFinishedNotificationReceivers:[Ljava/lang/String;

.field public mFullBackupIntervalMilliseconds:J

.field public mFullBackupRequireCharging:Z

.field public mFullBackupRequiredNetworkType:I

.field public mKeyValueBackupFuzzMilliseconds:J

.field public mKeyValueBackupIntervalMilliseconds:J

.field public mKeyValueBackupRequireCharging:Z

.field public mKeyValueBackupRequiredNetworkType:I


# virtual methods
.method public final declared-synchronized getFullBackupIntervalMilliseconds()J
    .locals 5

    .line 1
    const-string/jumbo v0, "getFullBackupIntervalMilliseconds(...) returns "

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    const-string v1, "BackupManagerConstants"

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-wide v3, p0, Lcom/android/server/backup/BackupManagerConstants;->mFullBackupIntervalMilliseconds:J

    .line 13
    .line 14
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    iget-wide v0, p0, Lcom/android/server/backup/BackupManagerConstants;->mFullBackupIntervalMilliseconds:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    monitor-exit p0

    .line 27
    return-wide v0

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    monitor-exit p0

    .line 30
    throw v0
.end method

.method public final declared-synchronized getKeyValueBackupIntervalMilliseconds()J
    .locals 5

    .line 1
    const-string/jumbo v0, "getKeyValueBackupIntervalMilliseconds(...) returns "

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    const-string v1, "BackupManagerConstants"

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-wide v3, p0, Lcom/android/server/backup/BackupManagerConstants;->mKeyValueBackupIntervalMilliseconds:J

    .line 13
    .line 14
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    iget-wide v0, p0, Lcom/android/server/backup/BackupManagerConstants;->mKeyValueBackupIntervalMilliseconds:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    monitor-exit p0

    .line 27
    return-wide v0

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    monitor-exit p0

    .line 30
    throw v0
.end method

.method public final getSettingValue(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/ContentResolver;->getUserId()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const-string v0, "backup_manager_constants"

    .line 6
    .line 7
    invoke-static {p1, v0, p0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final declared-synchronized update(Landroid/util/KeyValueListParser;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string/jumbo v0, "key_value_backup_interval_milliseconds"

    .line 3
    .line 4
    .line 5
    const-wide/32 v1, 0xdbba00

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0, v1, v2}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iput-wide v0, p0, Lcom/android/server/backup/BackupManagerConstants;->mKeyValueBackupIntervalMilliseconds:J

    .line 13
    .line 14
    const-string/jumbo v0, "key_value_backup_fuzz_milliseconds"

    .line 15
    .line 16
    .line 17
    const-wide/32 v1, 0x927c0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0, v1, v2}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    iput-wide v0, p0, Lcom/android/server/backup/BackupManagerConstants;->mKeyValueBackupFuzzMilliseconds:J

    .line 25
    .line 26
    const-string/jumbo v0, "key_value_backup_require_charging"

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    invoke-virtual {p1, v0, v1}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerConstants;->mKeyValueBackupRequireCharging:Z

    .line 35
    .line 36
    const-string/jumbo v0, "key_value_backup_required_network_type"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0, v1}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iput v0, p0, Lcom/android/server/backup/BackupManagerConstants;->mKeyValueBackupRequiredNetworkType:I

    .line 44
    .line 45
    const-string/jumbo v0, "full_backup_interval_milliseconds"

    .line 46
    .line 47
    .line 48
    const-wide/32 v2, 0x5265c00

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0, v2, v3}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 52
    .line 53
    .line 54
    move-result-wide v2

    .line 55
    iput-wide v2, p0, Lcom/android/server/backup/BackupManagerConstants;->mFullBackupIntervalMilliseconds:J

    .line 56
    .line 57
    const-string/jumbo v0, "full_backup_require_charging"

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0, v1}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerConstants;->mFullBackupRequireCharging:Z

    .line 65
    .line 66
    const-string/jumbo v0, "full_backup_required_network_type"

    .line 67
    .line 68
    .line 69
    const/4 v1, 0x2

    .line 70
    invoke-virtual {p1, v0, v1}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    iput v0, p0, Lcom/android/server/backup/BackupManagerConstants;->mFullBackupRequiredNetworkType:I

    .line 75
    .line 76
    const-string v0, "backup_finished_notification_receivers"

    .line 77
    .line 78
    const-string v1, ""

    .line 79
    .line 80
    invoke-virtual {p1, v0, v1}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_0

    .line 89
    .line 90
    const/4 p1, 0x0

    .line 91
    new-array p1, p1, [Ljava/lang/String;

    .line 92
    .line 93
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerConstants;->mBackupFinishedNotificationReceivers:[Ljava/lang/String;

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :catchall_0
    move-exception p1

    .line 97
    goto :goto_1

    .line 98
    :cond_0
    const-string v0, ":"

    .line 99
    .line 100
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerConstants;->mBackupFinishedNotificationReceivers:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    .line 106
    :goto_0
    monitor-exit p0

    .line 107
    return-void

    .line 108
    :goto_1
    monitor-exit p0

    .line 109
    throw p1
.end method
