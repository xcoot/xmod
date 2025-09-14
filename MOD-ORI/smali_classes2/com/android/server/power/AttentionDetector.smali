.class public final Lcom/android/server/power/AttentionDetector;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field protected mAttentionManager:Landroid/attention/AttentionManagerInternal;

.field mCallback:Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;

.field public final mConsecutiveTimeoutExtendedCount:Ljava/util/concurrent/atomic/AtomicLong;

.field protected mContentResolver:Landroid/content/ContentResolver;

.field public mContext:Landroid/content/Context;

.field protected mDefaultMaximumExtensionMillis:J

.field public mEffectivePostDimTimeoutMillis:J

.field public mIsSettingEnabled:Z

.field public mLastActedOnNextScreenDimming:J

.field public mLastUserActivityTime:J

.field public final mLock:Ljava/lang/Object;

.field public mMaximumExtensionMillis:J

.field public final mOnUserAttention:Ljava/lang/Runnable;

.field protected mPreDimCheckDurationMillis:J

.field protected mRequestId:I

.field public final mRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mRequestedPostDimTimeoutMillis:J

.field public mWakefulness:I

.field protected mWindowManager:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda1;Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/power/AttentionDetector;->mConsecutiveTimeoutExtendedCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/server/power/AttentionDetector;->mOnUserAttention:Ljava/lang/Runnable;

    .line 14
    .line 15
    iput-object p2, p0, Lcom/android/server/power/AttentionDetector;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    const/4 p2, 0x0

    .line 20
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/android/server/power/AttentionDetector;->mRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    .line 25
    iput p2, p0, Lcom/android/server/power/AttentionDetector;->mRequestId:I

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    iput p1, p0, Lcom/android/server/power/AttentionDetector;->mWakefulness:I

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 4

    .line 1
    const-string v0, "AttentionDetector:"

    .line 2
    .line 3
    const-string v1, " mIsSettingEnabled="

    .line 4
    .line 5
    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-boolean v1, p0, Lcom/android/server/power/AttentionDetector;->mIsSettingEnabled:Z

    .line 10
    .line 11
    const-string v2, " mMaxExtensionMillis="

    .line 12
    .line 13
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-wide v1, p0, Lcom/android/server/power/AttentionDetector;->mMaximumExtensionMillis:J

    .line 18
    .line 19
    const-string v3, " mPreDimCheckDurationMillis="

    .line 20
    .line 21
    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-wide v1, p0, Lcom/android/server/power/AttentionDetector;->mPreDimCheckDurationMillis:J

    .line 26
    .line 27
    const-string v3, " mEffectivePostDimTimeout="

    .line 28
    .line 29
    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-wide v1, p0, Lcom/android/server/power/AttentionDetector;->mEffectivePostDimTimeoutMillis:J

    .line 34
    .line 35
    const-string v3, " mLastUserActivityTime(excludingAttention)="

    .line 36
    .line 37
    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-wide v1, p0, Lcom/android/server/power/AttentionDetector;->mLastUserActivityTime:J

    .line 42
    .line 43
    const-string v3, " mAttentionServiceSupported="

    .line 44
    .line 45
    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p0}, Lcom/android/server/power/AttentionDetector;->isAttentionServiceSupported()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v1, " mRequested="

    .line 66
    .line 67
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object p0, p0, Lcom/android/server/power/AttentionDetector;->mRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 71
    .line 72
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public getMaxExtensionMillis()J
    .locals 4

    .line 1
    const-string/jumbo v0, "max_extension_millis"

    .line 2
    .line 3
    .line 4
    iget-wide v1, p0, Lcom/android/server/power/AttentionDetector;->mDefaultMaximumExtensionMillis:J

    .line 5
    .line 6
    const-string v3, "attention_manager_service"

    .line 7
    .line 8
    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    const-wide/16 v2, 0x0

    .line 13
    .line 14
    cmp-long v2, v0, v2

    .line 15
    .line 16
    if-ltz v2, :cond_1

    .line 17
    .line 18
    const-wide/32 v2, 0x36ee80

    .line 19
    .line 20
    .line 21
    cmp-long v2, v0, v2

    .line 22
    .line 23
    if-lez v2, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-wide v0

    .line 27
    :cond_1
    :goto_0
    const-string v0, "AttentionDetector"

    .line 28
    .line 29
    const-string v1, "Bad flag value supplied for: max_extension_millis"

    .line 30
    .line 31
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    iget-wide v0, p0, Lcom/android/server/power/AttentionDetector;->mDefaultMaximumExtensionMillis:J

    .line 35
    .line 36
    return-wide v0
.end method

