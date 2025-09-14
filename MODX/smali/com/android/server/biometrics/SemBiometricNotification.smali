.class public final Lcom/android/server/biometrics/SemBiometricNotification;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAuthenticatorType:I

.field public final mContext:Landroid/content/Context;

.field public mIcon:I

.field public mMessage:Ljava/lang/String;

.field public final mNotificationManager:Landroid/app/NotificationManager;

.field public final mNotificationTag:Ljava/lang/String;

.field public final mPackageName:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mContext:Landroid/content/Context;

    .line 6
    iput p3, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mAuthenticatorType:I

    .line 8
    const-string/jumbo v0, "notification"

    .line 11
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroid/app/NotificationManager;

    .line 17
    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 19
    iput-object p2, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mPackageName:Ljava/lang/String;

    .line 21
    const-string p1, "BackgroundBiometricsNotification_"

    .line 23
    const-string v0, "_"

    .line 25
    invoke-static {p3, p1, v0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mNotificationTag:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public final cancelNotification()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "cancelNotification start, "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mNotificationTag:Ljava/lang/String;

    .line 11
    const-string v2, "SemBiometricNotification"

    .line 13
    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 18
    iget p0, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mAuthenticatorType:I

    .line 20
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 22
    invoke-virtual {v0, v1, p0, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 25
    return-void
.end method

.method public final postNotification(Landroid/content/Intent;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "postNotification start, "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mNotificationTag:Ljava/lang/String;

    .line 11
    const-string v2, "SemBiometricNotification"

    .line 13
    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mContext:Landroid/content/Context;

    .line 18
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 21
    move-result-object v0

    .line 22
    iget-object v3, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mPackageName:Ljava/lang/String;

    .line 24
    const/4 v4, 0x0

    .line 25
    const/4 v5, 0x0

    .line 26
    :try_start_0
    invoke-virtual {v0, v3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 29
    move-result-object v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-object v6, v4

    .line 32
    :goto_0
    if-eqz v6, :cond_0

    .line 34
    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 37
    move-result-object v0

    .line 38
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 41
    move-result-object v3

    .line 42
    :cond_0
    const/4 v0, 0x2

    .line 43
    iget v6, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mAuthenticatorType:I

    .line 45
    if-ne v6, v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mContext:Landroid/content/Context;

    .line 49
    const v7, 0x1040e18

    .line 52
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mTitle:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mContext:Landroid/content/Context;

    .line 60
    const v7, 0x1040e17

    .line 63
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v0, v7, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 71
    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mMessage:Ljava/lang/String;

    .line 73
    const v0, 0x1080ac4

    .line 76
    iput v0, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mIcon:I

    .line 78
    goto :goto_1

    .line 79
    :cond_1
    const/16 v0, 0x8

    .line 81
    if-ne v6, v0, :cond_2

    .line 83
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mContext:Landroid/content/Context;

    .line 85
    const v7, 0x1040e14

    .line 88
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 91
    move-result-object v0

    .line 92
    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mTitle:Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mContext:Landroid/content/Context;

    .line 96
    const v7, 0x1040e13

    .line 99
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 102
    move-result-object v3

    .line 103
    invoke-virtual {v0, v7, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 106
    move-result-object v0

    .line 107
    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mMessage:Ljava/lang/String;

    .line 109
    const v0, 0x1080ac3

    .line 112
    iput v0, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mIcon:I

    .line 114
    goto :goto_1

    .line 115
    :cond_2
    const-string v0, "Unknown authenticator type, "

    .line 117
    invoke-static {v6, v0, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 120
    :goto_1
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mTitle:Ljava/lang/String;

    .line 122
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 125
    move-result v0

    .line 126
    if-nez v0, :cond_4

    .line 128
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mMessage:Ljava/lang/String;

    .line 130
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 133
    move-result v0

    .line 134
    if-eqz v0, :cond_3

    .line 136
    goto :goto_3

    .line 137
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mContext:Landroid/content/Context;

    .line 139
    const/high16 v3, 0x44000000    # 512.0f

    .line 141
    invoke-static {v0, v5, p1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 144
    move-result-object p1

    .line 145
    new-instance v0, Landroid/app/Notification$Action$Builder;

    .line 147
    iget-object v3, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mContext:Landroid/content/Context;

    .line 149
    const/high16 v5, 0x1040000

    .line 151
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 154
    move-result-object v3

    .line 155
    invoke-direct {v0, v4, v3, p1}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 158
    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    .line 161
    move-result-object p1

    .line 162
    new-instance v0, Landroid/app/Notification$Builder;

    .line 164
    iget-object v3, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mContext:Landroid/content/Context;

    .line 166
    sget-object v4, Lcom/android/internal/notification/SystemNotificationChannels;->SECURITY:Ljava/lang/String;

    .line 168
    invoke-direct {v0, v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 171
    const/4 v3, 0x1

    .line 172
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 175
    move-result-object v0

    .line 176
    iget-object v3, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mTitle:Ljava/lang/String;

    .line 178
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 181
    move-result-object v0

    .line 182
    iget-object v3, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mMessage:Ljava/lang/String;

    .line 184
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 187
    move-result-object v0

    .line 188
    iget v3, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mIcon:I

    .line 190
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 193
    move-result-object v0

    .line 194
    const-string/jumbo v3, "sys"

    .line 197
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 200
    move-result-object v0

    .line 201
    iget-object v3, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mContext:Landroid/content/Context;

    .line 203
    const v4, 0x106001c

    .line 206
    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    .line 209
    move-result v3

    .line 210
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 213
    move-result-object v0

    .line 214
    new-instance v3, Landroid/app/Notification$BigTextStyle;

    .line 216
    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 219
    iget-object v4, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mMessage:Ljava/lang/String;

    .line 221
    invoke-virtual {v3, v4}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 224
    move-result-object v3

    .line 225
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 228
    move-result-object v0

    .line 229
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 232
    move-result-object p1

    .line 233
    iget-object p0, p0, Lcom/android/server/biometrics/SemBiometricNotification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 235
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 238
    move-result-object p1

    .line 239
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 241
    invoke-virtual {p0, v1, v6, p1, v0}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 244
    goto :goto_2

    .line 245
    :catch_1
    move-exception p0

    .line 246
    new-instance p1, Ljava/lang/StringBuilder;

    .line 248
    const-string/jumbo v0, "postNotification: "

    .line 251
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 254
    invoke-static {p0, p1, v2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 257
    :goto_2
    return-void

    .line 258
    :cond_4
    :goto_3
    const-string/jumbo p0, "postNotification: No content title or message"

    .line 261
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    return-void
.end method
