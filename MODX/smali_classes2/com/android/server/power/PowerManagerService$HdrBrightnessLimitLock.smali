.class public final Lcom/android/server/power/PowerManagerService$HdrBrightnessLimitLock;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mBrightnessLimitPeriod:I

.field public final mLock:Landroid/os/IBinder;

.field public final mPid:I

.field public final mUid:I

.field public mUpperLimit:I

.field public final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$HdrBrightnessLimitLock;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/power/PowerManagerService$HdrBrightnessLimitLock;->mLock:Landroid/os/IBinder;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/power/PowerManagerService$HdrBrightnessLimitLock;->mUpperLimit:I

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/power/PowerManagerService$HdrBrightnessLimitLock;->mBrightnessLimitPeriod:I

    .line 11
    .line 12
    iput p5, p0, Lcom/android/server/power/PowerManagerService$HdrBrightnessLimitLock;->mUid:I

    .line 13
    .line 14
    iput p6, p0, Lcom/android/server/power/PowerManagerService$HdrBrightnessLimitLock;->mPid:I

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    :try_start_0
    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    const-string p0, "PowerManagerService"

    .line 22
    .line 23
    const-string p1, "Failed to link HdrBrightnessLimitLock.mLock"

    .line 24
    .line 25
    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$HdrBrightnessLimitLock;->mLock:Landroid/os/IBinder;

    .line 3
    .line 4
    invoke-interface {v1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :catch_0
    const-string v1, "PowerManagerService"

    .line 9
    .line 10
    const-string v2, "Failed to unlink HdrBrightnessLimitLock.mLock"

    .line 11
    .line 12
    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$HdrBrightnessLimitLock;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 16
    .line 17
    iget-object v2, v1, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v2

    .line 20
    :try_start_1
    iget-object v3, v1, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessLimitLocks:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    const/16 p0, 0xc8

    .line 26
    .line 27
    const/4 v3, -0x1

    .line 28
    invoke-virtual {v1, v3, p0}, Lcom/android/server/power/PowerManagerService;->calculateHdrBrightnessLimitLocked(II)V

    .line 29
    .line 30
    .line 31
    iget p0, v1, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessLimitPeriod:I

    .line 32
    .line 33
    if-lez p0, :cond_2

    .line 34
    .line 35
    iget p0, v1, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessUpperLimit:I

    .line 36
    .line 37
    if-eq p0, v3, :cond_0

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    iget p0, v1, Lcom/android/server/power/PowerManagerService;->mScreenExtendedBrightnessMaximum:I

    .line 41
    .line 42
    :goto_1
    iput p0, v1, Lcom/android/server/power/PowerManagerService;->mTargetBrightnessForHdrLimit:I

    .line 43
    .line 44
    iget v3, v1, Lcom/android/server/power/PowerManagerService;->mLastRequestedLimitationOfHdrBrightness:I

    .line 45
    .line 46
    invoke-virtual {v1, p0, v3}, Lcom/android/server/power/PowerManagerService;->getStartingLimitationOfBrightness(II)I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    iput p0, v1, Lcom/android/server/power/PowerManagerService;->mLastRequestedLimitationOfHdrBrightness:I

    .line 51
    .line 52
    iget v3, v1, Lcom/android/server/power/PowerManagerService;->mTargetBrightnessForHdrLimit:I

    .line 53
    .line 54
    if-ne v3, p0, :cond_1

    .line 55
    .line 56
    iput-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessLimitRunning:Z

    .line 57
    .line 58
    iput v3, v1, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessUpperLimit:I

    .line 59
    .line 60
    iget-object p0, v1, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    .line 61
    .line 62
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessLimitRunnable:Lcom/android/server/power/PowerManagerService$6;

    .line 63
    .line 64
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 65
    .line 66
    .line 67
    iget p0, v1, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 68
    .line 69
    or-int/lit8 p0, p0, 0x20

    .line 70
    .line 71
    iput p0, v1, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 72
    .line 73
    invoke-virtual {v1}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    goto :goto_3

    .line 79
    :cond_1
    const/4 p0, 0x1

    .line 80
    iput-boolean p0, v1, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessLimitRunning:Z

    .line 81
    .line 82
    iget-object p0, v1, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    .line 83
    .line 84
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessLimitRunnable:Lcom/android/server/power/PowerManagerService$6;

    .line 85
    .line 86
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 87
    .line 88
    .line 89
    iget-object p0, v1, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    .line 90
    .line 91
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessLimitRunnable:Lcom/android/server/power/PowerManagerService$6;

    .line 92
    .line 93
    iget-object v1, v1, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 99
    .line 100
    .line 101
    move-result-wide v3

    .line 102
    invoke-virtual {p0, v0, v3, v4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_2
    iput-boolean v0, v1, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessLimitRunning:Z

    .line 107
    .line 108
    iget p0, v1, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessUpperLimit:I

    .line 109
    .line 110
    iput p0, v1, Lcom/android/server/power/PowerManagerService;->mLastRequestedLimitationOfHdrBrightness:I

    .line 111
    .line 112
    iget-object p0, v1, Lcom/android/server/power/PowerManagerService;->mHandler:Landroid/os/Handler;

    .line 113
    .line 114
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mHdrBrightnessLimitRunnable:Lcom/android/server/power/PowerManagerService$6;

    .line 115
    .line 116
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 117
    .line 118
    .line 119
    iget p0, v1, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 120
    .line 121
    or-int/lit8 p0, p0, 0x20

    .line 122
    .line 123
    iput p0, v1, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 124
    .line 125
    invoke-virtual {v1}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 126
    .line 127
    .line 128
    :goto_2
    monitor-exit v2

    .line 129
    return-void

    .line 130
    :goto_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, " mUpperLimit: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/power/PowerManagerService$HdrBrightnessLimitLock;->mUpperLimit:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " mBrightnessLimitPeriod: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/android/server/power/PowerManagerService$HdrBrightnessLimitLock;->mBrightnessLimitPeriod:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " mUid: "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lcom/android/server/power/PowerManagerService$HdrBrightnessLimitLock;->mUid:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, " mPid: "

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget p0, p0, Lcom/android/server/power/PowerManagerService$HdrBrightnessLimitLock;->mPid:I

    .line 39
    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0
.end method