.method public getPostDimCheckDurationMillis()J
    .locals 7

    .line 1
    const-string p0, "attention_manager_service"

    .line 2
    .line 3
    const-string/jumbo v0, "post_dim_check_duration_millis"

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    invoke-static {p0, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 9
    .line 10
    .line 11
    move-result-wide v3

    .line 12
    cmp-long p0, v3, v1

    .line 13
    .line 14
    if-ltz p0, :cond_1

    .line 15
    .line 16
    const-wide/16 v5, 0x2710

    .line 17
    .line 18
    cmp-long p0, v3, v5

    .line 19
    .line 20
    if-lez p0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-wide v3

    .line 24
    :cond_1
    :goto_0
    const-string p0, "AttentionDetector"

    .line 25
    .line 26
    const-string v0, "Bad flag value supplied for: post_dim_check_duration_millis"

    .line 27
    .line 28
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    return-wide v1
.end method

.method public getPreDimCheckDurationMillis()J
    .locals 7

    .line 1
    const-string p0, "attention_manager_service"

    .line 2
    .line 3
    const-string/jumbo v0, "pre_dim_check_duration_millis"

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x7d0

    .line 7
    .line 8
    invoke-static {p0, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 9
    .line 10
    .line 11
    move-result-wide v3

    .line 12
    const-wide/16 v5, 0x0

    .line 13
    .line 14
    cmp-long p0, v3, v5

    .line 15
    .line 16
    if-ltz p0, :cond_1

    .line 17
    .line 18
    const-wide/16 v5, 0x32c8

    .line 19
    .line 20
    cmp-long p0, v3, v5

    .line 21
    .line 22
    if-lez p0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-wide v3

    .line 26
    :cond_1
    :goto_0
    const-string p0, "AttentionDetector"

    .line 27
    .line 28
    const-string v0, "Bad flag value supplied for: pre_dim_check_duration_millis"

    .line 29
    .line 30
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    return-wide v1
.end method

.method public isAttentionServiceSupported()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/AttentionDetector;->mAttentionManager:Landroid/attention/AttentionManagerInternal;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/attention/AttentionManagerInternal;->isAttentionServiceSupported()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method public final readValuesFromDeviceConfig()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/power/AttentionDetector;->getMaxExtensionMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/android/server/power/AttentionDetector;->mMaximumExtensionMillis:J

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/power/AttentionDetector;->getPreDimCheckDurationMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iput-wide v0, p0, Lcom/android/server/power/AttentionDetector;->mPreDimCheckDurationMillis:J

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/power/AttentionDetector;->getPostDimCheckDurationMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    iput-wide v0, p0, Lcom/android/server/power/AttentionDetector;->mRequestedPostDimTimeoutMillis:J

    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string/jumbo v1, "readValuesFromDeviceConfig():\nmMaximumExtensionMillis="

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-wide v1, p0, Lcom/android/server/power/AttentionDetector;->mMaximumExtensionMillis:J

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v1, "\nmPreDimCheckDurationMillis="

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-wide v1, p0, Lcom/android/server/power/AttentionDetector;->mPreDimCheckDurationMillis:J

    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v1, "\nmRequestedPostDimTimeoutMillis="

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-wide v1, p0, Lcom/android/server/power/AttentionDetector;->mRequestedPostDimTimeoutMillis:J

    .line 48
    .line 49
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    const-string v0, "AttentionDetector"

    .line 57
    .line 58
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final resetConsecutiveExtensionCount()V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/power/AttentionDetector;->mConsecutiveTimeoutExtendedCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    cmp-long p0, v2, v0

    .line 10
    .line 11
    if-lez p0, :cond_0

    .line 12
    .line 13
    const/16 p0, 0xa8

    .line 14
    .line 15
    invoke-static {p0, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJ)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final systemReady(Landroid/content/Context;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lcom/android/server/power/AttentionDetector;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/power/AttentionDetector;->updateEnabledFromSettings(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/android/server/power/AttentionDetector;->mContentResolver:Landroid/content/ContentResolver;

    .line 11
    .line 12
    const-class v0, Landroid/attention/AttentionManagerInternal;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroid/attention/AttentionManagerInternal;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/server/power/AttentionDetector;->mAttentionManager:Landroid/attention/AttentionManagerInternal;

    .line 21
    .line 22
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/power/AttentionDetector;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const v1, 0x10e002e

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    int-to-long v0, v0

    .line 44
    iput-wide v0, p0, Lcom/android/server/power/AttentionDetector;->mDefaultMaximumExtensionMillis:J

    .line 45
    .line 46
    :try_start_0
    new-instance v0, Lcom/android/server/power/AttentionDetector$UserSwitchObserver;

    .line 47
    .line 48
    invoke-direct {v0, p0}, Lcom/android/server/power/AttentionDetector$UserSwitchObserver;-><init>(Lcom/android/server/power/AttentionDetector;)V

    .line 49
    .line 50
    .line 51
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const-string v2, "AttentionDetector"

    .line 56
    .line 57
    invoke-interface {v1, v0, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    :catch_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const-string v1, "adaptive_sleep"

    .line 65
    .line 66
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    new-instance v2, Lcom/android/server/power/AttentionDetector$1;

    .line 71
    .line 72
    new-instance v3, Landroid/os/Handler;

    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 79
    .line 80
    .line 81
    invoke-direct {v2, p0, v3, p1}, Lcom/android/server/power/AttentionDetector$1;-><init>(Lcom/android/server/power/AttentionDetector;Landroid/os/Handler;Landroid/content/Context;)V

    .line 82
    .line 83
    .line 84
    const/4 v3, -0x1

    .line 85
    const/4 v4, 0x0

    .line 86
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/android/server/power/AttentionDetector;->readValuesFromDeviceConfig()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    new-instance v0, Lcom/android/server/power/AttentionDetector$$ExternalSyntheticLambda0;

    .line 97
    .line 98
    invoke-direct {v0, p0}, Lcom/android/server/power/AttentionDetector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/AttentionDetector;)V

    .line 99
    .line 100
    .line 101
    const-string p0, "attention_manager_service"

    .line 102
    .line 103
    invoke-static {p0, p1, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public updateEnabledFromSettings(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, -0x2

    .line 6
    const-string v1, "adaptive_sleep"

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {p1, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/4 v0, 0x1

    .line 14
    if-ne p1, v0, :cond_0

    .line 15
    .line 16
    move v2, v0

    .line 17
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/power/AttentionDetector;->mIsSettingEnabled:Z

    .line 18
    .line 19
    return-void
.end method
