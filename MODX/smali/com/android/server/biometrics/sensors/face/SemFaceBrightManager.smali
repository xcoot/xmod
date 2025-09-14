.class public final Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static SInstance:Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public final mHandlerBg:Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager$1;

.field public mIsReadyToSetMaxBrightness:Z

.field public mIsScreenAutoBrightnessOn:Z

.field public mIsSetBrightness:Z

.field public mNotificationActionReceiver:Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager$2;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public mScreenFlashBrightnessGuideLevel:I

.field public mScreenFlashBrightnessLevelMax:I

.field public mScreenFlashBrightnessLevelMaxCorrected:I

.field public mScreenFlashBrightnessLevelUp:I

.field public mScreenFlashBrightnessLevelUpCorrected:I

.field public mScreenFlashBrightnessStartValue:I

.field public mScreenFlashBrightnessStartValueCorrected:I

.field public final mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessStartValue:I

    .line 7
    iput v0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessLevelUp:I

    .line 9
    iput v0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessLevelMax:I

    .line 11
    iput v0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessStartValueCorrected:I

    .line 13
    iput v0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessLevelUpCorrected:I

    .line 15
    iput v0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessLevelMaxCorrected:I

    .line 17
    const/16 v0, 0x23

    .line 19
    iput v0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mScreenFlashBrightnessGuideLevel:I

    .line 21
    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mIsScreenAutoBrightnessOn:Z

    .line 24
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mIsSetBrightness:Z

    .line 27
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mIsReadyToSetMaxBrightness:Z

    .line 29
    new-instance v0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager$1;

    .line 31
    sget-object v1, Lcom/android/server/biometrics/BiometricHandlerProvider;->sBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    .line 33
    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getFaceHandler()Landroid/os/Handler;

    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 40
    move-result-object v1

    .line 41
    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager$1;-><init>(Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;Landroid/os/Looper;)V

    .line 44
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mHandlerBg:Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager$1;

    .line 46
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mContext:Landroid/content/Context;

    .line 48
    const-class v0, Landroid/os/PowerManager;

    .line 50
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Landroid/os/PowerManager;

    .line 56
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mPowerManager:Landroid/os/PowerManager;

    .line 58
    const-string/jumbo v0, "display"

    .line 61
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 67
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 69
    const-class v0, Landroid/app/WallpaperManager;

    .line 71
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Landroid/app/WallpaperManager;

    .line 77
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 79
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;
    .locals 2

    .line 1
    const-class v0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->SInstance:Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;

    .line 6
    if-nez v1, :cond_0

    .line 8
    new-instance v1, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;

    .line 10
    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;-><init>(Landroid/content/Context;)V

    .line 13
    sput-object v1, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->SInstance:Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->SInstance:Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit v0

    .line 21
    return-object p0

    .line 22
    :goto_1
    monitor-exit v0

    .line 23
    throw p0
.end method

.method public static getPendingIntentForAction(Landroid/content/Context;Ljava/lang/String;II)Landroid/app/PendingIntent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string/jumbo v1, "com.samsung.android.server.biometrics.BIOMETRICS_FACE_NOTIFICATION_SCREEN_FLASH"

    .line 6
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9
    const-string/jumbo v1, "screen_flash_notification_action"

    .line 12
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    const-string/jumbo p1, "user"

    .line 18
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 21
    const/high16 p1, 0x4000000

    .line 23
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 26
    move-result-object p3

    .line 27
    invoke-static {p0, p2, v0, p1, p3}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method


