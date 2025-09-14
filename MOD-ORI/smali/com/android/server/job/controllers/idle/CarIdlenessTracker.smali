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

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-string v0, "JobScheduler.CarIdlenessTracker"

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
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

    .line 19
    .line 20
    return-void
.end method

.method public static logIfDebug(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "JobScheduler.CarIdlenessTracker"

    .line 6
    .line 7
    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
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

    .line 2
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

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v0, "Received action: "

    .line 8
    .line 9
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-static {p2}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string/jumbo p2, "com.android.server.jobscheduler.FORCE_IDLE"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    const/4 v0, 0x1

    .line 30
    if-eqz p2, :cond_0

    .line 31
    .line 32
    const-string p1, "Forcing idle..."

    .line 33
    .line 34
    invoke-static {p1}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iput-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mForced:Z

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->updateIdlenessState()V

    .line 40
    .line 41
    .line 42
    goto/16 :goto_1

    .line 43
    .line 44
    :cond_0
    const-string/jumbo p2, "com.android.server.jobscheduler.UNFORCE_IDLE"

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    const/4 v1, 0x0

    .line 52
    if-eqz p2, :cond_1

    .line 53
    .line 54
    const-string p1, "Unforcing idle..."

    .line 55
    .line 56
    invoke-static {p1}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iput-boolean v1, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mForced:Z

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->updateIdlenessState()V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_1

    .line 65
    .line 66
    :cond_1
    const-string p2, "android.intent.action.SCREEN_ON"

    .line 67
    .line 68
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    if-eqz p2, :cond_5

    .line 73
    .line 74
    const-string p1, "Screen is on..."

    .line 75
    .line 76
    invoke-static {p1}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iput-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mScreenOn:Z

    .line 80
    .line 81
    iget-boolean p1, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mForced:Z

    .line 82
    .line 83
    if-nez p1, :cond_4

    .line 84
    .line 85
    iget-boolean p1, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mGarageModeOn:Z

    .line 86
    .line 87
    if-eqz p1, :cond_2

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    iget-boolean p1, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdle:Z

    .line 91
    .line 92
    if-eqz p1, :cond_3

    .line 93
    .line 94
    const-string p1, "Device is exiting idle"

    .line 95
    .line 96
    invoke-static {p1}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iput-boolean v1, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdle:Z

    .line 100
    .line 101
    iget-object p0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdleListener:Lcom/android/server/job/controllers/IdleController;

    .line 102
    .line 103
    invoke-virtual {p0, v1}, Lcom/android/server/job/controllers/IdleController;->reportNewIdleState(Z)V

    .line 104
    .line 105
    .line 106
    goto/16 :goto_1

    .line 107
    .line 108
    :cond_3
    const-string p0, "Device is already non-idle"

    .line 109
    .line 110
    invoke-static {p0}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    goto/16 :goto_1

    .line 114
    .line 115
    :cond_4
    :goto_0
    const-string p0, "Screen is on, but device cannot exit idle"

    .line 116
    .line 117
    invoke-static {p0}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    goto/16 :goto_1

    .line 121
    .line 122
    :cond_5
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 123
    .line 124
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result p2

    .line 128
    if-eqz p2, :cond_6

    .line 129
    .line 130
    const-string p1, "Screen is off..."

    .line 131
    .line 132
    invoke-static {p1}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    iput-boolean v1, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mScreenOn:Z

    .line 136
    .line 137
    goto/16 :goto_1

    .line 138
    .line 139
    :cond_6
    const-string/jumbo p2, "com.android.server.jobscheduler.GARAGE_MODE_ON"

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result p2

    .line 146
    if-eqz p2, :cond_7

    .line 147
    .line 148
    const-string p1, "GarageMode is on..."

    .line 149
    .line 150
    invoke-static {p1}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    iput-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mGarageModeOn:Z

    .line 154
    .line 155
    invoke-virtual {p0}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->updateIdlenessState()V

    .line 156
    .line 157
    .line 158
    goto/16 :goto_1

    .line 159
    .line 160
    :cond_7
    const-string/jumbo p2, "com.android.server.jobscheduler.GARAGE_MODE_OFF"

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result p2

    .line 167
    if-eqz p2, :cond_8

    .line 168
    .line 169
    const-string p1, "GarageMode is off..."

    .line 170
    .line 171
    invoke-static {p1}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    iput-boolean v1, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mGarageModeOn:Z

    .line 175
    .line 176
    invoke-virtual {p0}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->updateIdlenessState()V

    .line 177
    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_8
    const-string/jumbo p2, "com.android.server.ACTION_TRIGGER_IDLE"

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result p1

    .line 187
    if-eqz p1, :cond_c

    .line 188
    .line 189
    iget-boolean p1, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mGarageModeOn:Z

    .line 190
    .line 191
    if-nez p1, :cond_b

    .line 192
    .line 193
    const-string p1, "Idle trigger fired..."

    .line 194
    .line 195
    invoke-static {p1}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    iget-boolean p1, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdle:Z

    .line 199
    .line 200
    if-eqz p1, :cond_9

    .line 201
    .line 202
    const-string p0, "Device is already idle"

    .line 203
    .line 204
    invoke-static {p0}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    goto :goto_1

    .line 208
    :cond_9
    iget-boolean p1, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mScreenOn:Z

    .line 209
    .line 210
    if-nez p1, :cond_a

    .line 211
    .line 212
    const-string p1, "Device is going idle"

    .line 213
    .line 214
    invoke-static {p1}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    iput-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdle:Z

    .line 218
    .line 219
    iget-object p0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdleListener:Lcom/android/server/job/controllers/IdleController;

    .line 220
    .line 221
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/IdleController;->reportNewIdleState(Z)V

    .line 222
    .line 223
    .line 224
    goto :goto_1

    .line 225
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    const-string p2, "TRIGGER_IDLE received but not changing state: mIdle = "

    .line 228
    .line 229
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    iget-boolean p2, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdle:Z

    .line 233
    .line 234
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    const-string p2, ", mScreenOn = "

    .line 238
    .line 239
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    iget-boolean p0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mScreenOn:Z

    .line 243
    .line 244
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p0

    .line 251
    invoke-static {p0}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    goto :goto_1

    .line 255
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    .line 256
    .line 257
    const-string p2, "TRIGGER_IDLE received but not changing state; mIdle="

    .line 258
    .line 259
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    iget-boolean p2, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdle:Z

    .line 263
    .line 264
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    const-string p2, " mGarageModeOn="

    .line 268
    .line 269
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    iget-boolean p0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mGarageModeOn:Z

    .line 273
    .line 274
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object p0

    .line 281
    invoke-static {p0}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    .line 282
    .line 283
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

    .line 2
    .line 3
    const-string p2, "android.intent.action.SCREEN_ON"

    .line 4
    .line 5
    const-string p3, "android.intent.action.SCREEN_OFF"

    .line 6
    .line 7
    const-string/jumbo v0, "com.android.server.jobscheduler.GARAGE_MODE_ON"

    .line 8
    .line 9
    .line 10
    const-string/jumbo v1, "com.android.server.jobscheduler.GARAGE_MODE_OFF"

    .line 11
    .line 12
    .line 13
    const-string/jumbo v2, "com.android.server.jobscheduler.FORCE_IDLE"

    .line 14
    .line 15
    .line 16
    invoke-static {p2, p3, v0, v1, v2}, Lcom/android/server/VcnManagementService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    const-string/jumbo p3, "com.android.server.jobscheduler.UNFORCE_IDLE"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string/jumbo p3, "com.android.server.ACTION_TRIGGER_IDLE"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->getHandler()Landroid/os/Handler;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    const/4 v0, 0x0

    .line 37
    invoke-virtual {p1, p0, p2, v0, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final updateIdlenessState()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mForced:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mGarageModeOn:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
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

    .line 14
    .line 15
    if-eq v1, v0, :cond_2

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v2, "Device idleness changed. New idle="

    .line 20
    .line 21
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v1}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iput-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdle:Z

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdleListener:Lcom/android/server/job/controllers/IdleController;

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/IdleController;->reportNewIdleState(Z)V

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v1, "Device idleness is the same. Current idle="

    .line 45
    .line 46
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-static {p0}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :goto_2
    return-void
.end method
