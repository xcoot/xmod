.class public final Lcom/android/server/pm/SilentUpdatePolicy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final SILENT_UPDATE_THROTTLE_TIME_MS:J


# instance fields
.field public mAllowUnlimitedSilentUpdatesInstaller:Ljava/lang/String;

.field public final mSilentUpdateInfos:Landroid/util/ArrayMap;

.field public mSilentUpdateThrottleTimeMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-wide/16 v1, 0x1e

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sput-wide v0, Lcom/android/server/pm/SilentUpdatePolicy;->SILENT_UPDATE_THROTTLE_TIME_MS:J

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/pm/SilentUpdatePolicy;->mSilentUpdateInfos:Landroid/util/ArrayMap;

    .line 10
    .line 11
    sget-wide v0, Lcom/android/server/pm/SilentUpdatePolicy;->SILENT_UPDATE_THROTTLE_TIME_MS:J

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/android/server/pm/SilentUpdatePolicy;->mSilentUpdateThrottleTimeMs:J

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final isSilentUpdateAllowed(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object p2, p0, Lcom/android/server/pm/SilentUpdatePolicy;->mSilentUpdateInfos:Landroid/util/ArrayMap;

    .line 10
    .line 11
    monitor-enter p2

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/SilentUpdatePolicy;->mSilentUpdateInfos:Landroid/util/ArrayMap;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Ljava/lang/Long;

    .line 19
    .line 20
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 24
    .line 25
    .line 26
    move-result-wide p1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const-wide/16 p1, -0x1

    .line 29
    .line 30
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/SilentUpdatePolicy;->mSilentUpdateInfos:Landroid/util/ArrayMap;

    .line 31
    .line 32
    monitor-enter v1

    .line 33
    :try_start_1
    iget-wide v2, p0, Lcom/android/server/pm/SilentUpdatePolicy;->mSilentUpdateThrottleTimeMs:J

    .line 34
    .line 35
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 37
    .line 38
    .line 39
    move-result-wide v4

    .line 40
    sub-long/2addr v4, p1

    .line 41
    cmp-long p0, v4, v2

    .line 42
    .line 43
    if-lez p0, :cond_2

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    const/4 v0, 0x0

    .line 47
    :goto_1
    return v0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    throw p0

    .line 51
    :catchall_1
    move-exception p0

    .line 52
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 53
    throw p0
.end method
