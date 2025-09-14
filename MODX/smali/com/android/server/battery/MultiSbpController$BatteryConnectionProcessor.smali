.class public final Lcom/android/server/battery/MultiSbpController$BatteryConnectionProcessor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mBattCallback:Lcom/android/server/BatteryService$BattCallbackImpl;

.field public final mBatteryConnectionChecker:Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;

.field public final mHandler:Landroid/os/Handler;

.field public final mNoBatteryModeObserver:Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver;

.field public mPreviousHotSwapCmd:Lcom/android/server/battery/MultiSbpController$HotSwapCmd;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver;Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;Lcom/android/server/BatteryService$BattCallbackImpl;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v0, Lcom/android/server/battery/MultiSbpController$HotSwapCmd;->DO_NOTHING:Lcom/android/server/battery/MultiSbpController$HotSwapCmd;

    .line 6
    iput-object v0, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionProcessor;->mPreviousHotSwapCmd:Lcom/android/server/battery/MultiSbpController$HotSwapCmd;

    .line 8
    iput-object p1, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionProcessor;->mHandler:Landroid/os/Handler;

    .line 10
    iput-object p2, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionProcessor;->mNoBatteryModeObserver:Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver;

    .line 12
    iput-object p0, p2, Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver;->mCallback:Ljava/lang/Runnable;

    .line 14
    iput-object p3, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionProcessor;->mBatteryConnectionChecker:Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;

    .line 16
    iput-object p4, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionProcessor;->mBattCallback:Lcom/android/server/BatteryService$BattCallbackImpl;

    .line 18
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionProcessor;->mHandler:Landroid/os/Handler;

    .line 4
    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7
    iget-object v1, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionProcessor;->mBatteryConnectionChecker:Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;

    .line 9
    invoke-virtual {v1}, Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;->check()V

    .line 12
    iget-object v1, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionProcessor;->mBatteryConnectionChecker:Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;

    .line 14
    iget v2, v1, Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;->mCurrentConnections:I

    .line 16
    const/4 v3, -0x1

    .line 17
    const-string v4, "[SS]MultiSbpController.BatteryConnectionProcessor"

    .line 19
    if-ne v2, v3, :cond_0

    .line 21
    const-string/jumbo p0, "run wrong battery connection value"

    .line 24
    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-void

    .line 28
    :cond_0
    sget-object v2, Lcom/android/server/battery/MultiSbpController$HotSwapCmd;->DO_NOTHING:Lcom/android/server/battery/MultiSbpController$HotSwapCmd;

    .line 30
    iget-object v5, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionProcessor;->mNoBatteryModeObserver:Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver;

    .line 32
    iget v5, v5, Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver;->mNoBatteryModeState:I

    .line 34
    if-eq v5, v0, :cond_3

    .line 36
    const/4 v6, 0x2

    .line 37
    if-ne v5, v6, :cond_1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object v5, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionProcessor;->mPreviousHotSwapCmd:Lcom/android/server/battery/MultiSbpController$HotSwapCmd;

    .line 42
    sget-object v6, Lcom/android/server/battery/MultiSbpController$HotSwapCmd;->ON:Lcom/android/server/battery/MultiSbpController$HotSwapCmd;

    .line 44
    if-eq v5, v6, :cond_2

    .line 46
    invoke-virtual {v1}, Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;->isFullyConnected()Z

    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_2

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    iget-object v1, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionProcessor;->mPreviousHotSwapCmd:Lcom/android/server/battery/MultiSbpController$HotSwapCmd;

    .line 55
    if-ne v1, v6, :cond_4

    .line 57
    iget-object v1, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionProcessor;->mBatteryConnectionChecker:Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;

    .line 59
    invoke-virtual {v1}, Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;->isFullyConnected()Z

    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_4

    .line 65
    sget-object v6, Lcom/android/server/battery/MultiSbpController$HotSwapCmd;->OFF:Lcom/android/server/battery/MultiSbpController$HotSwapCmd;

    .line 67
    goto :goto_1

    .line 68
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionProcessor;->mPreviousHotSwapCmd:Lcom/android/server/battery/MultiSbpController$HotSwapCmd;

    .line 70
    sget-object v5, Lcom/android/server/battery/MultiSbpController$HotSwapCmd;->ON:Lcom/android/server/battery/MultiSbpController$HotSwapCmd;

    .line 72
    if-ne v1, v5, :cond_4

    .line 74
    sget-object v6, Lcom/android/server/battery/MultiSbpController$HotSwapCmd;->OFF:Lcom/android/server/battery/MultiSbpController$HotSwapCmd;

    .line 76
    goto :goto_1

    .line 77
    :cond_4
    move-object v6, v2

    .line 78
    :goto_1
    if-eq v6, v2, :cond_5

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    .line 82
    const-string/jumbo v2, "run mPreviousHotSwapCmd : "

    .line 85
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    iget-object v2, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionProcessor;->mPreviousHotSwapCmd:Lcom/android/server/battery/MultiSbpController$HotSwapCmd;

    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    const-string v2, " > currentHotSwapCmd : "

    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    move-result-object v1

    .line 105
    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {v6}, Lcom/android/server/battery/MultiSbpController$HotSwapCmd;->run()V

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    .line 113
    const-string v2, "[sendBatteryConnectionChangedIntent]currentBatteryConnections:"

    .line 115
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    iget-object v2, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionProcessor;->mBatteryConnectionChecker:Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;

    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    move-result-object v1

    .line 127
    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    new-instance v1, Landroid/content/Intent;

    .line 132
    const-string/jumbo v2, "com.samsung.server.BatteryService.action.BATTERY_CONNECTION_STATE_CHANGED"

    .line 135
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    const/high16 v2, 0x24000000

    .line 140
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 143
    iget-object v2, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionProcessor;->mBatteryConnectionChecker:Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;

    .line 145
    iget v2, v2, Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;->mCurrentConnections:I

    .line 147
    const-string v4, "battery_connection_status"

    .line 149
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 152
    iget-object v2, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionProcessor;->mBatteryConnectionChecker:Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;

    .line 154
    invoke-virtual {v2}, Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;->isFullyConnected()Z

    .line 157
    move-result v2

    .line 158
    const-string v4, "all_battery_connected"

    .line 160
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 163
    invoke-static {v1, v3}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V

    .line 166
    iput-object v6, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionProcessor;->mPreviousHotSwapCmd:Lcom/android/server/battery/MultiSbpController$HotSwapCmd;

    .line 168
    :cond_5
    iget-object v1, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionProcessor;->mBatteryConnectionChecker:Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;

    .line 170
    iget v2, v1, Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;->mPreviousConnections:I

    .line 172
    iget v1, v1, Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;->mCurrentConnections:I

    .line 174
    if-eq v2, v1, :cond_6

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    .line 178
    const-string v2, "BatteryConnectionsChanged:"

    .line 180
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    iget-object v2, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionProcessor;->mBatteryConnectionChecker:Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;

    .line 185
    iget v2, v2, Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;->mPreviousConnections:I

    .line 187
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 190
    const-string v2, "=>"

    .line 192
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    iget-object v2, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionProcessor;->mBatteryConnectionChecker:Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;

    .line 197
    iget v2, v2, Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;->mCurrentConnections:I

    .line 199
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    move-result-object v1

    .line 206
    invoke-static {v0, v1}, Lcom/android/server/battery/BattLogBuffer;->addLog(ILjava/lang/String;)V

    .line 209
    iget-object v1, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionProcessor;->mBattCallback:Lcom/android/server/BatteryService$BattCallbackImpl;

    .line 211
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 214
    sget-object v2, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 216
    const-string v2, "BatteryService"

    .line 218
    const-string v3, "[onBatteryConnectionChanged]"

    .line 220
    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v2, v1, Lcom/android/server/BatteryService$BattCallbackImpl;->this$0:Lcom/android/server/BatteryService;

    .line 225
    iget-object v2, v2, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 227
    new-instance v3, Lcom/android/server/BatteryService$BattCallbackImpl$1;

    .line 229
    invoke-direct {v3, v1, v0}, Lcom/android/server/BatteryService$BattCallbackImpl$1;-><init>(Lcom/android/server/BatteryService$BattCallbackImpl;I)V

    .line 232
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 235
    iget-object v0, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionProcessor;->mBatteryConnectionChecker:Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;

    .line 237
    invoke-virtual {v0}, Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;->isFullyConnected()Z

    .line 240
    move-result v0

    .line 241
    if-eqz v0, :cond_6

    .line 243
    iget-object p0, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionProcessor;->mNoBatteryModeObserver:Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver;

    .line 245
    iget-object v0, p0, Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 247
    const-string/jumbo v1, "no_battery_mode"

    .line 250
    const/4 v2, 0x0

    .line 251
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 254
    move-result v0

    .line 255
    iput v0, p0, Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver;->mNoBatteryModeState:I

    .line 257
    :cond_6
    return-void
.end method
