.class public final Lcom/android/server/job/controllers/idle/CarIdlenessTracker;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/job/controllers/idle/IdlenessTracker;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mForced:Z

.field public mGarageModeOn:Z

.field public mIdle:Z

.field public mIdleListener:Lcom/android/server/job/controllers/IdleController;

.field public mScreenOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 3
    if-nez v0, :cond_1

    .line 5
    const-string v0, "JobScheduler.CarIdlenessTracker"

    .line 7
    const/4 v1, 0x3

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 18
    :goto_1
    sput-boolean v0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->DEBUG:Z

    .line 20
    return-void
.end method

.method public static logIfDebug(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->DEBUG:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string v0, "JobScheduler.CarIdlenessTracker"

    .line 7
    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_0
    return-void
.end method


# virtual methods
.method public final dump(Landroid/util/proto/ProtoOutputStream;)V
    .locals 7

    const-wide v0, 0x10b00000003L

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10b00000002L

    .line 6
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    const-wide v4, 0x10800000001L

    .line 7
    iget-boolean v6, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdle:Z

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v4, 0x10800000002L

    .line 8
    iget-boolean p0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mGarageModeOn:Z

    invoke-virtual {p1, v4, v5, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 9
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 1

    .line 1
    const-string v0, "  mIdle: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdle:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2
    const-string v0, "  mGarageModeOn: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mGarageModeOn:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3
    const-string v0, "  mForced: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mForced:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4
    const-string v0, "  mScreenOn: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mScreenOn:Z

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public final dumpConstants(Landroid/util/IndentingPrintWriter;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final isIdle()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdle:Z

    .line 3
    return p0
.end method

.method public final onBatteryStateChanged(ZZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    .line 7
    const-string v0, "Received action: "

    .line 9
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object p2

    .line 19
    invoke-static {p2}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    .line 22
    const-string/jumbo p2, "com.android.server.jobscheduler.FORCE_IDLE"

    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result p2

    .line 29
    const/4 v0, 0x1

    .line 30
    if-eqz p2, :cond_0

    .line 32
    const-string p1, "Forcing idle..."

    .line 34
    invoke-static {p1}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    .line 37
    iput-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mForced:Z

    .line 39
    invoke-virtual {p0}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->updateIdlenessState()V

    .line 42
    goto/16 :goto_1

    .line 44
    :cond_0
    const-string/jumbo p2, "com.android.server.jobscheduler.UNFORCE_IDLE"

    .line 47
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    move-result p2

    .line 51
    const/4 v1, 0x0

    .line 52
    if-eqz p2, :cond_1

    .line 54
    const-string p1, "Unforcing idle..."

    .line 56
    invoke-static {p1}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    .line 59
    iput-boolean v1, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mForced:Z

    .line 61
    invoke-virtual {p0}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->updateIdlenessState()V

    .line 64
    goto/16 :goto_1

    .line 66
    :cond_1
    const-string p2, "android.intent.action.SCREEN_ON"

    .line 68
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    move-result p2

    .line 72
    if-eqz p2, :cond_5

    .line 74
    const-string p1, "Screen is on..."

    .line 76
    invoke-static {p1}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    .line 79
    iput-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mScreenOn:Z

    .line 81
    iget-boolean p1, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mForced:Z

    .line 83
    if-nez p1, :cond_4

    .line 85
    iget-boolean p1, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mGarageModeOn:Z

    .line 87
    if-eqz p1, :cond_2

    .line 89
    goto :goto_0

    .line 90
    :cond_2
    iget-boolean p1, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdle:Z

    .line 92
    if-eqz p1, :cond_3

    .line 94
    const-string p1, "Device is exiting idle"

    .line 96
    invoke-static {p1}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    .line 99
    iput-boolean v1, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdle:Z

    .line 101
    iget-object p0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdleListener:Lcom/android/server/job/controllers/IdleController;

    .line 103
    invoke-virtual {p0, v1}, Lcom/android/server/job/controllers/IdleController;->reportNewIdleState(Z)V

    .line 106
    goto/16 :goto_1

    .line 108
    :cond_3
    const-string p0, "Device is already non-idle"

    .line 110
    invoke-static {p0}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    .line 113
    goto/16 :goto_1

    .line 115
    :cond_4
    :goto_0
    const-string p0, "Screen is on, but device cannot exit idle"

    .line 117
    invoke-static {p0}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    .line 120
    goto/16 :goto_1

    .line 122
    :cond_5
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 124
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    move-result p2

    .line 128
    if-eqz p2, :cond_6

    .line 130
    const-string p1, "Screen is off..."

    .line 132
    invoke-static {p1}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    .line 135
    iput-boolean v1, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mScreenOn:Z

    .line 137
    goto/16 :goto_1

    .line 139
    :cond_6
    const-string/jumbo p2, "com.android.server.jobscheduler.GARAGE_MODE_ON"

    .line 142
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    move-result p2

    .line 146
    if-eqz p2, :cond_7

    .line 148
    const-string p1, "GarageMode is on..."

    .line 150
    invoke-static {p1}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    .line 153
    iput-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mGarageModeOn:Z

    .line 155
    invoke-virtual {p0}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->updateIdlenessState()V

    .line 158
    goto/16 :goto_1

    .line 160
    :cond_7
    const-string/jumbo p2, "com.android.server.jobscheduler.GARAGE_MODE_OFF"

    .line 163
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    move-result p2

    .line 167
    if-eqz p2, :cond_8

    .line 169
    const-string p1, "GarageMode is off..."

    .line 171
    invoke-static {p1}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    .line 174
    iput-boolean v1, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mGarageModeOn:Z

    .line 176
    invoke-virtual {p0}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->updateIdlenessState()V

    .line 179
    goto :goto_1

    .line 180
    :cond_8
    const-string/jumbo p2, "com.android.server.ACTION_TRIGGER_IDLE"

    .line 183
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    move-result p1

    .line 187
    if-eqz p1, :cond_c

    .line 189
    iget-boolean p1, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mGarageModeOn:Z

    .line 191
    if-nez p1, :cond_b

    .line 193
    const-string p1, "Idle trigger fired..."

    .line 195
    invoke-static {p1}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    .line 198
    iget-boolean p1, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdle:Z

    .line 200
    if-eqz p1, :cond_9

    .line 202
    const-string p0, "Device is already idle"

    .line 204
    invoke-static {p0}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    .line 207
    goto :goto_1

    .line 208
    :cond_9
    iget-boolean p1, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mScreenOn:Z

    .line 210
    if-nez p1, :cond_a

    .line 212
    const-string p1, "Device is going idle"

    .line 214
    invoke-static {p1}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    .line 217
    iput-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdle:Z

    .line 219
    iget-object p0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdleListener:Lcom/android/server/job/controllers/IdleController;

    .line 221
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/IdleController;->reportNewIdleState(Z)V

    .line 224
    goto :goto_1

    .line 225
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    .line 227
    const-string p2, "TRIGGER_IDLE received but not changing state: mIdle = "

    .line 229
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 232
    iget-boolean p2, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdle:Z

    .line 234
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 237
    const-string p2, ", mScreenOn = "

    .line 239
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    iget-boolean p0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mScreenOn:Z

    .line 244
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    move-result-object p0

    .line 251
    invoke-static {p0}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    .line 254
    goto :goto_1

    .line 255
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    .line 257
    const-string p2, "TRIGGER_IDLE received but not changing state; mIdle="

    .line 259
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 262
    iget-boolean p2, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdle:Z

    .line 264
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 267
    const-string p2, " mGarageModeOn="

    .line 269
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    iget-boolean p0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mGarageModeOn:Z

    .line 274
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    move-result-object p0

    .line 281
    invoke-static {p0}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    .line 284
    :cond_c
    :goto_1
    return-void
.end method

.method public final processConstant(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final startTracking(Landroid/content/Context;Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/IdleController;)V
    .locals 3

    .line 1
    iput-object p3, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdleListener:Lcom/android/server/job/controllers/IdleController;

    .line 3
    const-string p2, "android.intent.action.SCREEN_ON"

    .line 5
    const-string p3, "android.intent.action.SCREEN_OFF"

    .line 7
    const-string/jumbo v0, "com.android.server.jobscheduler.GARAGE_MODE_ON"

    .line 10
    const-string/jumbo v1, "com.android.server.jobscheduler.GARAGE_MODE_OFF"

    .line 13
    const-string/jumbo v2, "com.android.server.jobscheduler.FORCE_IDLE"

    .line 16
    invoke-static {p2, p3, v0, v1, v2}, Lcom/android/server/VcnManagementService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 19
    move-result-object p2

    .line 20
    const-string/jumbo p3, "com.android.server.jobscheduler.UNFORCE_IDLE"

    .line 23
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 26
    const-string/jumbo p3, "com.android.server.ACTION_TRIGGER_IDLE"

    .line 29
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->getHandler()Landroid/os/Handler;

    .line 35
    move-result-object p3

    .line 36
    const/4 v0, 0x0

    .line 37
    invoke-virtual {p1, p0, p2, v0, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 40
    return-void
.end method

.method public final updateIdlenessState()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mForced:Z

    .line 3
    if-nez v0, :cond_1

    .line 5
    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mGarageModeOn:Z

    .line 7
    if-eqz v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    iget-boolean v1, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdle:Z

    .line 15
    if-eq v1, v0, :cond_2

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    const-string v2, "Device idleness changed. New idle="

    .line 21
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    invoke-static {v1}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    .line 34
    iput-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdle:Z

    .line 36
    iget-object p0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdleListener:Lcom/android/server/job/controllers/IdleController;

    .line 38
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/IdleController;->reportNewIdleState(Z)V

    .line 41
    goto :goto_2

    .line 42
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 44
    const-string v1, "Device idleness is the same. Current idle="

    .line 46
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object p0

    .line 56
    invoke-static {p0}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    .line 59
    :goto_2
    return-void
.end method
