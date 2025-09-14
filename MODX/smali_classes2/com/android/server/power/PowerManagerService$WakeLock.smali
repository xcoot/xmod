.class public final Lcom/android/server/power/PowerManagerService$WakeLock;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mAcquireTime:J

.field public mCallback:Landroid/os/IWakeLockCallback;

.field public mConsecutiveAcquireCount:I

.field public mDisableReason:I

.field public mDisabled:Z

.field public mDisabledByFreecess:Z

.field public final mDisplayId:I

.field public mFlags:I

.field public mHistoryTag:Ljava/lang/String;

.field public final mLock:Landroid/os/IBinder;

.field public mNotifiedAcquired:Z

.field public mNotifiedLong:Z

.field public final mOwnerPid:I

.field public final mOwnerUid:I

.field public final mPackageName:Ljava/lang/String;

.field public mProximityNegativeDebounce:I

.field public mProximityPositiveDebounce:I

.field public mTag:Ljava/lang/String;

.field public final mUidState:Lcom/android/server/power/PowerManagerService$UidState;

.field public mWorkSource:Landroid/os/WorkSource;

.field public final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public static -$$Nest$mgetDisableReasonString(Lcom/android/server/power/PowerManagerService$WakeLock;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisableReason:I

    .line 7
    .line 8
    and-int/lit8 v1, v1, 0x1

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const-string v1, " nocached"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    :cond_0
    iget v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisableReason:I

    .line 18
    .line 19
    and-int/lit8 v1, v1, 0x2

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    const-string v1, " idlemode"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    :cond_1
    iget v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisableReason:I

    .line 29
    .line 30
    and-int/lit8 v1, v1, 0x4

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    const-string v1, " lowpwrst"

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    :cond_2
    iget v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisableReason:I

    .line 40
    .line 41
    and-int/lit8 v1, v1, 0x8

    .line 42
    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    const-string v1, " freecess"

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    :cond_3
    iget p0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisableReason:I

    .line 51
    .line 52
    and-int/lit8 p0, p0, 0x10

    .line 53
    .line 54
    if-eqz p0, :cond_4

    .line 55
    .line 56
    const-string p0, " gmsalarm"

    .line 57
    .line 58
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;IILcom/android/server/power/PowerManagerService$UidState;Landroid/os/IWakeLockCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 5
    .line 6
    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mProximityPositiveDebounce:I

    .line 8
    .line 9
    iput p1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mProximityNegativeDebounce:I

    .line 10
    .line 11
    iput-object p2, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    .line 12
    .line 13
    iput p3, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisplayId:I

    .line 14
    .line 15
    iput p4, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    .line 16
    .line 17
    iput-object p5, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    .line 18
    .line 19
    iput-object p6, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    .line 20
    .line 21
    sget-object p1, Lcom/android/server/power/PowerManagerService;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 22
    .line 23
    if-eqz p7, :cond_0

    .line 24
    .line 25
    new-instance p1, Landroid/os/WorkSource;

    .line 26
    .line 27
    invoke-direct {p1, p7}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p1, 0x0

    .line 32
    :goto_0
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    .line 33
    .line 34
    iput-object p8, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    .line 35
    .line 36
    iput p9, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    .line 37
    .line 38
    iput p10, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    .line 39
    .line 40
    iput-object p11, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mUidState:Lcom/android/server/power/PowerManagerService$UidState;

    .line 41
    .line 42
    iput-object p12, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mCallback:Landroid/os/IWakeLockCallback;

    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    :try_start_0
    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 50
    .line 51
    const-string p1, "Wakelock.mLock is already dead."

    .line 52
    .line 53
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p0
.end method


# virtual methods
.method public final binderDied()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    sget v1, Lcom/android/server/power/Slog;->$r8$clinit:I

    .line 10
    .line 11
    const-string v1, "PowerManagerService"

    .line 12
    .line 13
    const-string v2, "Failed to unlink Wakelock.mLock"

    .line 14
    .line 15
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    .line 17
    .line 18
    :goto_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 19
    .line 20
    sget-object v1, Lcom/android/server/power/PowerManagerService;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    const-string v1, "PowerManagerService"

    .line 26
    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v3, "[api] handleWakeLockDeath : release WakeLock : "

    .line 30
    .line 31
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 45
    .line 46
    monitor-enter v1

    .line 47
    :try_start_1
    iget-object v2, v0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-gez v2, :cond_0

    .line 54
    .line 55
    monitor-exit v1

    .line 56
    goto :goto_1

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto :goto_2

    .line 59
    :cond_0
    const/4 v3, -0x1

    .line 60
    invoke-virtual {v0, p0, v2, v3}, Lcom/android/server/power/PowerManagerService;->removeWakeLockNoUpdateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;II)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 64
    .line 65
    .line 66
    monitor-exit v1

    .line 67
    :goto_1
    return-void

    .line 68
    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    throw p0
.end method

