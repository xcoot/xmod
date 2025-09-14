.class public final Lcom/android/server/backup/BackupAgentTimeoutParameters;
.super Landroid/util/KeyValueSettingObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEFAULT_FULL_BACKUP_AGENT_TIMEOUT_MILLIS:J = 0x493e0L

.field public static final DEFAULT_KV_BACKUP_AGENT_TIMEOUT_MILLIS:J = 0x7530L

.field public static final DEFAULT_QUOTA_EXCEEDED_TIMEOUT_MILLIS:J = 0xbb8L

.field public static final DEFAULT_RESTORE_AGENT_FINISHED_TIMEOUT_MILLIS:J = 0x7530L

.field public static final DEFAULT_RESTORE_AGENT_TIMEOUT_MILLIS:J = 0xea60L

.field public static final DEFAULT_RESTORE_SESSION_TIMEOUT_MILLIS:J = 0xea60L

.field public static final DEFAULT_RESTORE_SYSTEM_AGENT_TIMEOUT_MILLIS:J = 0x2bf20L

.field public static final DEFAULT_SHARED_BACKUP_AGENT_TIMEOUT_MILLIS:J = 0x1b7740L

.field public static final SETTING:Ljava/lang/String; = "backup_agent_timeout_parameters"

.field public static final SETTING_FULL_BACKUP_AGENT_TIMEOUT_MILLIS:Ljava/lang/String; = "full_backup_agent_timeout_millis"

.field public static final SETTING_KV_BACKUP_AGENT_TIMEOUT_MILLIS:Ljava/lang/String; = "kv_backup_agent_timeout_millis"

.field public static final SETTING_QUOTA_EXCEEDED_TIMEOUT_MILLIS:Ljava/lang/String; = "quota_exceeded_timeout_millis"

.field public static final SETTING_RESTORE_AGENT_FINISHED_TIMEOUT_MILLIS:Ljava/lang/String; = "restore_agent_finished_timeout_millis"

.field public static final SETTING_RESTORE_AGENT_TIMEOUT_MILLIS:Ljava/lang/String; = "restore_agent_timeout_millis"

.field public static final SETTING_RESTORE_SESSION_TIMEOUT_MILLIS:Ljava/lang/String; = "restore_session_timeout_millis"

.field public static final SETTING_RESTORE_SYSTEM_AGENT_TIMEOUT_MILLIS:Ljava/lang/String; = "restore_system_agent_timeout_millis"

.field public static final SETTING_SHARED_BACKUP_AGENT_TIMEOUT_MILLIS:Ljava/lang/String; = "shared_backup_agent_timeout_millis"


# instance fields
.field public mFullBackupAgentTimeoutMillis:J

.field public mKvBackupAgentTimeoutMillis:J

.field public final mLock:Ljava/lang/Object;

.field public mQuotaExceededTimeoutMillis:J

.field public mRestoreAgentFinishedTimeoutMillis:J

.field public mRestoreAgentTimeoutMillis:J

.field public mRestoreSessionTimeoutMillis:J

.field public mRestoreSystemAgentTimeoutMillis:J

.field public mSharedBackupAgentTimeoutMillis:J


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 1

    .line 1
    const-string v0, "backup_agent_timeout_parameters"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p1, p2, v0}, Landroid/util/KeyValueSettingObserver;-><init>(Landroid/os/Handler;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 8
    .line 9
    .line 10
    new-instance p1, Ljava/lang/Object;

    .line 11
    .line 12
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final getFullBackupAgentTimeoutMillis()J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mFullBackupAgentTimeoutMillis:J

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-wide v1

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public final getKvBackupAgentTimeoutMillis()J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mKvBackupAgentTimeoutMillis:J

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-wide v1

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public final getQuotaExceededTimeoutMillis()J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mQuotaExceededTimeoutMillis:J

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-wide v1

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public final getRestoreAgentTimeoutMillis(I)J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-wide p0, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mRestoreSystemAgentTimeoutMillis:J

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    iget-wide p0, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mRestoreAgentTimeoutMillis:J

    .line 16
    .line 17
    :goto_0
    monitor-exit v0

    .line 18
    return-wide p0

    .line 19
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p0
.end method

.method public final getRestoreSessionTimeoutMillis()J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mRestoreSessionTimeoutMillis:J

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-wide v1

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public final getSettingValue(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "backup_agent_timeout_parameters"

    .line 2
    .line 3
    invoke-static {p1, p0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final update(Landroid/util/KeyValueListParser;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string/jumbo v1, "kv_backup_agent_timeout_millis"

    .line 5
    .line 6
    .line 7
    const-wide/16 v2, 0x7530

    .line 8
    .line 9
    invoke-virtual {p1, v1, v2, v3}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v4

    .line 13
    iput-wide v4, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mKvBackupAgentTimeoutMillis:J

    .line 14
    .line 15
    const-string/jumbo v1, "full_backup_agent_timeout_millis"

    .line 16
    .line 17
    .line 18
    const-wide/32 v4, 0x493e0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v1, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 22
    .line 23
    .line 24
    move-result-wide v4

    .line 25
    iput-wide v4, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mFullBackupAgentTimeoutMillis:J

    .line 26
    .line 27
    const-string/jumbo v1, "shared_backup_agent_timeout_millis"

    .line 28
    .line 29
    .line 30
    const-wide/32 v4, 0x1b7740

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v1, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 34
    .line 35
    .line 36
    move-result-wide v4

    .line 37
    iput-wide v4, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mSharedBackupAgentTimeoutMillis:J

    .line 38
    .line 39
    const-string/jumbo v1, "restore_agent_timeout_millis"

    .line 40
    .line 41
    .line 42
    const-wide/32 v4, 0xea60

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v1, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 46
    .line 47
    .line 48
    move-result-wide v6

    .line 49
    iput-wide v6, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mRestoreAgentTimeoutMillis:J

    .line 50
    .line 51
    const-string/jumbo v1, "restore_system_agent_timeout_millis"

    .line 52
    .line 53
    .line 54
    const-wide/32 v6, 0x2bf20

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v1, v6, v7}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 58
    .line 59
    .line 60
    move-result-wide v6

    .line 61
    iput-wide v6, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mRestoreSystemAgentTimeoutMillis:J

    .line 62
    .line 63
    const-string/jumbo v1, "restore_agent_finished_timeout_millis"

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v1, v2, v3}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 67
    .line 68
    .line 69
    move-result-wide v1

    .line 70
    iput-wide v1, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mRestoreAgentFinishedTimeoutMillis:J

    .line 71
    .line 72
    const-string/jumbo v1, "restore_session_timeout_millis"

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v1, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 76
    .line 77
    .line 78
    move-result-wide v1

    .line 79
    iput-wide v1, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mRestoreSessionTimeoutMillis:J

    .line 80
    .line 81
    const-string/jumbo v1, "quota_exceeded_timeout_millis"

    .line 82
    .line 83
    .line 84
    const-wide/16 v2, 0xbb8

    .line 85
    .line 86
    invoke-virtual {p1, v1, v2, v3}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 87
    .line 88
    .line 89
    move-result-wide v1

    .line 90
    iput-wide v1, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mQuotaExceededTimeoutMillis:J

    .line 91
    .line 92
    monitor-exit v0

    .line 93
    return-void

    .line 94
    :catchall_0
    move-exception p0

    .line 95
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    throw p0
.end method
