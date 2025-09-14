.class public final Lcom/android/server/content/SyncManagerConstants;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mInitialSyncRetryTimeInSeconds:I

.field public mKeyExemptionTempWhitelistDurationInSeconds:I

.field public final mLock:Ljava/lang/Object;

.field public mMaxRetriesWithAppStandbyExemption:I

.field public mMaxSyncRetryTimeInSeconds:I

.field public mRetryTimeIncreaseFactor:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 5
    new-instance v0, Ljava/lang/Object;

    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/android/server/content/SyncManagerConstants;->mLock:Ljava/lang/Object;

    .line 12
    const/16 v0, 0x1e

    .line 14
    iput v0, p0, Lcom/android/server/content/SyncManagerConstants;->mInitialSyncRetryTimeInSeconds:I

    .line 16
    const/high16 v0, 0x40000000    # 2.0f

    .line 18
    iput v0, p0, Lcom/android/server/content/SyncManagerConstants;->mRetryTimeIncreaseFactor:F

    .line 20
    const/16 v0, 0xe10

    .line 22
    iput v0, p0, Lcom/android/server/content/SyncManagerConstants;->mMaxSyncRetryTimeInSeconds:I

    .line 24
    const/4 v0, 0x5

    .line 25
    iput v0, p0, Lcom/android/server/content/SyncManagerConstants;->mMaxRetriesWithAppStandbyExemption:I

    .line 27
    const/16 v0, 0x258

    .line 29
    iput v0, p0, Lcom/android/server/content/SyncManagerConstants;->mKeyExemptionTempWhitelistDurationInSeconds:I

    .line 31
    iput-object p1, p0, Lcom/android/server/content/SyncManagerConstants;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/content/SyncManagerConstants;->refresh()V

    .line 4
    return-void
.end method

.method public final refresh()V
    .locals 6

    .line 1
    const-string v0, "Bad constants: "

    .line 3
    iget-object v1, p0, Lcom/android/server/content/SyncManagerConstants;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/android/server/content/SyncManagerConstants;->mContext:Landroid/content/Context;

    .line 8
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 11
    move-result-object v2

    .line 12
    const-string/jumbo v3, "sync_manager_constants"

    .line 15
    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    new-instance v3, Landroid/util/KeyValueListParser;

    .line 21
    const/16 v4, 0x2c

    .line 23
    invoke-direct {v3, v4}, Landroid/util/KeyValueListParser;-><init>(C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :try_start_1
    invoke-virtual {v3, v2}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_1

    .line 32
    :catch_0
    :try_start_2
    const-string v4, "SyncManagerConfig"

    .line 34
    new-instance v5, Ljava/lang/StringBuilder;

    .line 36
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    invoke-static {v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :goto_0
    const-string/jumbo v0, "initial_sync_retry_time_in_seconds"

    .line 52
    const/16 v2, 0x1e

    .line 54
    invoke-virtual {v3, v0, v2}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    .line 57
    move-result v0

    .line 58
    iput v0, p0, Lcom/android/server/content/SyncManagerConstants;->mInitialSyncRetryTimeInSeconds:I

    .line 60
    const-string/jumbo v0, "max_sync_retry_time_in_seconds"

    .line 63
    const/16 v2, 0xe10

    .line 65
    invoke-virtual {v3, v0, v2}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    .line 68
    move-result v0

    .line 69
    iput v0, p0, Lcom/android/server/content/SyncManagerConstants;->mMaxSyncRetryTimeInSeconds:I

    .line 71
    const-string/jumbo v0, "retry_time_increase_factor"

    .line 74
    const/high16 v2, 0x40000000    # 2.0f

    .line 76
    invoke-virtual {v3, v0, v2}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    .line 79
    move-result v0

    .line 80
    iput v0, p0, Lcom/android/server/content/SyncManagerConstants;->mRetryTimeIncreaseFactor:F

    .line 82
    const-string/jumbo v0, "max_retries_with_app_standby_exemption"

    .line 85
    const/4 v2, 0x5

    .line 86
    invoke-virtual {v3, v0, v2}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    .line 89
    move-result v0

    .line 90
    iput v0, p0, Lcom/android/server/content/SyncManagerConstants;->mMaxRetriesWithAppStandbyExemption:I

    .line 92
    const-string/jumbo v0, "exemption_temp_whitelist_duration_in_seconds"

    .line 95
    const/16 v2, 0x258

    .line 97
    invoke-virtual {v3, v0, v2}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    .line 100
    move-result v0

    .line 101
    iput v0, p0, Lcom/android/server/content/SyncManagerConstants;->mKeyExemptionTempWhitelistDurationInSeconds:I

    .line 103
    monitor-exit v1

    .line 104
    return-void

    .line 105
    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 106
    throw p0
.end method