.method public final dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .locals 9

    .line 1
    const-wide v0, 0x20b0000002fL

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget v2, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    .line 11
    .line 12
    const v3, 0xffff

    .line 13
    .line 14
    .line 15
    and-int/2addr v2, v3

    .line 16
    const-wide v3, 0x10e00000001L

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 22
    .line 23
    .line 24
    const-wide v2, 0x10900000002L

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-wide v2, 0x10b00000003L

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 40
    .line 41
    .line 42
    move-result-wide v2

    .line 43
    iget v4, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    .line 44
    .line 45
    const/high16 v5, 0x10000000

    .line 46
    .line 47
    and-int/2addr v4, v5

    .line 48
    const/4 v5, 0x0

    .line 49
    const/4 v6, 0x1

    .line 50
    if-eqz v4, :cond_0

    .line 51
    .line 52
    move v4, v6

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    move v4, v5

    .line 55
    :goto_0
    const-wide v7, 0x10800000001L

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 61
    .line 62
    .line 63
    iget v4, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    .line 64
    .line 65
    const/high16 v7, 0x20000000

    .line 66
    .line 67
    and-int/2addr v4, v7

    .line 68
    if-eqz v4, :cond_1

    .line 69
    .line 70
    move v4, v6

    .line 71
    goto :goto_1

    .line 72
    :cond_1
    move v4, v5

    .line 73
    :goto_1
    const-wide v7, 0x10800000002L

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 79
    .line 80
    .line 81
    iget v4, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    .line 82
    .line 83
    const/high16 v7, -0x80000000

    .line 84
    .line 85
    and-int/2addr v4, v7

    .line 86
    if-eqz v4, :cond_2

    .line 87
    .line 88
    move v5, v6

    .line 89
    :cond_2
    const-wide v6, 0x10800000003L

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 98
    .line 99
    .line 100
    const-wide v2, 0x10800000004L

    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    .line 106
    .line 107
    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 108
    .line 109
    .line 110
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    .line 111
    .line 112
    if-eqz v2, :cond_3

    .line 113
    .line 114
    const-wide v2, 0x10300000005L

    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    iget-wide v4, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    .line 120
    .line 121
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 122
    .line 123
    .line 124
    :cond_3
    const-wide v2, 0x10800000006L

    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    iget-boolean v4, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedLong:Z

    .line 130
    .line 131
    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 132
    .line 133
    .line 134
    const-wide v2, 0x10500000007L

    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    iget v4, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    .line 140
    .line 141
    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 142
    .line 143
    .line 144
    const-wide v2, 0x10500000008L

    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    iget v4, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    .line 150
    .line 151
    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 152
    .line 153
    .line 154
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    .line 155
    .line 156
    if-eqz p0, :cond_4

    .line 157
    .line 158
    const-wide v2, 0x10b00000009L

    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    invoke-virtual {p0, p1, v2, v3}, Landroid/os/WorkSource;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 164
    .line 165
    .line 166
    :cond_4
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 167
    .line 168
    .line 169
    return-void
.end method