# virtual methods
.method public final setBrightness(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->isFlipFolded(Landroid/content/Context;)Z

    .line 6
    move-result v0

    .line 7
    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mIsScreenAutoBrightnessOn:Z

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v1, :cond_0

    .line 12
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mPowerManager:Landroid/os/PowerManager;

    .line 14
    const/4 v1, -0x1

    .line 15
    invoke-virtual {p0, p1, v1, v2}, Landroid/os/PowerManager;->setAutoBrightnessLimit(IIZ)V

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 21
    invoke-virtual {p0, v0, p1, v2}, Landroid/hardware/display/DisplayManager;->setTemporaryBrightness(IIZ)V

    .line 24
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 26
    const-string/jumbo v1, "setBrightness : "

    .line 29
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    const-string p1, ", "

    .line 37
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object p0

    .line 47
    const-string p1, "SemFaceBrightManager"

    .line 49
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void
.end method

.method public final showNotificationIfNeed(I)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object v0

    .line 7
    const-string/jumbo v1, "face_screen_flash_guideline_displayed"

    .line 10
    const/4 v2, -0x1

    .line 11
    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 14
    move-result v0

    .line 15
    if-ltz v0, :cond_0

    .line 17
    return-void

    .line 18
    :cond_0
    const-string/jumbo v0, "showNotificationIfNeed "

    .line 21
    const-string v2, "SemFaceBrightManager"

    .line 23
    invoke-static {p1, v0, v2}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mContext:Landroid/content/Context;

    .line 28
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 31
    move-result-object v0

    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 36
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mNotificationActionReceiver:Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager$2;

    .line 38
    if-nez v0, :cond_1

    .line 40
    new-instance v0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager$2;

    .line 42
    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager$2;-><init>(Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;)V

    .line 45
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mNotificationActionReceiver:Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager$2;

    .line 47
    new-instance v5, Landroid/content/IntentFilter;

    .line 49
    const-string/jumbo v0, "com.samsung.android.server.biometrics.BIOMETRICS_FACE_NOTIFICATION_SCREEN_FLASH"

    .line 52
    invoke-direct {v5, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 55
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mContext:Landroid/content/Context;

    .line 57
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mNotificationActionReceiver:Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager$2;

    .line 59
    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 61
    sget-object v0, Lcom/android/server/biometrics/BiometricHandlerProvider;->sBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    .line 63
    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getFaceHandler()Landroid/os/Handler;

    .line 66
    move-result-object v8

    .line 67
    const/4 v9, 0x2

    .line 68
    const/4 v7, 0x0

    .line 69
    invoke-static/range {v3 .. v9}, Lcom/android/server/biometrics/Utils;->registerBroadcastAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Handler;I)V

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mContext:Landroid/content/Context;

    .line 74
    const-string/jumbo v1, "notification"

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Landroid/app/NotificationManager;

    .line 83
    new-instance v1, Landroid/app/NotificationChannel;

    .line 85
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mContext:Landroid/content/Context;

    .line 87
    const v4, 0x1040e14

    .line 90
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 93
    move-result-object v3

    .line 94
    const-string v5, "FaceServiceScreenFlashNotificationChannel"

    .line 96
    const/4 v6, 0x4

    .line 97
    invoke-direct {v1, v5, v3, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 100
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 103
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mContext:Landroid/content/Context;

    .line 105
    new-instance v1, Landroid/app/Notification$Builder;

    .line 107
    invoke-direct {v1, p0, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 110
    const v3, 0x1080ac3

    .line 113
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 120
    move-result-object v3

    .line 121
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 124
    move-result-object v1

    .line 125
    const v3, 0x1040e16

    .line 128
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 131
    move-result-object v3

    .line 132
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 135
    move-result-object v1

    .line 136
    const v3, 0x1040e15

    .line 139
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 142
    move-result-object v5

    .line 143
    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 146
    move-result-object v1

    .line 147
    const/4 v5, 0x1

    .line 148
    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 163
    move-result-object v4

    .line 164
    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 167
    move-result-object v1

    .line 168
    const-string/jumbo v4, "settings"

    .line 171
    invoke-static {p0, v4, v5, p1}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->getPendingIntentForAction(Landroid/content/Context;Ljava/lang/String;II)Landroid/app/PendingIntent;

    .line 174
    move-result-object v6

    .line 175
    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 178
    move-result-object v1

    .line 179
    new-instance v6, Landroid/app/Notification$Action$Builder;

    .line 181
    const v7, 0x1040d86

    .line 184
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 187
    move-result-object v7

    .line 188
    const-string/jumbo v8, "close"

    .line 191
    invoke-static {p0, v8, v2, p1}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->getPendingIntentForAction(Landroid/content/Context;Ljava/lang/String;II)Landroid/app/PendingIntent;

    .line 194
    move-result-object v2

    .line 195
    const/4 v8, 0x0

    .line 196
    invoke-direct {v6, v8, v7, v2}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 199
    invoke-virtual {v6}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    .line 202
    move-result-object v2

    .line 203
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 206
    move-result-object v1

    .line 207
    new-instance v2, Landroid/app/Notification$Action$Builder;

    .line 209
    const v6, 0x1040d87

    .line 212
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 215
    move-result-object v6

    .line 216
    invoke-static {p0, v4, v5, p1}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->getPendingIntentForAction(Landroid/content/Context;Ljava/lang/String;II)Landroid/app/PendingIntent;

    .line 219
    move-result-object v4

    .line 220
    invoke-direct {v2, v8, v6, v4}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 223
    invoke-virtual {v2}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    .line 226
    move-result-object v2

    .line 227
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 230
    move-result-object v1

    .line 231
    new-instance v2, Landroid/app/Notification$BigTextStyle;

    .line 233
    invoke-direct {v2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 236
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 239
    move-result-object v3

    .line 240
    invoke-virtual {v2, v3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 243
    move-result-object v2

    .line 244
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 247
    move-result-object v1

    .line 248
    const v2, 0x106001c

    .line 251
    invoke-virtual {p0, v2}, Landroid/content/Context;->getColor(I)I

    .line 254
    move-result p0

    .line 255
    invoke-virtual {v1, p0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 258
    move-result-object p0

    .line 259
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 262
    move-result-object p0

    .line 263
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 266
    move-result-object p1

    .line 267
    const-string v1, "FaceServiceScreenFlash"

    .line 269
    invoke-virtual {v0, v1, v5, p0, p1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 272
    return-void
.end method
