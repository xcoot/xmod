.class public final Lcom/android/server/accessibility/AccessibilityManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public synthetic constructor <init>(ILcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->$r8$classId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x4

    .line 4
    const/4 v3, -0x1

    .line 5
    const/4 v4, 0x1

    .line 6
    const/4 v5, 0x0

    .line 7
    iget v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->$r8$classId:I

    .line 9
    packed-switch v6, :pswitch_data_0

    .line 12
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 15
    move-result-object p2

    .line 16
    const-string v6, "android.intent.action.BOOT_COMPLETED"

    .line 18
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result v6

    .line 22
    if-eqz v6, :cond_2

    .line 24
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 27
    move-result p2

    .line 28
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 31
    move-result v0

    .line 32
    if-eq p2, v0, :cond_0

    .line 34
    goto/16 :goto_2

    .line 36
    :cond_0
    sget-boolean p2, Landroid/view/accessibility/A11yRune;->A11Y_COLOR_BOOL_SUPPORT_COLOR_FILTER_MDNIE_HW:Z

    .line 38
    if-eqz p2, :cond_1

    .line 40
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 42
    invoke-static {p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mseMdnieHWColorLensState(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 48
    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$menableColorLens(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 51
    :goto_0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 53
    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$menableColorRelumino(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 56
    goto/16 :goto_2

    .line 58
    :cond_2
    const-string v6, "android.intent.action.USER_SWITCHED"

    .line 60
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    move-result p2

    .line 64
    if-eqz p2, :cond_6

    .line 66
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 68
    iget-object p2, p2, Lcom/android/server/accessibility/AccessibilityManagerService;->mGesturewakeup:Lcom/android/server/accessibility/GestureWakeup;

    .line 70
    invoke-virtual {p2, p1}, Lcom/android/server/accessibility/GestureWakeup;->checkSettingCondition(Landroid/content/Context;)Z

    .line 73
    move-result p2

    .line 74
    if-eqz p2, :cond_3

    .line 76
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 78
    iget-object p2, p2, Lcom/android/server/accessibility/AccessibilityManagerService;->mGesturewakeup:Lcom/android/server/accessibility/GestureWakeup;

    .line 80
    invoke-virtual {p2}, Lcom/android/server/accessibility/GestureWakeup;->StopGestureWakeup()V

    .line 83
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 85
    iget-object p2, p2, Lcom/android/server/accessibility/AccessibilityManagerService;->mGesturewakeup:Lcom/android/server/accessibility/GestureWakeup;

    .line 87
    invoke-virtual {p2}, Lcom/android/server/accessibility/GestureWakeup;->StartGestureWakeup()Z

    .line 90
    :cond_3
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 92
    iget-object p2, p2, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 94
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 97
    move-result-object p2

    .line 98
    const-string/jumbo v6, "user_setup_complete"

    .line 101
    const/4 v7, -0x2

    .line 102
    invoke-static {p2, v6, v5, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 105
    move-result p2

    .line 106
    if-nez p2, :cond_4

    .line 108
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 110
    new-instance v6, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;

    .line 112
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 114
    invoke-direct {v6, v4, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;-><init>(ILcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 117
    iput-object v6, p2, Lcom/android/server/accessibility/AccessibilityManagerService;->mColorInversionStateContentObserver:Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;

    .line 119
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 121
    iget-object p2, p2, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 123
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 126
    move-result-object p2

    .line 127
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 129
    iget-object v6, v4, Lcom/android/server/accessibility/AccessibilityManagerService;->mColorInversionStateUri:Landroid/net/Uri;

    .line 131
    iget-object v4, v4, Lcom/android/server/accessibility/AccessibilityManagerService;->mColorInversionStateContentObserver:Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;

    .line 133
    invoke-virtual {p2, v6, v5, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 136
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 138
    new-instance v4, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;

    .line 140
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 142
    invoke-direct {v4, v2, v6}, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;-><init>(ILcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 145
    iput-object v4, p2, Lcom/android/server/accessibility/AccessibilityManagerService;->mSetupCompleteStateContentObserver:Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;

    .line 147
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 149
    iget-object p2, p2, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 151
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 154
    move-result-object p2

    .line 155
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 157
    iget-object v4, v2, Lcom/android/server/accessibility/AccessibilityManagerService;->mSetupCompleteUri:Landroid/net/Uri;

    .line 159
    iget-object v2, v2, Lcom/android/server/accessibility/AccessibilityManagerService;->mSetupCompleteStateContentObserver:Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;

    .line 161
    invoke-virtual {p2, v4, v5, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 164
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 166
    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;

    .line 168
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 170
    invoke-direct {v2, v1, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;-><init>(ILcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 173
    iput-object v2, p2, Lcom/android/server/accessibility/AccessibilityManagerService;->mDaltonizerEnabledStateContentObserver:Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;

    .line 175
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 177
    iget-object p2, p2, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 179
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 182
    move-result-object p2

    .line 183
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 185
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mDisplayDaltonizerEnabledUri:Landroid/net/Uri;

    .line 187
    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mDaltonizerEnabledStateContentObserver:Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;

    .line 189
    invoke-virtual {p2, v2, v5, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 192
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 194
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;

    .line 196
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 198
    invoke-direct {v1, v0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;-><init>(ILcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 201
    iput-object v1, p2, Lcom/android/server/accessibility/AccessibilityManagerService;->mDaltonizerStateContentObserver:Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;

    .line 203
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 205
    iget-object p2, p2, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 207
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 210
    move-result-object p2

    .line 211
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 213
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mDisplayDaltonizerUri:Landroid/net/Uri;

    .line 215
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mDaltonizerStateContentObserver:Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;

    .line 217
    invoke-virtual {p2, v1, v5, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 220
    invoke-static {}, Lcom/android/server/accessibility/Flags;->enableColorCorrectionSaturation()Z

    .line 223
    move-result p2

    .line 224
    if-eqz p2, :cond_4

    .line 226
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 228
    iget-object p2, p2, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 230
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 233
    move-result-object p2

    .line 234
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 236
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mDisplayDaltonizerSaturationLevelUri:Landroid/net/Uri;

    .line 238
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mDaltonizerStateContentObserver:Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;

    .line 240
    invoke-virtual {p2, v1, v5, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 243
    :cond_4
    sget-boolean p2, Landroid/view/accessibility/A11yRune;->A11Y_COLOR_BOOL_SUPPORT_COLOR_FILTER_MDNIE_HW:Z

    .line 245
    if-eqz p2, :cond_5

    .line 247
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 249
    invoke-static {p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mseMdnieHWColorLensState(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 252
    goto :goto_1

    .line 253
    :cond_5
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 255
    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$menableColorLens(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 258
    :goto_1
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 260
    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$menableColorRelumino(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 263
    :cond_6
    :goto_2
    return-void

    .line 264
    :pswitch_0
    const-string p1, "android.companion.virtual.extra.VIRTUAL_DEVICE_ID"

    .line 266
    invoke-virtual {p2, p1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 269
    move-result p1

    .line 270
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 272
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    .line 274
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->clearConnections(I)V

    .line 277
    return-void

    .line 278
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 280
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->setNonA11yToolNotificationToMatchSafetyCenter()V

    .line 283
    return-void

    .line 284
    :pswitch_2
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 286
    iget-object v6, v6, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 288
    const-wide/32 v7, 0x10000

    .line 291
    invoke-virtual {v6, v7, v8}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 294
    move-result v6

    .line 295
    if-eqz v6, :cond_7

    .line 297
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 299
    iget-object v6, v6, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 301
    const-string v9, "AccessibilityManagerService.BR.onReceive"

    .line 303
    new-instance v10, Ljava/lang/StringBuilder;

    .line 305
    const-string/jumbo v11, "context="

    .line 308
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 314
    const-string p1, ";intent="

    .line 316
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 325
    move-result-object p1

    .line 326
    invoke-virtual {v6, v9, v7, v8, p1}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 329
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 332
    move-result-object p1

    .line 333
    const-string v6, "android.intent.action.USER_SWITCHED"

    .line 335
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 338
    move-result v6

    .line 339
    if-eqz v6, :cond_8

    .line 341
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 343
    iput-boolean v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurtainModeIsRunning:Z

    .line 345
    const-string p1, "android.intent.extra.user_handle"

    .line 347
    invoke-virtual {p2, p1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 350
    move-result p1

    .line 351
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->switchUser(I)V

    .line 354
    goto/16 :goto_7

    .line 356
    :cond_8
    const-string v6, "android.intent.action.USER_UNLOCKED"

    .line 358
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 361
    move-result v6

    .line 362
    if-eqz v6, :cond_a

    .line 364
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 366
    const-string p1, "android.intent.extra.user_handle"

    .line 368
    invoke-virtual {p2, p1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 371
    move-result p1

    .line 372
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 374
    monitor-enter v6

    .line 375
    :try_start_0
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 377
    invoke-virtual {p2, p1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveProfileParentLocked(I)I

    .line 380
    move-result p1

    .line 381
    iget p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 383
    if-ne p1, p2, :cond_9

    .line 385
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 388
    move-result-object p1

    .line 389
    invoke-virtual {p0, p1, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    .line 392
    goto :goto_3

    .line 393
    :catchall_0
    move-exception p0

    .line 394
    goto :goto_4

    .line 395
    :cond_9
    :goto_3
    monitor-exit v6

    .line 396
    goto/16 :goto_7

    .line 398
    :goto_4
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    throw p0

    .line 400
    :cond_a
    const-string v6, "android.intent.action.USER_REMOVED"

    .line 402
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 405
    move-result v6

    .line 406
    if-eqz v6, :cond_b

    .line 408
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 410
    const-string p1, "android.intent.extra.user_handle"

    .line 412
    invoke-virtual {p2, p1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 415
    move-result p1

    .line 416
    invoke-static {p1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mremoveUser(ILcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 419
    goto/16 :goto_7

    .line 421
    :cond_b
    const-string v6, "android.os.action.SETTING_RESTORED"

    .line 423
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 426
    move-result p1

    .line 427
    if-eqz p1, :cond_14

    .line 429
    const-string/jumbo p1, "setting_name"

    .line 432
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 435
    move-result-object p1

    .line 436
    if-nez p1, :cond_c

    .line 438
    goto/16 :goto_7

    .line 440
    :cond_c
    const-string/jumbo v6, "previous_value"

    .line 443
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 446
    move-result-object v6

    .line 447
    const-string/jumbo v7, "new_value"

    .line 450
    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 453
    move-result-object v7

    .line 454
    const-string/jumbo v8, "restored_from_sdk_int"

    .line 457
    invoke-virtual {p2, v8, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 460
    move-result p2

    .line 461
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 464
    move-result v8

    .line 465
    sparse-switch v8, :sswitch_data_0

    .line 468
    :goto_5
    move v0, v3

    .line 469
    goto :goto_6

    .line 470
    :sswitch_0
    const-string v0, "accessibility_display_magnification_navbar_enabled"

    .line 472
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 475
    move-result p1

    .line 476
    if-nez p1, :cond_d

    .line 478
    goto :goto_5

    .line 479
    :cond_d
    move v0, v2

    .line 480
    goto :goto_6

    .line 481
    :sswitch_1
    const-string v1, "accessibility_button_targets"

    .line 483
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 486
    move-result p1

    .line 487
    if-nez p1, :cond_11

    .line 489
    goto :goto_5

    .line 490
    :sswitch_2
    const-string/jumbo v0, "enabled_accessibility_services"

    .line 493
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 496
    move-result p1

    .line 497
    if-nez p1, :cond_e

    .line 499
    goto :goto_5

    .line 500
    :cond_e
    move v0, v1

    .line 501
    goto :goto_6

    .line 502
    :sswitch_3
    const-string v0, "accessibility_qs_targets"

    .line 504
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 507
    move-result p1

    .line 508
    if-nez p1, :cond_f

    .line 510
    goto :goto_5

    .line 511
    :cond_f
    move v0, v4

    .line 512
    goto :goto_6

    .line 513
    :sswitch_4
    const-string v0, "accessibility_shortcut_target_service"

    .line 515
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 518
    move-result p1

    .line 519
    if-nez p1, :cond_10

    .line 521
    goto :goto_5

    .line 522
    :cond_10
    move v0, v5

    .line 523
    :cond_11
    :goto_6
    packed-switch v0, :pswitch_data_1

    .line 526
    goto :goto_7

    .line 527
    :pswitch_3
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 529
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 531
    monitor-enter p1

    .line 532
    :try_start_1
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 534
    invoke-static {p0, v7, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mrestoreLegacyDisplayMagnificationNavBarIfNeededLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;I)V

    .line 537
    monitor-exit p1

    .line 538
    goto :goto_7

    .line 539
    :catchall_1
    move-exception p0

    .line 540
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 541
    throw p0

    .line 542
    :pswitch_4
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 544
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 546
    monitor-enter p1

    .line 547
    :try_start_2
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 549
    invoke-virtual {p0, v6, v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->restoreAccessibilityButtonTargetsLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    monitor-exit p1

    .line 553
    goto :goto_7

    .line 554
    :catchall_2
    move-exception p0

    .line 555
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 556
    throw p0

    .line 557
    :pswitch_5
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 559
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 561
    monitor-enter p1

    .line 562
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 564
    invoke-virtual {p0, p2, v6, v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->restoreEnabledAccessibilityServicesLocked(ILjava/lang/String;Ljava/lang/String;)V

    .line 567
    monitor-exit p1

    .line 568
    goto :goto_7

    .line 569
    :catchall_3
    move-exception p0

    .line 570
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 571
    throw p0

    .line 572
    :pswitch_6
    invoke-static {}, Landroid/view/accessibility/Flags;->a11yQsShortcut()Z

    .line 575
    move-result p1

    .line 576
    if-nez p1, :cond_12

    .line 578
    goto :goto_7

    .line 579
    :cond_12
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 581
    invoke-static {p0, v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mrestoreAccessibilityQsTargets(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;)V

    .line 584
    goto :goto_7

    .line 585
    :pswitch_7
    invoke-static {}, Landroid/view/accessibility/Flags;->restoreA11yShortcutTargetService()Z

    .line 588
    move-result p1

    .line 589
    if-nez p1, :cond_13

    .line 591
    goto :goto_7

    .line 592
    :cond_13
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 594
    invoke-static {p0, v6, v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mrestoreAccessibilityShortcutTargetService(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    :cond_14
    :goto_7
    return-void

    .line 598
    nop

    .line 599
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 609
    :sswitch_data_0
    .sparse-switch
        -0x6f8248d1 -> :sswitch_4
        -0x3977748a -> :sswitch_3
        -0x2e36ad13 -> :sswitch_2
        -0x87f9bfa -> :sswitch_1
        0x7fe8893c -> :sswitch_0
    .end sparse-switch

    .line 631
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