.method public final getPowerGroupId()Ljava/lang/Integer;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/server/power/PowerManagerService;->mSystemReady:Z

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    if-eqz v1, :cond_2

    .line 7
    .line 8
    iget p0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisplayId:I

    .line 9
    .line 10
    if-ne p0, v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    iget p0, p0, Landroid/view/DisplayInfo;->displayGroupId:I

    .line 22
    .line 23
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_1
    const/4 p0, 0x0

    .line 29
    return-object p0

    .line 30
    :cond_2
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    .line 7
    .line 8
    const v2, 0xffff

    .line 9
    .line 10
    .line 11
    and-int/2addr v1, v2

    .line 12
    const/4 v2, 0x1

    .line 13
    if-eq v1, v2, :cond_7

    .line 14
    .line 15
    const/4 v2, 0x6

    .line 16
    if-eq v1, v2, :cond_6

    .line 17
    .line 18
    const/16 v2, 0xa

    .line 19
    .line 20
    if-eq v1, v2, :cond_5

    .line 21
    .line 22
    const/16 v2, 0x1a

    .line 23
    .line 24
    if-eq v1, v2, :cond_4

    .line 25
    .line 26
    const/16 v2, 0x20

    .line 27
    .line 28
    if-eq v1, v2, :cond_3

    .line 29
    .line 30
    const/16 v2, 0x40

    .line 31
    .line 32
    if-eq v1, v2, :cond_2

    .line 33
    .line 34
    const/16 v2, 0x80

    .line 35
    .line 36
    if-eq v1, v2, :cond_1

    .line 37
    .line 38
    const/16 v2, 0x100

    .line 39
    .line 40
    if-eq v1, v2, :cond_0

    .line 41
    .line 42
    const-string v1, "???                              "

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const-string v1, "SCREEN_TIMEOUT_OVERRIDE_WAKE_LOCK"

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const-string v1, "DRAW_WAKE_LOCK                   "

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const-string v1, "DOZE_WAKE_LOCK                   "

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    const-string v1, "PROXIMITY_SCREEN_OFF_WAKE_LOCK   "

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_4
    const-string v1, "FULL_WAKE_LOCK                   "

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_5
    const-string v1, "SCREEN_BRIGHT_WAKE_LOCK          "

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_6
    const-string v1, "SCREEN_DIM_WAKE_LOCK             "

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_7
    const-string v1, "PARTIAL_WAKE_LOCK                "

    .line 67
    .line 68
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v1, " \'"

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v1, "\'"

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    iget v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    .line 87
    .line 88
    const/high16 v2, 0x10000000

    .line 89
    .line 90
    and-int/2addr v2, v1

    .line 91
    if-eqz v2, :cond_8

    .line 92
    .line 93
    const-string v2, " ACQUIRE_CAUSES_WAKEUP"

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_8
    const-string v2, ""

    .line 97
    .line 98
    :goto_1
    const/high16 v3, 0x20000000

    .line 99
    .line 100
    and-int/2addr v1, v3

    .line 101
    if-eqz v1, :cond_9

    .line 102
    .line 103
    const-string v1, " ON_AFTER_RELEASE"

    .line 104
    .line 105
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    :cond_9
    iget v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    .line 110
    .line 111
    const/high16 v3, -0x80000000

    .line 112
    .line 113
    and-int/2addr v1, v3

    .line 114
    if-eqz v1, :cond_a

    .line 115
    .line 116
    const-string v1, " SYSTEM_WAKELOCK"

    .line 117
    .line 118
    invoke-static {v2, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    :cond_a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    .line 126
    .line 127
    if-eqz v1, :cond_b

    .line 128
    .line 129
    const-string v1, " DISABLED"

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    :cond_b
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    .line 135
    .line 136
    if-eqz v1, :cond_c

    .line 137
    .line 138
    const-string v1, " ACQ="

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    .line 144
    .line 145
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 146
    .line 147
    iget-object v3, v3, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    .line 148
    .line 149
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 153
    .line 154
    .line 155
    move-result-wide v3

    .line 156
    sub-long/2addr v1, v3

    .line 157
    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 158
    .line 159
    .line 160
    :cond_c
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedLong:Z

    .line 161
    .line 162
    if-eqz v1, :cond_d

    .line 163
    .line 164
    const-string v1, " LONG"

    .line 165
    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    :cond_d
    const-string v1, " (uid="

    .line 170
    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    iget v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    .line 175
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    iget v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    .line 180
    .line 181
    if-eqz v1, :cond_e

    .line 182
    .line 183
    const-string v1, " pid="

    .line 184
    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    iget v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    .line 189
    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    :cond_e
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    .line 194
    .line 195
    if-eqz v1, :cond_f

    .line 196
    .line 197
    const-string v1, " ws="

    .line 198
    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    .line 203
    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    :cond_f
    const-string v1, " displayId="

    .line 208
    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    iget v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisplayId:I

    .line 213
    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    const-string v1, " lock="

    .line 218
    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    .line 223
    .line 224
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 225
    .line 226
    .line 227
    move-result v1

    .line 228
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    iget v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mConsecutiveAcquireCount:I

    .line 236
    .line 237
    if-lez v1, :cond_10

    .line 238
    .line 239
    const-string v1, " acqCnt="

    .line 240
    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    iget p0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mConsecutiveAcquireCount:I

    .line 245
    .line 246
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    :cond_10
    const-string p0, ")"

    .line 250
    .line 251
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object p0

    .line 258
    return-object p0
.end method

.method public final updateProperties(IIILandroid/os/IWakeLockCallback;Landroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, " to "

    .line 8
    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    iget p7, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    .line 12
    .line 13
    if-ne p7, p2, :cond_2

    .line 14
    .line 15
    iget p2, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    .line 16
    .line 17
    if-ne p2, p3, :cond_1

    .line 18
    .line 19
    iput p1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    .line 20
    .line 21
    iput-object p6, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    .line 22
    .line 23
    sget-object p1, Lcom/android/server/power/PowerManagerService;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 24
    .line 25
    if-eqz p5, :cond_0

    .line 26
    .line 27
    new-instance p1, Landroid/os/WorkSource;

    .line 28
    .line 29
    invoke-direct {p1, p5}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p1, 0x0

    .line 34
    :goto_0
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    .line 35
    .line 36
    iput-object p8, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    .line 37
    .line 38
    iput-object p4, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mCallback:Landroid/os/IWakeLockCallback;

    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 42
    .line 43
    new-instance p2, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string p4, "Existing wake lock pid changed: "

    .line 46
    .line 47
    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget p0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    .line 51
    .line 52
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p1

    .line 69
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 70
    .line 71
    new-instance p3, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string p4, "Existing wake lock uid changed: "

    .line 74
    .line 75
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget p0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    .line 79
    .line 80
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p1

    .line 97
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 98
    .line 99
    new-instance p2, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string p3, "Existing wake lock package name changed: "

    .line 102
    .line 103
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    .line 107
    .line 108
    invoke-static {p2, p0, v1, p7}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p1
.end method
