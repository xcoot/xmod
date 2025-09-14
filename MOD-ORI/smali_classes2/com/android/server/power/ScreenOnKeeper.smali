.class public final Lcom/android/server/power/ScreenOnKeeper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mClock:Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda10;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mIsScreenOnKeeperEnabled:Z

.field public final mKeepScreenOnDuration:J

.field public mLastScreenTouchTime:J

.field public final mLock:Ljava/lang/Object;

.field public final mScreenLockCountSupplier:Ljava/util/function/LongSupplier;

.field public mSettingsObserver:Lcom/android/server/power/ScreenOnKeeper$SettingsObserver;

.field public final mSystemProperties:Lcom/android/server/power/SystemPropertiesWrapper;

.field public final mTouchOutCheckDuration:J

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mWakefulness:I


# direct methods
.method public static -$$Nest$mhandleSettingsChangedLocked(Lcom/android/server/power/ScreenOnKeeper;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "ScreenOnKeeper"

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/ScreenOnKeeper;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const-string/jumbo v3, "screen_on_keeper"

    .line 14
    .line 15
    .line 16
    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v2
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v2

    .line 22
    sget v3, Lcom/android/server/power/Slog;->$r8$clinit:I

    .line 23
    .line 24
    sget-boolean v3, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_PMS_LOG:Z

    .line 25
    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    const-string v3, "D ScreenOnKeeper: handleSettingsChangedLocked: SettingNotFoundException="

    .line 29
    .line 30
    invoke-static {v3}, Lcom/android/server/power/Slog;->addPMSLogList(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    const-string v3, "handleSettingsChangedLocked: SettingNotFoundException="

    .line 34
    .line 35
    invoke-static {v0, v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    move v2, v1

    .line 39
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v4, "handleSettingsChangedLocked: screenOnKeeperSettingValue="

    .line 42
    .line 43
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-static {v0, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    const/4 v3, 0x1

    .line 57
    if-lez v2, :cond_1

    .line 58
    .line 59
    move v2, v3

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    move v2, v1

    .line 62
    :goto_1
    iput-boolean v2, p0, Lcom/android/server/power/ScreenOnKeeper;->mIsScreenOnKeeperEnabled:Z

    .line 63
    .line 64
    if-eqz v2, :cond_2

    .line 65
    .line 66
    iget v2, p0, Lcom/android/server/power/ScreenOnKeeper;->mWakefulness:I

    .line 67
    .line 68
    invoke-static {v2}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-nez v2, :cond_2

    .line 73
    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v3, "handleSettingsChangedLocked: disable keep screen on mWakefulness="

    .line 77
    .line 78
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget v3, p0, Lcom/android/server/power/ScreenOnKeeper;->mWakefulness:I

    .line 82
    .line 83
    invoke-static {v3}, Landroid/os/PowerManagerInternal;->wakefulnessToString(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/android/server/power/ScreenOnKeeper;->disableScreenOnKeeper()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v1}, Lcom/android/server/power/ScreenOnKeeper;->notifyScreenOnKeeperDisabledLocked(I)V

    .line 101
    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_2
    iget-object v1, p0, Lcom/android/server/power/ScreenOnKeeper;->mHandler:Landroid/os/Handler;

    .line 105
    .line 106
    const/4 v2, 0x2

    .line 107
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 108
    .line 109
    .line 110
    iget-boolean v2, p0, Lcom/android/server/power/ScreenOnKeeper;->mIsScreenOnKeeperEnabled:Z

    .line 111
    .line 112
    if-eqz v2, :cond_4

    .line 113
    .line 114
    const-string v2, "handleSettingsChangedLocked: enable/extend keep screen on"

    .line 115
    .line 116
    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/android/server/power/ScreenOnKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 120
    .line 121
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-nez v0, :cond_3

    .line 126
    .line 127
    iget-object v0, p0, Lcom/android/server/power/ScreenOnKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 128
    .line 129
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 130
    .line 131
    .line 132
    :cond_3
    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    iget-object v2, p0, Lcom/android/server/power/ScreenOnKeeper;->mClock:Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda10;

    .line 137
    .line 138
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 142
    .line 143
    .line 144
    move-result-wide v2

    .line 145
    iget-wide v4, p0, Lcom/android/server/power/ScreenOnKeeper;->mKeepScreenOnDuration:J

    .line 146
    .line 147
    add-long/2addr v2, v4

    .line 148
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 149
    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_4
    const-string v2, "handleSettingsChangedLocked: disable keep screen on"

    .line 153
    .line 154
    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    iget-object v0, p0, Lcom/android/server/power/ScreenOnKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 158
    .line 159
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-eqz v0, :cond_5

    .line 164
    .line 165
    iget-object p0, p0, Lcom/android/server/power/ScreenOnKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 166
    .line 167
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 168
    .line 169
    .line 170
    :cond_5
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 171
    .line 172
    .line 173
    :goto_2
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Landroid/os/Looper;ILcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda15;Lcom/android/server/power/SystemPropertiesWrapper;)V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda10;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "-1"

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/power/ScreenOnKeeper;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/server/power/ScreenOnKeeper;->mLock:Ljava/lang/Object;

    .line 14
    .line 15
    new-instance p2, Landroid/os/Handler;

    .line 16
    .line 17
    new-instance v2, Lcom/android/server/power/ScreenOnKeeper$ScreenOnKeeperHandlerCallback;

    .line 18
    .line 19
    invoke-direct {v2, p0}, Lcom/android/server/power/ScreenOnKeeper$ScreenOnKeeperHandlerCallback;-><init>(Lcom/android/server/power/ScreenOnKeeper;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p2, p3, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 23
    .line 24
    .line 25
    iput-object p2, p0, Lcom/android/server/power/ScreenOnKeeper;->mHandler:Landroid/os/Handler;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/android/server/power/ScreenOnKeeper;->mClock:Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda10;

    .line 28
    .line 29
    iput p4, p0, Lcom/android/server/power/ScreenOnKeeper;->mWakefulness:I

    .line 30
    .line 31
    iput-object p5, p0, Lcom/android/server/power/ScreenOnKeeper;->mScreenLockCountSupplier:Ljava/util/function/LongSupplier;

    .line 32
    .line 33
    iput-object p6, p0, Lcom/android/server/power/ScreenOnKeeper;->mSystemProperties:Lcom/android/server/power/SystemPropertiesWrapper;

    .line 34
    .line 35
    const-string/jumbo p2, "power"

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Landroid/os/PowerManager;

    .line 43
    .line 44
    const/16 p2, 0xa

    .line 45
    .line 46
    const-string p3, "DA_ScreenOnKeeper"

    .line 47
    .line 48
    invoke-virtual {p1, p2, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iput-object p1, p0, Lcom/android/server/power/ScreenOnKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 53
    .line 54
    const-wide/32 p1, 0x927c0

    .line 55
    .line 56
    .line 57
    const-wide/32 p3, 0x1b7740

    .line 58
    .line 59
    .line 60
    :try_start_0
    const-string/jumbo p5, "persist.debug.power.keep_screen_on_duration"

    .line 61
    .line 62
    .line 63
    invoke-interface {p6, p5, v1}, Lcom/android/server/power/SystemPropertiesWrapper;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p5

    .line 67
    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result p5

    .line 71
    int-to-long v2, p5

    .line 72
    const-string/jumbo p5, "persist.debug.power.touch_out_duration"

    .line 73
    .line 74
    .line 75
    invoke-interface {p6, p5, v1}, Lcom/android/server/power/SystemPropertiesWrapper;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p5

    .line 79
    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    move-result p5

    .line 83
    int-to-long p5, p5

    .line 84
    const-wide/16 v0, 0x0

    .line 85
    .line 86
    cmp-long v4, v2, v0

    .line 87
    .line 88
    if-ltz v4, :cond_0

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_0
    move-wide v2, p3

    .line 92
    :goto_0
    iput-wide v2, p0, Lcom/android/server/power/ScreenOnKeeper;->mKeepScreenOnDuration:J

    .line 93
    .line 94
    cmp-long v0, p5, v0

    .line 95
    .line 96
    if-ltz v0, :cond_1

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_1
    move-wide p5, p1

    .line 100
    :goto_1
    iput-wide p5, p0, Lcom/android/server/power/ScreenOnKeeper;->mTouchOutCheckDuration:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :catch_0
    move-exception p5

    .line 104
    new-instance p6, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    const-string v0, "NumberFormatException: check SystemProperties "

    .line 107
    .line 108
    invoke-direct {p6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p5

    .line 118
    const-string p6, "ScreenOnKeeper"

    .line 119
    .line 120
    invoke-static {p6, p5}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    iput-wide p3, p0, Lcom/android/server/power/ScreenOnKeeper;->mKeepScreenOnDuration:J

    .line 124
    .line 125
    iput-wide p1, p0, Lcom/android/server/power/ScreenOnKeeper;->mTouchOutCheckDuration:J

    .line 126
    .line 127
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/power/ScreenOnKeeper;->disableScreenOnKeeper()V

    .line 128
    .line 129
    .line 130
    iget-object p1, p0, Lcom/android/server/power/ScreenOnKeeper;->mHandler:Landroid/os/Handler;

    .line 131
    .line 132
    new-instance p2, Lcom/android/server/power/ScreenOnKeeper$$ExternalSyntheticLambda1;

    .line 133
    .line 134
    const/4 p3, 0x1

    .line 135
    invoke-direct {p2, p0, p3}, Lcom/android/server/power/ScreenOnKeeper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/ScreenOnKeeper;I)V

    .line 136
    .line 137
    .line 138
    iget-object p0, p0, Lcom/android/server/power/ScreenOnKeeper;->mClock:Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda10;

    .line 139
    .line 140
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 144
    .line 145
    .line 146
    move-result-wide p3

    .line 147
    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 148
    .line 149
    .line 150
    return-void
.end method


# virtual methods
.method public final disableScreenOnKeeper()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/power/ScreenOnKeeper;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string/jumbo v0, "screen_on_keeper"

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Screen On Keeper"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v1, "  mKeepScreenOnDuration="

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-wide v1, p0, Lcom/android/server/power/ScreenOnKeeper;->mKeepScreenOnDuration:J

    .line 17
    .line 18
    const-string v3, "  mTouchOutCheckDuration="

    .line 19
    .line 20
    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-wide v1, p0, Lcom/android/server/power/ScreenOnKeeper;->mTouchOutCheckDuration:J

    .line 25
    .line 26
    const-string v3, "  mIsScreenOnKeeperEnabled="

    .line 27
    .line 28
    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-boolean v1, p0, Lcom/android/server/power/ScreenOnKeeper;->mIsScreenOnKeeperEnabled:Z

    .line 33
    .line 34
    const-string v2, "  mLastScreenTouchTime="

    .line 35
    .line 36
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-wide v1, p0, Lcom/android/server/power/ScreenOnKeeper;->mLastScreenTouchTime:J

    .line 41
    .line 42
    const-string v3, "  mWakeLock.isHeld()="

    .line 43
    .line 44
    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object p0, p0, Lcom/android/server/power/ScreenOnKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public final notifyKeepScreenOnExpiredLocked()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/power/ScreenOnKeeper;->mScreenLockCountSupplier:Ljava/util/function/LongSupplier;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/function/LongSupplier;->getAsLong()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x1

    .line 8
    .line 9
    cmp-long v0, v0, v2

    .line 10
    .line 11
    const-string v1, "ScreenOnKeeper"

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const-string/jumbo v0, "notifyKeepScreenOnExpiredLocked: send expired intent"

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    new-instance v0, Landroid/content/Intent;

    .line 22
    .line 23
    const-string v1, "android.intent.action.KEEP_SCREEN_ON_EXPIRED"

    .line 24
    .line 25
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "com.samsung.android.displayassistant"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/server/power/ScreenOnKeeper;->mHandler:Landroid/os/Handler;

    .line 34
    .line 35
    new-instance v2, Lcom/android/server/power/ScreenOnKeeper$$ExternalSyntheticLambda0;

    .line 36
    .line 37
    const/4 v3, 0x1

    .line 38
    invoke-direct {v2, p0, v0, v3}, Lcom/android/server/power/ScreenOnKeeper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/ScreenOnKeeper;Landroid/content/Intent;I)V

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/power/ScreenOnKeeper;->mClock:Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda10;

    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 47
    .line 48
    .line 49
    move-result-wide v3

    .line 50
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 51
    .line 52
    .line 53
    const/4 v0, 0x2

    .line 54
    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 62
    .line 63
    .line 64
    move-result-wide v2

    .line 65
    const-wide/32 v4, 0x15f90

    .line 66
    .line 67
    .line 68
    add-long/2addr v2, v4

    .line 69
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    const-string/jumbo v0, "notifyKeepScreenOnExpiredLocked: disable directly, wakelock exist"

    .line 74
    .line 75
    .line 76
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/android/server/power/ScreenOnKeeper;->disableScreenOnKeeper()V

    .line 80
    .line 81
    .line 82
    const/4 v0, 0x3

    .line 83
    invoke-virtual {p0, v0}, Lcom/android/server/power/ScreenOnKeeper;->notifyScreenOnKeeperDisabledLocked(I)V

    .line 84
    .line 85
    .line 86
    :goto_0
    return-void
.end method

.method public final notifyScreenOnKeeperDisabledLocked(I)V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.intent.action.SCREEN_ON_KEEPER_DISABLED"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "com.samsung.android.displayassistant"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    const-string/jumbo v1, "reason"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/android/server/power/ScreenOnKeeper;->mHandler:Landroid/os/Handler;

    .line 20
    .line 21
    new-instance v1, Lcom/android/server/power/ScreenOnKeeper$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/power/ScreenOnKeeper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/ScreenOnKeeper;Landroid/content/Intent;I)V

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/power/ScreenOnKeeper;->mClock:Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda10;

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 37
    .line 38
    .line 39
    return-void
.end method
