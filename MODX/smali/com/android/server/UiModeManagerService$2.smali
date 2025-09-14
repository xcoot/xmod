.class public final Lcom/android/server/UiModeManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/UiModeManagerService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/UiModeManagerService$2;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$2;->this$0:Lcom/android/server/UiModeManagerService;

    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 8
    return-void
.end method

.method private final onReceive$com$android$server$UiModeManagerService$3(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    const-string p1, "android.intent.extra.DOCK_STATE"

    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 7
    move-result p1

    .line 8
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$2;->this$0:Lcom/android/server/UiModeManagerService;

    .line 10
    iget-object p2, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    .line 12
    monitor-enter p2

    .line 13
    :try_start_0
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    .line 15
    if-eq p1, v1, :cond_1

    .line 17
    iput p1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    .line 19
    const/4 v1, 0x2

    .line 20
    const/4 v2, 0x1

    .line 21
    if-ne p1, v1, :cond_0

    .line 23
    move p1, v2

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move p1, v0

    .line 26
    :goto_0
    const-string v1, ""

    .line 28
    invoke-virtual {p0, v0, v0, v1, p1}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(IILjava/lang/String;Z)V

    .line 31
    iget-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    .line 33
    if-eqz p1, :cond_1

    .line 35
    invoke-virtual {p0, v2, v0}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 38
    goto :goto_1

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_2

    .line 41
    :cond_1
    :goto_1
    monitor-exit p2

    .line 42
    return-void

    .line 43
    :goto_2
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw p0
.end method

.method private final onReceive$com$android$server$UiModeManagerService$4(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    const/4 v0, 0x0

    .line 9
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    .line 11
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$2;->this$0:Lcom/android/server/UiModeManagerService;

    .line 20
    const-string/jumbo v1, "plugged"

    .line 23
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 26
    move-result p2

    .line 27
    if-eqz p2, :cond_1

    .line 29
    const/4 p2, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move p2, v0

    .line 32
    :goto_0
    iput-boolean p2, p1, Lcom/android/server/UiModeManagerService;->mCharging:Z

    .line 34
    :goto_1
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$2;->this$0:Lcom/android/server/UiModeManagerService;

    .line 36
    iget-object p1, p1, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    .line 38
    monitor-enter p1

    .line 39
    :try_start_0
    iget-object p2, p0, Lcom/android/server/UiModeManagerService$2;->this$0:Lcom/android/server/UiModeManagerService;

    .line 41
    iget-boolean v1, p2, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    .line 43
    if-eqz v1, :cond_3

    .line 45
    iget-boolean v1, p2, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    .line 47
    if-nez v1, :cond_2

    .line 49
    iget p2, p2, Lcom/android/server/UiModeManagerService;->mDockState:I

    .line 51
    invoke-static {p2}, Lcom/android/server/UiModeManagerService;->isDeskDockState(I)Z

    .line 54
    move-result p2

    .line 55
    if-eqz p2, :cond_3

    .line 57
    :cond_2
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$2;->this$0:Lcom/android/server/UiModeManagerService;

    .line 59
    invoke-virtual {p0, v0, v0}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 62
    goto :goto_2

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_3

    .line 65
    :cond_3
    :goto_2
    monitor-exit p1

    .line 66
    return-void

    .line 67
    :goto_3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    throw p0
.end method

.method private final onReceive$com$android$server$UiModeManagerService$6(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$2;->this$0:Lcom/android/server/UiModeManagerService;

    .line 3
    iget-object p1, p1, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-object p2, p0, Lcom/android/server/UiModeManagerService$2;->this$0:Lcom/android/server/UiModeManagerService;

    .line 8
    invoke-virtual {p2}, Lcom/android/server/UiModeManagerService;->unregisterDeviceInactiveListenerLocked()V

    .line 11
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$2;->this$0:Lcom/android/server/UiModeManagerService;

    .line 13
    const/4 p2, 0x0

    .line 14
    invoke-virtual {p0, p2, p2}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 17
    monitor-exit p1

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p0
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    iget v2, p0, Lcom/android/server/UiModeManagerService$2;->$r8$classId:I

    .line 5
    packed-switch v2, :pswitch_data_0

    .line 8
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$2;->this$0:Lcom/android/server/UiModeManagerService;

    .line 10
    iget-object v0, p1, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$2;->this$0:Lcom/android/server/UiModeManagerService;

    .line 15
    iget-object p1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:Lcom/android/server/UiModeManagerService$1;

    .line 17
    iget p1, p1, Lcom/android/server/UiModeManagerService$1;->mNightModeValue:I

    .line 19
    const/4 p2, 0x3

    .line 20
    if-eq p1, p2, :cond_0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->shouldApplyAutomaticChangesImmediately()Z

    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_1

    .line 29
    invoke-virtual {p0, v1, v1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->registerDeviceInactiveListenerLocked()V

    .line 36
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->scheduleNextCustomTimeListener()V

    .line 39
    :goto_1
    monitor-exit v0

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p0

    .line 44
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/UiModeManagerService$2;->onReceive$com$android$server$UiModeManagerService$6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 47
    return-void

    .line 48
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/UiModeManagerService$2;->onReceive$com$android$server$UiModeManagerService$4(Landroid/content/Context;Landroid/content/Intent;)V

    .line 51
    return-void

    .line 52
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/UiModeManagerService$2;->onReceive$com$android$server$UiModeManagerService$3(Landroid/content/Context;Landroid/content/Intent;)V

    .line 55
    return-void

    .line 56
    :pswitch_3
    const-string/jumbo v0, "ui_night_mode"

    .line 59
    const-string/jumbo v1, "dark_theme_custom_start_time"

    .line 62
    const-string/jumbo v2, "dark_theme_custom_end_time"

    .line 65
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    .line 68
    move-result-object v0

    .line 69
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 76
    move-result-object p2

    .line 77
    const-string/jumbo v1, "setting_name"

    .line 80
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 83
    move-result-object p2

    .line 84
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 87
    move-result p2

    .line 88
    if-eqz p2, :cond_2

    .line 90
    iget-object p2, p0, Lcom/android/server/UiModeManagerService$2;->this$0:Lcom/android/server/UiModeManagerService;

    .line 92
    iget-object p2, p2, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    .line 94
    monitor-enter p2

    .line 95
    :try_start_1
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$2;->this$0:Lcom/android/server/UiModeManagerService;

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 100
    move-result-object v1

    .line 101
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 104
    move-result v2

    .line 105
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/UiModeManagerService;->updateNightModeFromSettingsLocked(Landroid/content/Context;Landroid/content/res/Resources;I)V

    .line 108
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$2;->this$0:Lcom/android/server/UiModeManagerService;

    .line 110
    invoke-virtual {p1}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked()V

    .line 113
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$2;->this$0:Lcom/android/server/UiModeManagerService;

    .line 115
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->applyConfigurationExternallyLocked()V

    .line 118
    monitor-exit p2

    .line 119
    goto :goto_2

    .line 120
    :catchall_1
    move-exception p0

    .line 121
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 122
    throw p0

    .line 123
    :cond_2
    :goto_2
    return-void

    .line 124
    :pswitch_4
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$2;->this$0:Lcom/android/server/UiModeManagerService;

    .line 126
    iget-object p1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:Lcom/android/server/UiModeManagerService$1;

    .line 128
    iget p1, p1, Lcom/android/server/UiModeManagerService$1;->mNightModeValue:I

    .line 130
    if-nez p1, :cond_3

    .line 132
    iget p1, p0, Lcom/android/server/UiModeManagerService;->mCurrentUser:I

    .line 134
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 137
    move-result-object p2

    .line 138
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 141
    move-result-object p2

    .line 142
    iget-boolean p0, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    .line 144
    const-string/jumbo v0, "ui_night_mode_last_computed"

    .line 147
    invoke-static {p2, v0, p0, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 150
    :cond_3
    return-void

    .line 151
    :pswitch_5
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 154
    move-result-object p1

    .line 155
    if-eqz p1, :cond_4

    .line 157
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 160
    move-result-object v0

    .line 161
    :cond_4
    if-nez v0, :cond_5

    .line 163
    goto :goto_3

    .line 164
    :cond_5
    const-string p1, "android.intent.extra.user_handle"

    .line 166
    const/16 v2, -0x2710

    .line 168
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 171
    move-result p1

    .line 172
    if-ne p1, v2, :cond_6

    .line 174
    goto :goto_3

    .line 175
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 178
    move-result-object v2

    .line 179
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    .line 181
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    move-result v3

    .line 185
    if-eqz v3, :cond_7

    .line 187
    const-string v3, "android.intent.extra.REPLACING"

    .line 189
    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 192
    move-result p2

    .line 193
    if-eqz p2, :cond_7

    .line 195
    goto :goto_3

    .line 196
    :cond_7
    iget-object p2, p0, Lcom/android/server/UiModeManagerService$2;->this$0:Lcom/android/server/UiModeManagerService;

    .line 198
    invoke-virtual {p2, v0}, Lcom/android/server/UiModeManagerService;->isNightPriorityAllowedLocked(Ljava/lang/String;)Z

    .line 201
    move-result p2

    .line 202
    if-eqz p2, :cond_8

    .line 204
    sget-object p2, Lcom/android/server/UiModeManagerService;->SUPPORTED_NIGHT_MODE_CUSTOM_TYPES:Ljava/util/Set;

    .line 206
    const-string p2, "UiModeManager"

    .line 208
    const-string/jumbo v1, "onReceive : "

    .line 211
    const-string v3, ", package : "

    .line 213
    const-string v4, ", "

    .line 215
    invoke-static {v1, v2, v3, v0, v4}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    move-result-object v1

    .line 219
    invoke-static {v1, p1, p2}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 222
    iget-object p2, p0, Lcom/android/server/UiModeManagerService$2;->this$0:Lcom/android/server/UiModeManagerService;

    .line 224
    const/4 v1, 0x2

    .line 225
    invoke-static {p2, v0, p1, v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$msetPackageNightModeInnerLocked(Lcom/android/server/UiModeManagerService;Ljava/lang/String;II)Z

    .line 228
    iget-object p2, p0, Lcom/android/server/UiModeManagerService$2;->this$0:Lcom/android/server/UiModeManagerService;

    .line 230
    iget-object p2, p2, Lcom/android/server/UiModeManagerService;->mPackagesNeedToShowDialog:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    .line 232
    monitor-enter p2

    .line 233
    :try_start_2
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$2;->this$0:Lcom/android/server/UiModeManagerService;

    .line 235
    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mPackagesNeedToShowDialog:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    .line 237
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 239
    invoke-virtual {p0, v0, p1, v1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->putValue(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 242
    monitor-exit p2

    .line 243
    goto :goto_3

    .line 244
    :catchall_2
    move-exception p0

    .line 245
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 246
    throw p0

    .line 247
    :cond_8
    :goto_3
    return-void

    .line 248
    :pswitch_6
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getResultCode()I

    .line 251
    move-result p1

    .line 252
    const/4 v2, -0x1

    .line 253
    if-eq p1, v2, :cond_9

    .line 255
    goto :goto_5

    .line 256
    :cond_9
    const-string/jumbo p1, "enableFlags"

    .line 259
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 262
    move-result p1

    .line 263
    const-string/jumbo v2, "disableFlags"

    .line 266
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 269
    move-result v1

    .line 270
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$2;->this$0:Lcom/android/server/UiModeManagerService;

    .line 272
    iget-object v2, v2, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    .line 274
    monitor-enter v2

    .line 275
    :try_start_3
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$2;->this$0:Lcom/android/server/UiModeManagerService;

    .line 277
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 280
    move-result-object p2

    .line 281
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 284
    sget-object v3, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    .line 286
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 289
    move-result v3

    .line 290
    if-eqz v3, :cond_a

    .line 292
    iget-boolean p2, p0, Lcom/android/server/UiModeManagerService;->mEnableCarDockLaunch:Z

    .line 294
    if-eqz p2, :cond_c

    .line 296
    and-int/lit8 p1, p1, 0x1

    .line 298
    if-eqz p1, :cond_c

    .line 300
    const-string v0, "android.intent.category.CAR_DOCK"

    .line 302
    goto :goto_4

    .line 303
    :cond_a
    sget-object v3, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    .line 305
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 308
    move-result p2

    .line 309
    if-eqz p2, :cond_b

    .line 311
    and-int/lit8 p1, p1, 0x1

    .line 313
    if-eqz p1, :cond_c

    .line 315
    const-string v0, "android.intent.category.DESK_DOCK"

    .line 317
    goto :goto_4

    .line 318
    :cond_b
    and-int/lit8 p1, v1, 0x1

    .line 320
    if-eqz p1, :cond_c

    .line 322
    const-string v0, "android.intent.category.HOME"

    .line 324
    :cond_c
    :goto_4
    invoke-virtual {p0, v0}, Lcom/android/server/UiModeManagerService;->sendConfigurationAndStartDreamOrDockAppLocked(Ljava/lang/String;)V

    .line 327
    monitor-exit v2

    .line 328
    :goto_5
    return-void

    .line 329
    :catchall_3
    move-exception p0

    .line 330
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 331
    throw p0

    .line 332
    nop

    .line 333
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
