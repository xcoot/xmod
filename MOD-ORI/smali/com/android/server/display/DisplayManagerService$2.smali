.class public final Lcom/android/server/display/DisplayManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/DisplayManagerService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/display/DisplayManagerService$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$2;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 1
    iget p1, p0, Lcom/android/server/display/DisplayManagerService$2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string/jumbo v0, "com.samsung.intent.action.ROTATION_CHANGED"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_3

    .line 18
    .line 19
    const-string/jumbo p1, "rotation"

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    const-string/jumbo v1, "updateDisplayDevice"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$2;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 37
    .line 38
    iget-object v1, v1, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 39
    .line 40
    monitor-enter v1

    .line 41
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$2;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 42
    .line 43
    iget-object v2, v2, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    .line 44
    .line 45
    if-nez v2, :cond_0

    .line 46
    .line 47
    monitor-exit v1

    .line 48
    goto :goto_3

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    monitor-exit v1

    .line 55
    goto :goto_1

    .line 56
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    throw p0

    .line 58
    :cond_1
    :goto_1
    const-string/jumbo v1, "waitForDeviceAdded"

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$2;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 66
    .line 67
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    .line 68
    .line 69
    new-instance v1, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda15;

    .line 70
    .line 71
    invoke-direct {v1, p0, p1}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/display/DisplayManagerService$2;I)V

    .line 72
    .line 73
    .line 74
    if-eqz p2, :cond_2

    .line 75
    .line 76
    const-wide/16 p0, 0x12c

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_2
    const-wide/16 p0, 0x0

    .line 80
    .line 81
    :goto_2
    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 82
    .line 83
    .line 84
    :cond_3
    :goto_3
    return-void

    .line 85
    :pswitch_0
    const-string p1, "android.os.action.SETTING_RESTORED"

    .line 86
    .line 87
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-eqz p1, :cond_a

    .line 96
    .line 97
    const-string/jumbo p1, "screen_resolution_mode"

    .line 98
    .line 99
    .line 100
    const-string/jumbo v0, "setting_name"

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-eqz p1, :cond_a

    .line 112
    .line 113
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$2;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 114
    .line 115
    const-string p1, "Restoring resolution from backup: ("

    .line 116
    .line 117
    const-string p2, "Skipping resolution restore - "

    .line 118
    .line 119
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 120
    .line 121
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    const-string/jumbo v1, "screen_resolution_mode"

    .line 126
    .line 127
    .line 128
    const/4 v2, -0x2

    .line 129
    const/4 v3, 0x0

    .line 130
    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-nez v0, :cond_4

    .line 135
    .line 136
    goto/16 :goto_6

    .line 137
    .line 138
    :cond_4
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 139
    .line 140
    monitor-enter v1

    .line 141
    :try_start_1
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 142
    .line 143
    const/4 v4, 0x1

    .line 144
    invoke-virtual {v2, v3, v4}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    if-nez v2, :cond_5

    .line 149
    .line 150
    const/4 v2, 0x0

    .line 151
    goto :goto_4

    .line 152
    :cond_5
    iget-object v2, v2, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 153
    .line 154
    :goto_4
    if-nez v2, :cond_6

    .line 155
    .line 156
    const-string p0, "DisplayManagerService"

    .line 157
    .line 158
    const-string p1, "No default display device present to restore resolution mode"

    .line 159
    .line 160
    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    monitor-exit v1

    .line 164
    goto :goto_6

    .line 165
    :catchall_1
    move-exception p0

    .line 166
    goto :goto_5

    .line 167
    :cond_6
    invoke-virtual {v2}, Lcom/android/server/display/DisplayDevice;->getSupportedResolutionsLocked()[Landroid/graphics/Point;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    array-length v5, v2

    .line 172
    const/4 v6, 0x2

    .line 173
    if-eq v5, v6, :cond_8

    .line 174
    .line 175
    sget-boolean p0, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    .line 176
    .line 177
    if-eqz p0, :cond_7

    .line 178
    .line 179
    const-string p0, "DisplayManagerService"

    .line 180
    .line 181
    new-instance p1, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    array-length p2, v2

    .line 187
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .line 196
    .line 197
    :cond_7
    monitor-exit v1

    .line 198
    goto :goto_6

    .line 199
    :cond_8
    if-ne v0, v4, :cond_9

    .line 200
    .line 201
    move v4, v3

    .line 202
    :cond_9
    aget-object p2, v2, v4

    .line 203
    .line 204
    new-instance v2, Landroid/view/Display$Mode;

    .line 205
    .line 206
    iget v4, p2, Landroid/graphics/Point;->x:I

    .line 207
    .line 208
    iget v5, p2, Landroid/graphics/Point;->y:I

    .line 209
    .line 210
    const/4 v6, 0x0

    .line 211
    invoke-direct {v2, v4, v5, v6}, Landroid/view/Display$Mode;-><init>(IIF)V

    .line 212
    .line 213
    .line 214
    const-string v4, "DisplayManagerService"

    .line 215
    .line 216
    new-instance v5, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    invoke-direct {v5, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    const-string p1, ") "

    .line 225
    .line 226
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    iget p1, p2, Landroid/graphics/Point;->x:I

    .line 230
    .line 231
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    const-string/jumbo p1, "x"

    .line 235
    .line 236
    .line 237
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    iget p1, p2, Landroid/graphics/Point;->y:I

    .line 241
    .line 242
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    invoke-static {v4, p1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    .line 251
    .line 252
    invoke-virtual {p0, v3, v2}, Lcom/android/server/display/DisplayManagerService;->setUserPreferredDisplayModeInternal(ILandroid/view/Display$Mode;)V

    .line 253
    .line 254
    .line 255
    monitor-exit v1

    .line 256
    goto :goto_6

    .line 257
    :goto_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 258
    throw p0

    .line 259
    :cond_a
    :goto_6
    return-void

    .line 260
    :pswitch_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    const-string v0, "android.intent.action.DOCK_EVENT"

    .line 265
    .line 266
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result p1

    .line 270
    const/4 v0, 0x1

    .line 271
    const/4 v1, 0x0

    .line 272
    if-eqz p1, :cond_d

    .line 273
    .line 274
    const-string p1, "android.intent.extra.DOCK_STATE"

    .line 275
    .line 276
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 277
    .line 278
    .line 279
    move-result p1

    .line 280
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$2;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 281
    .line 282
    if-eq p1, v0, :cond_c

    .line 283
    .line 284
    const/4 v3, 0x3

    .line 285
    if-eq p1, v3, :cond_c

    .line 286
    .line 287
    const/4 v3, 0x4

    .line 288
    if-ne p1, v3, :cond_b

    .line 289
    .line 290
    goto :goto_7

    .line 291
    :cond_b
    move p1, v1

    .line 292
    goto :goto_8

    .line 293
    :cond_c
    :goto_7
    move p1, v0

    .line 294
    :goto_8
    iput-boolean p1, v2, Lcom/android/server/display/DisplayManagerService;->mIsDocked:Z

    .line 295
    .line 296
    :cond_d
    const-string p1, "android.intent.action.DREAMING_STARTED"

    .line 297
    .line 298
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v2

    .line 302
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    move-result p1

    .line 306
    if-eqz p1, :cond_e

    .line 307
    .line 308
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService$2;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 309
    .line 310
    iput-boolean v0, p1, Lcom/android/server/display/DisplayManagerService;->mIsDreaming:Z

    .line 311
    .line 312
    goto :goto_9

    .line 313
    :cond_e
    const-string p1, "android.intent.action.DREAMING_STOPPED"

    .line 314
    .line 315
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object p2

    .line 319
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 320
    .line 321
    .line 322
    move-result p1

    .line 323
    if-eqz p1, :cond_f

    .line 324
    .line 325
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService$2;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 326
    .line 327
    iput-boolean v1, p1, Lcom/android/server/display/DisplayManagerService;->mIsDreaming:Z

    .line 328
    .line 329
    :cond_f
    :goto_9
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$2;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 330
    .line 331
    iget-boolean p1, p0, Lcom/android/server/display/DisplayManagerService;->mIsDocked:Z

    .line 332
    .line 333
    if-eqz p1, :cond_10

    .line 334
    .line 335
    iget-boolean p1, p0, Lcom/android/server/display/DisplayManagerService;->mIsDreaming:Z

    .line 336
    .line 337
    if-eqz p1, :cond_10

    .line 338
    .line 339
    goto :goto_a

    .line 340
    :cond_10
    move v0, v1

    .line 341
    :goto_a
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayManagerService;->setDockedAndIdleEnabled(Z)V

    .line 342
    .line 343
    .line 344
    return-void

    .line 345
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
