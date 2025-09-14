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

    .line 3
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$2;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 1
    iget p1, p0, Lcom/android/server/display/DisplayManagerService$2;->$r8$classId:I

    .line 3
    packed-switch p1, :pswitch_data_0

    .line 6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    const-string/jumbo v0, "com.samsung.intent.action.ROTATION_CHANGED"

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_3

    .line 19
    const-string/jumbo p1, "rotation"

    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 26
    move-result p1

    .line 27
    const-string/jumbo v1, "updateDisplayDevice"

    .line 30
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 36
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$2;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 38
    iget-object v1, v1, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 40
    monitor-enter v1

    .line 41
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$2;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 43
    iget-object v2, v2, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    .line 45
    if-nez v2, :cond_0

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

    .line 61
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 64
    move-result p2

    .line 65
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$2;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 67
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    .line 69
    new-instance v1, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda15;

    .line 71
    invoke-direct {v1, p0, p1}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/display/DisplayManagerService$2;I)V

    .line 74
    if-eqz p2, :cond_2

    .line 76
    const-wide/16 p0, 0x12c

    .line 78
    goto :goto_2

    .line 79
    :cond_2
    const-wide/16 p0, 0x0

    .line 81
    :goto_2
    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 84
    :cond_3
    :goto_3
    return-void

    .line 85
    :pswitch_0
    const-string p1, "android.os.action.SETTING_RESTORED"

    .line 87
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    move-result p1

    .line 95
    if-eqz p1, :cond_a

    .line 97
    const-string/jumbo p1, "screen_resolution_mode"

    .line 100
    const-string/jumbo v0, "setting_name"

    .line 103
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    .line 106
    move-result-object p2

    .line 107
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    move-result p1

    .line 111
    if-eqz p1, :cond_a

    .line 113
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$2;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 115
    const-string p1, "Restoring resolution from backup: ("

    .line 117
    const-string p2, "Skipping resolution restore - "

    .line 119
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 121
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 124
    move-result-object v0

    .line 125
    const-string/jumbo v1, "screen_resolution_mode"

    .line 128
    const/4 v2, -0x2

    .line 129
    const/4 v3, 0x0

    .line 130
    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 133
    move-result v0

    .line 134
    if-nez v0, :cond_4

    .line 136
    goto/16 :goto_6

    .line 138
    :cond_4
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 140
    monitor-enter v1

    .line 141
    :try_start_1
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    .line 143
    const/4 v4, 0x1

    .line 144
    invoke-virtual {v2, v3, v4}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    .line 147
    move-result-object v2

    .line 148
    if-nez v2, :cond_5

    .line 150
    const/4 v2, 0x0

    .line 151
    goto :goto_4

    .line 152
    :cond_5
    iget-object v2, v2, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 154
    :goto_4
    if-nez v2, :cond_6

    .line 156
    const-string p0, "DisplayManagerService"

    .line 158
    const-string p1, "No default display device present to restore resolution mode"

    .line 160
    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 170
    move-result-object v2

    .line 171
    array-length v5, v2

    .line 172
    const/4 v6, 0x2

    .line 173
    if-eq v5, v6, :cond_8

    .line 175
    sget-boolean p0, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    .line 177
    if-eqz p0, :cond_7

    .line 179
    const-string p0, "DisplayManagerService"

    .line 181
    new-instance p1, Ljava/lang/StringBuilder;

    .line 183
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    array-length p2, v2

    .line 187
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    move-result-object p1

    .line 194
    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_7
    monitor-exit v1

    .line 198
    goto :goto_6

    .line 199
    :cond_8
    if-ne v0, v4, :cond_9

    .line 201
    move v4, v3

    .line 202
    :cond_9
    aget-object p2, v2, v4

    .line 204
    new-instance v2, Landroid/view/Display$Mode;

    .line 206
    iget v4, p2, Landroid/graphics/Point;->x:I

    .line 208
    iget v5, p2, Landroid/graphics/Point;->y:I

    .line 210
    const/4 v6, 0x0

    .line 211
    invoke-direct {v2, v4, v5, v6}, Landroid/view/Display$Mode;-><init>(IIF)V

    .line 214
    const-string v4, "DisplayManagerService"

    .line 216
    new-instance v5, Ljava/lang/StringBuilder;

    .line 218
    invoke-direct {v5, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 224
    const-string p1, ") "

    .line 226
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    iget p1, p2, Landroid/graphics/Point;->x:I

    .line 231
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 234
    const-string/jumbo p1, "x"

    .line 237
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    iget p1, p2, Landroid/graphics/Point;->y:I

    .line 242
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    move-result-object p1

    .line 249
    invoke-static {v4, p1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-virtual {p0, v3, v2}, Lcom/android/server/display/DisplayManagerService;->setUserPreferredDisplayModeInternal(ILandroid/view/Display$Mode;)V

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

    .line 263
    move-result-object p1

    .line 264
    const-string v0, "android.intent.action.DOCK_EVENT"

    .line 266
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 269
    move-result p1

    .line 270
    const/4 v0, 0x1

    .line 271
    const/4 v1, 0x0

    .line 272
    if-eqz p1, :cond_d

    .line 274
    const-string p1, "android.intent.extra.DOCK_STATE"

    .line 276
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 279
    move-result p1

    .line 280
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$2;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 282
    if-eq p1, v0, :cond_c

    .line 284
    const/4 v3, 0x3

    .line 285
    if-eq p1, v3, :cond_c

    .line 287
    const/4 v3, 0x4

    .line 288
    if-ne p1, v3, :cond_b

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

    .line 296
    :cond_d
    const-string p1, "android.intent.action.DREAMING_STARTED"

    .line 298
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 301
    move-result-object v2

    .line 302
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 305
    move-result p1

    .line 306
    if-eqz p1, :cond_e

    .line 308
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService$2;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 310
    iput-boolean v0, p1, Lcom/android/server/display/DisplayManagerService;->mIsDreaming:Z

    .line 312
    goto :goto_9

    .line 313
    :cond_e
    const-string p1, "android.intent.action.DREAMING_STOPPED"

    .line 315
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 318
    move-result-object p2

    .line 319
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 322
    move-result p1

    .line 323
    if-eqz p1, :cond_f

    .line 325
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService$2;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 327
    iput-boolean v1, p1, Lcom/android/server/display/DisplayManagerService;->mIsDreaming:Z

    .line 329
    :cond_f
    :goto_9
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$2;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 331
    iget-boolean p1, p0, Lcom/android/server/display/DisplayManagerService;->mIsDocked:Z

    .line 333
    if-eqz p1, :cond_10

    .line 335
    iget-boolean p1, p0, Lcom/android/server/display/DisplayManagerService;->mIsDreaming:Z

    .line 337
    if-eqz p1, :cond_10

    .line 339
    goto :goto_a

    .line 340
    :cond_10
    move v0, v1

    .line 341
    :goto_a
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayManagerService;->setDockedAndIdleEnabled(Z)V

    .line 344
    return-void

    .line 345
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
