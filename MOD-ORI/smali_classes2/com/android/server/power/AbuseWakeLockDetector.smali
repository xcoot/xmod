.class public final Lcom/android/server/power/AbuseWakeLockDetector;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final SEC_APP_PREFIX:[Ljava/lang/String;


# instance fields
.field public final mAm:Landroid/app/ActivityManager;

.field public final mCallback:Lcom/android/server/power/PowerManagerService$1;

.field public mIsAbuseWakeLockFound:Z

.field public final mLock:Ljava/lang/Object;

.field public final mPm:Landroid/content/pm/PackageManager;

.field public final mWms:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "com.sec."

    .line 2
    .line 3
    const-string v1, "com.samsung."

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/android/server/power/AbuseWakeLockDetector;->SEC_APP_PREFIX:[Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/PowerManagerService$1;Lcom/android/server/wm/WindowManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/AbuseWakeLockDetector;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/android/server/power/AbuseWakeLockDetector;->mPm:Landroid/content/pm/PackageManager;

    .line 11
    .line 12
    const-string p1, "activity"

    .line 13
    .line 14
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Landroid/app/ActivityManager;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/android/server/power/AbuseWakeLockDetector;->mAm:Landroid/app/ActivityManager;

    .line 21
    .line 22
    iput-object p4, p0, Lcom/android/server/power/AbuseWakeLockDetector;->mWms:Lcom/android/server/wm/WindowManagerService;

    .line 23
    .line 24
    iput-object p3, p0, Lcom/android/server/power/AbuseWakeLockDetector;->mCallback:Lcom/android/server/power/PowerManagerService$1;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final handleAbuseWakelockWhenUserActivityChanged(Ljava/util/ArrayList;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/power/AbuseWakeLockDetector;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/AbuseWakeLockDetector;->mIsAbuseWakeLockFound:Z

    .line 5
    .line 6
    if-nez v1, :cond_4

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    goto/16 :goto_3

    .line 15
    .line 16
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    new-instance v1, Lcom/android/server/power/AbuseWakeLockDetector$$ExternalSyntheticLambda0;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    new-instance v1, Lcom/android/server/power/AbuseWakeLockDetector$$ExternalSyntheticLambda1;

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-direct {v1, v2}, Lcom/android/server/power/AbuseWakeLockDetector$$ExternalSyntheticLambda1;-><init>(I)V

    .line 33
    .line 34
    .line 35
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Ljava/util/List;

    .line 48
    .line 49
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 50
    iget-object v0, p0, Lcom/android/server/power/AbuseWakeLockDetector;->mWms:Lcom/android/server/wm/WindowManagerService;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getVisibleWinSurfacePkgList()Ljava/util/ArrayList;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_1

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    new-instance v1, Lcom/android/server/power/AbuseWakeLockDetector$$ExternalSyntheticLambda2;

    .line 70
    .line 71
    invoke-direct {v1, p0, v0}, Lcom/android/server/power/AbuseWakeLockDetector$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/power/AbuseWakeLockDetector;Ljava/util/ArrayList;)V

    .line 72
    .line 73
    .line 74
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    new-instance v0, Lcom/android/server/power/AbuseWakeLockDetector$$ExternalSyntheticLambda1;

    .line 79
    .line 80
    const/4 v1, 0x1

    .line 81
    invoke-direct {v0, v1}, Lcom/android/server/power/AbuseWakeLockDetector$$ExternalSyntheticLambda1;-><init>(I)V

    .line 82
    .line 83
    .line 84
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-interface {p1}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    check-cast p1, Ljava/util/List;

    .line 101
    .line 102
    iget-object v0, p0, Lcom/android/server/power/AbuseWakeLockDetector;->mLock:Ljava/lang/Object;

    .line 103
    .line 104
    monitor-enter v0

    .line 105
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    xor-int/lit8 v1, v1, 0x1

    .line 110
    .line 111
    iput-boolean v1, p0, Lcom/android/server/power/AbuseWakeLockDetector;->mIsAbuseWakeLockFound:Z

    .line 112
    .line 113
    if-eqz v1, :cond_2

    .line 114
    .line 115
    iget-object p0, p0, Lcom/android/server/power/AbuseWakeLockDetector;->mCallback:Lcom/android/server/power/PowerManagerService$1;

    .line 116
    .line 117
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService$1;->onAbuseWakeLockAdded(Ljava/util/List;)V

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :catchall_0
    move-exception p0

    .line 122
    goto :goto_1

    .line 123
    :cond_2
    :goto_0
    monitor-exit v0

    .line 124
    return-void

    .line 125
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    throw p0

    .line 127
    :cond_3
    :goto_2
    return-void

    .line 128
    :catchall_1
    move-exception p0

    .line 129
    goto :goto_4

    .line 130
    :cond_4
    :goto_3
    :try_start_2
    monitor-exit v0

    .line 131
    return-void

    .line 132
    :goto_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 133
    throw p0
.end method

.method public final onUserActivity()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/power/AbuseWakeLockDetector;->mIsAbuseWakeLockFound:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/android/server/power/AbuseWakeLockDetector;->mIsAbuseWakeLockFound:Z

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/power/AbuseWakeLockDetector;->mCallback:Lcom/android/server/power/PowerManagerService$1;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const-string v0, "PowerManagerService"

    .line 14
    .line 15
    const-string v1, "clear abuse wakelock"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 21
    .line 22
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    new-instance v2, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda16;

    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    invoke-direct {v2, v3}, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda16;-><init>(I)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    new-instance v2, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda10;

    .line 39
    .line 40
    const/4 v3, 0x1

    .line 41
    invoke-direct {v2, v3, p0}, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda10;-><init>(ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 45
    .line 46
    .line 47
    iget p0, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 48
    .line 49
    or-int/lit8 p0, p0, 0x1

    .line 50
    .line 51
    iput p0, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 52
    .line 53
    :cond_0
    return-void
.end method
