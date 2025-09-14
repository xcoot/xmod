.class public abstract Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DISMISS_FRR_INTENT:Landroid/content/Intent;

.field public static sLastAlertTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "action_biometric_frr_dismiss"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    sput-object v0, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->DISMISS_FRR_INTENT:Landroid/content/Intent;

    .line 10
    return-void
.end method

.method public static showNotificationHelper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/Notification$Action;Landroid/app/Notification$Action;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)V
    .locals 15

    .line 1
    move-object v6, p0

    .line 2
    move-object/from16 v7, p1

    .line 4
    move-object/from16 v8, p3

    .line 6
    move-object/from16 v9, p5

    .line 8
    move-object/from16 v10, p6

    .line 10
    move-object/from16 v11, p8

    .line 12
    move/from16 v12, p11

    .line 14
    move/from16 v13, p12

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    const-string v1, " listenToDismissEvent = "

    .line 20
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    const-string v1, "BiometricNotificationUtils"

    .line 32
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    sget-object v2, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->DISMISS_FRR_INTENT:Landroid/content/Intent;

    .line 37
    sget-object v14, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 39
    const/high16 v3, 0x4000000

    .line 41
    const/4 v4, 0x0

    .line 42
    const/4 v1, 0x0

    .line 43
    move-object v0, p0

    .line 44
    move-object v5, v14

    .line 45
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 48
    move-result-object v0

    .line 49
    const-class v1, Landroid/app/NotificationManager;

    .line 51
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Landroid/app/NotificationManager;

    .line 57
    new-instance v2, Landroid/app/NotificationChannel;

    .line 59
    const/4 v3, 0x4

    .line 60
    invoke-direct {v2, v11, v7, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 63
    new-instance v3, Landroid/app/Notification$Builder;

    .line 65
    invoke-direct {v3, p0, v11}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 68
    const v4, 0x1080454

    .line 71
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 74
    move-result-object v3

    .line 75
    move-object/from16 v4, p2

    .line 77
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v3, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 84
    move-result-object v3

    .line 85
    new-instance v4, Landroid/app/Notification$BigTextStyle;

    .line 87
    invoke-direct {v4}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 90
    invoke-virtual {v4, v8}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 93
    move-result-object v4

    .line 94
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 97
    move-result-object v3

    .line 98
    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 101
    move-result-object v3

    .line 102
    const/4 v4, 0x1

    .line 103
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 106
    move-result-object v3

    .line 107
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    .line 110
    move-result-object v3

    .line 111
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 114
    move-result-object v3

    .line 115
    move-object/from16 v5, p7

    .line 117
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 120
    move-result-object v3

    .line 121
    move-object/from16 v5, p4

    .line 123
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 126
    move-result-object v3

    .line 127
    move/from16 v5, p10

    .line 129
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 132
    move-result-object v3

    .line 133
    if-lez v13, :cond_0

    .line 135
    invoke-virtual {v3, v13, v4}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 138
    :cond_0
    if-eqz v9, :cond_1

    .line 140
    invoke-virtual {v3, v9}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 143
    :cond_1
    if-eqz v10, :cond_2

    .line 145
    invoke-virtual {v3, v10}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 148
    :cond_2
    if-eqz v12, :cond_3

    .line 150
    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 153
    :cond_3
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 160
    move-object/from16 v2, p9

    .line 162
    invoke-virtual {v1, v2, v4, v0, v14}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 165
    return-void
.end method
