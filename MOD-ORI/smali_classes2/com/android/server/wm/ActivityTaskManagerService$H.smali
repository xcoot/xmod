.class public final Lcom/android/server/wm/ActivityTaskManagerService$H;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eq v0, v1, :cond_9

    .line 6
    .line 7
    const/4 v3, 0x3

    .line 8
    const/4 v4, 0x4

    .line 9
    if-eq v0, v3, :cond_7

    .line 10
    .line 11
    if-eq v0, v4, :cond_4

    .line 12
    .line 13
    const/4 v3, 0x5

    .line 14
    if-eq v0, v3, :cond_2

    .line 15
    .line 16
    const/4 v1, 0x6

    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    const/4 v1, 0x7

    .line 20
    if-eq v0, v1, :cond_0

    .line 21
    .line 22
    goto/16 :goto_4

    .line 23
    .line 24
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    iget p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mOverheatTextId:I

    .line 29
    .line 30
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p1, Ljava/lang/String;

    .line 33
    .line 34
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-static {v0, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 47
    .line 48
    .line 49
    goto/16 :goto_4

    .line 50
    .line 51
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast p1, Lcom/android/server/wm/WindowProcessController;

    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 56
    .line 57
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 58
    .line 59
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 60
    .line 61
    .line 62
    monitor-enter v0

    .line 63
    const/4 p0, 0x2

    .line 64
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowProcessController;->removeAnimatingReason(I)V

    .line 65
    .line 66
    .line 67
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 69
    .line 70
    .line 71
    const-wide/16 p0, 0x20

    .line 72
    .line 73
    const-string v0, "finishWakefulnessAnimating"

    .line 74
    .line 75
    invoke-static {p0, p1, v0}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 76
    .line 77
    .line 78
    goto/16 :goto_4

    .line 79
    .line 80
    :catchall_0
    move-exception p0

    .line 81
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 83
    .line 84
    .line 85
    throw p0

    .line 86
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast p1, Lcom/android/server/wm/WindowProcessController;

    .line 89
    .line 90
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 91
    .line 92
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 93
    .line 94
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 95
    .line 96
    .line 97
    monitor-enter v0

    .line 98
    :try_start_2
    iget p0, p1, Lcom/android/server/wm/WindowProcessController;->mAnimatingReasons:I

    .line 99
    .line 100
    or-int/lit8 v2, p0, 0x2

    .line 101
    .line 102
    iput v2, p1, Lcom/android/server/wm/WindowProcessController;->mAnimatingReasons:I

    .line 103
    .line 104
    if-nez p0, :cond_3

    .line 105
    .line 106
    iget-object p0, p1, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 107
    .line 108
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 109
    .line 110
    new-instance v2, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda1;

    .line 111
    .line 112
    invoke-direct {v2, p1, v1}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/WindowProcessController;Z)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 116
    .line 117
    .line 118
    :cond_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 119
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 120
    .line 121
    .line 122
    goto/16 :goto_4

    .line 123
    .line 124
    :catchall_1
    move-exception p0

    .line 125
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 126
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 127
    .line 128
    .line 129
    throw p0

    .line 130
    :cond_4
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 131
    .line 132
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 133
    .line 134
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 135
    .line 136
    .line 137
    monitor-enter p1

    .line 138
    :try_start_4
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_WORKAROUND_RESPONSE_SPEED:Z

    .line 139
    .line 140
    if-eqz v0, :cond_5

    .line 141
    .line 142
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 143
    .line 144
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 145
    .line 146
    iget-object v2, v2, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 147
    .line 148
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 149
    .line 150
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {v2, v0}, Lcom/android/server/wm/TransitionController;->hasTransientLaunch(Lcom/android/server/wm/DisplayContent;)Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-eqz v0, :cond_5

    .line 159
    .line 160
    const-wide/16 v0, 0x1f4

    .line 161
    .line 162
    invoke-virtual {p0, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 163
    .line 164
    .line 165
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 166
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 167
    .line 168
    .line 169
    goto/16 :goto_4

    .line 170
    .line 171
    :catchall_2
    move-exception p0

    .line 172
    goto :goto_0

    .line 173
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 174
    .line 175
    iget v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppSwitchesState:I

    .line 176
    .line 177
    if-nez v0, :cond_6

    .line 178
    .line 179
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 180
    .line 181
    iput v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppSwitchesState:I

    .line 182
    .line 183
    :cond_6
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 184
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 185
    .line 186
    .line 187
    goto/16 :goto_4

    .line 188
    .line 189
    :goto_0
    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 190
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 191
    .line 192
    .line 193
    throw p0

    .line 194
    :cond_7
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 195
    .line 196
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 197
    .line 198
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 199
    .line 200
    .line 201
    monitor-enter v0

    .line 202
    :try_start_7
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 203
    .line 204
    iput-boolean v2, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mRetainPowerModeAndTopProcessState:Z

    .line 205
    .line 206
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 207
    .line 208
    invoke-virtual {p1, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->endPowerMode(I)V

    .line 209
    .line 210
    .line 211
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 212
    .line 213
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mTopApp:Lcom/android/server/wm/WindowProcessController;

    .line 214
    .line 215
    if-eqz p1, :cond_8

    .line 216
    .line 217
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 218
    .line 219
    iget p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mTopProcessState:I

    .line 220
    .line 221
    const/16 v3, 0xc

    .line 222
    .line 223
    if-ne p1, v3, :cond_8

    .line 224
    .line 225
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 226
    .line 227
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopApp:Lcom/android/server/wm/WindowProcessController;

    .line 228
    .line 229
    invoke-virtual {p0, v2, v2, v1, v2}, Lcom/android/server/wm/WindowProcessController;->updateProcessInfo(ZZZZ)V

    .line 230
    .line 231
    .line 232
    goto :goto_1

    .line 233
    :catchall_3
    move-exception p0

    .line 234
    goto :goto_2

    .line 235
    :cond_8
    :goto_1
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 236
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 237
    .line 238
    .line 239
    goto :goto_4

    .line 240
    :goto_2
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 241
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 242
    .line 243
    .line 244
    throw p0

    .line 245
    :cond_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 246
    .line 247
    check-cast p1, Lcom/android/server/am/AppTimeTracker;

    .line 248
    .line 249
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 250
    .line 251
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 252
    .line 253
    invoke-virtual {p1}, Lcom/android/server/am/AppTimeTracker;->stop()V

    .line 254
    .line 255
    .line 256
    new-instance v0, Landroid/os/Bundle;

    .line 257
    .line 258
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 259
    .line 260
    .line 261
    const-string v3, "android.activity.usage_time"

    .line 262
    .line 263
    iget-wide v4, p1, Lcom/android/server/am/AppTimeTracker;->mTotalTime:J

    .line 264
    .line 265
    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 266
    .line 267
    .line 268
    new-instance v3, Landroid/os/Bundle;

    .line 269
    .line 270
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 271
    .line 272
    .line 273
    iget-object v4, p1, Lcom/android/server/am/AppTimeTracker;->mPackageTimes:Landroid/util/ArrayMap;

    .line 274
    .line 275
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 276
    .line 277
    .line 278
    move-result v4

    .line 279
    sub-int/2addr v4, v1

    .line 280
    :goto_3
    if-ltz v4, :cond_a

    .line 281
    .line 282
    iget-object v1, p1, Lcom/android/server/am/AppTimeTracker;->mPackageTimes:Landroid/util/ArrayMap;

    .line 283
    .line 284
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    check-cast v1, Ljava/lang/String;

    .line 289
    .line 290
    iget-object v5, p1, Lcom/android/server/am/AppTimeTracker;->mPackageTimes:Landroid/util/ArrayMap;

    .line 291
    .line 292
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v5

    .line 296
    check-cast v5, Landroid/util/MutableLong;

    .line 297
    .line 298
    iget-wide v5, v5, Landroid/util/MutableLong;->value:J

    .line 299
    .line 300
    invoke-virtual {v3, v1, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 301
    .line 302
    .line 303
    add-int/lit8 v4, v4, -0x1

    .line 304
    .line 305
    goto :goto_3

    .line 306
    :cond_a
    const-string v1, "android.usage_time_packages"

    .line 307
    .line 308
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 309
    .line 310
    .line 311
    new-instance v1, Landroid/content/Intent;

    .line 312
    .line 313
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 317
    .line 318
    .line 319
    :try_start_9
    iget-object p1, p1, Lcom/android/server/am/AppTimeTracker;->mReceiver:Landroid/app/PendingIntent;

    .line 320
    .line 321
    invoke-virtual {p1, p0, v2, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_9
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_9 .. :try_end_9} :catch_0

    .line 322
    .line 323
    .line 324
    :catch_0
    :goto_4
    return-void
.end method
