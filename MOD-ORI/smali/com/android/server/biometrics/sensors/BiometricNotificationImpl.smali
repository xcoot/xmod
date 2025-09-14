.class public final Lcom/android/server/biometrics/sensors/BiometricNotificationImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static sendFaceEnrollNotification(Landroid/content/Context;)V
    .locals 14

    .line 1
    sget-object v0, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->DISMISS_FRR_INTENT:Landroid/content/Intent;

    .line 2
    .line 3
    const-string v0, "BiometricNotificationUtils"

    .line 4
    .line 5
    const-string v1, "Showing Face Enroll Notification"

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    const v0, 0x104045f

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const v0, 0x10401b9

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const v0, 0x10401b7

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    new-instance v7, Landroid/content/Intent;

    .line 32
    .line 33
    const-string v0, "android.settings.FACE_ENROLL"

    .line 34
    .line 35
    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string/jumbo v0, "com.android.settings"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v7, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    const-string/jumbo v0, "enroll_reason"

    .line 45
    .line 46
    .line 47
    const/4 v1, 0x1

    .line 48
    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    sget-object v10, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 52
    .line 53
    const/high16 v8, 0x4000000

    .line 54
    .line 55
    const/4 v9, 0x0

    .line 56
    const/4 v6, 0x0

    .line 57
    move-object v5, p0

    .line 58
    invoke-static/range {v5 .. v10}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    const/4 v6, 0x0

    .line 63
    const/4 v7, 0x0

    .line 64
    const-string v8, "FaceEnrollNotificationChannel"

    .line 65
    .line 66
    const-string/jumbo v9, "recommendation"

    .line 67
    .line 68
    .line 69
    const-string v10, "FaceEnroll"

    .line 70
    .line 71
    const/4 v11, 0x1

    .line 72
    const/4 v12, 0x1

    .line 73
    const/4 v13, 0x0

    .line 74
    move-object v1, p0

    .line 75
    invoke-static/range {v1 .. v13}, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->showNotificationHelper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/Notification$Action;Landroid/app/Notification$Action;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public static sendFpEnrollNotification(Landroid/content/Context;)V
    .locals 14

    .line 1
    sget-object v0, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->DISMISS_FRR_INTENT:Landroid/content/Intent;

    .line 2
    .line 3
    const-string v0, "BiometricNotificationUtils"

    .line 4
    .line 5
    const-string v1, "Showing Fingerprint Enroll Notification"

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    const v0, 0x104045f

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const v0, 0x10401b9

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const v0, 0x10401b8

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    new-instance v7, Landroid/content/Intent;

    .line 32
    .line 33
    const-string v0, "android.settings.FINGERPRINT_ENROLL"

    .line 34
    .line 35
    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string/jumbo v0, "com.android.settings"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v7, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    const-string/jumbo v0, "enroll_reason"

    .line 45
    .line 46
    .line 47
    const/4 v1, 0x1

    .line 48
    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    sget-object v10, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 52
    .line 53
    const/high16 v8, 0x4000000

    .line 54
    .line 55
    const/4 v9, 0x0

    .line 56
    const/4 v6, 0x0

    .line 57
    move-object v5, p0

    .line 58
    invoke-static/range {v5 .. v10}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    const/4 v6, 0x0

    .line 63
    const/4 v7, 0x0

    .line 64
    const-string/jumbo v8, "recommendation"

    .line 65
    .line 66
    .line 67
    const-string v9, "FingerprintEnrollNotificationChannel"

    .line 68
    .line 69
    const-string v10, "FingerprintEnroll"

    .line 70
    .line 71
    const/4 v11, 0x1

    .line 72
    const/4 v12, 0x1

    .line 73
    const/4 v13, 0x0

    .line 74
    move-object v1, p0

    .line 75
    invoke-static/range {v1 .. v13}, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->showNotificationHelper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/Notification$Action;Landroid/app/Notification$Action;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)V

    .line 76
    .line 77
    .line 78
    return-void
.end method
