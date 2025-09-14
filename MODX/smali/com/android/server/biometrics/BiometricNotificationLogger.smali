.class public final Lcom/android/server/biometrics/BiometricNotificationLogger;
.super Landroid/service/notification/NotificationListenerService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mLogger:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricNotificationLogger;->mLogger:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    .line 6
    return-void
.end method


# virtual methods
.method public final onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 3

    .line 1
    const-string p2, "FaceEnroll"

    .line 3
    if-eqz p1, :cond_3

    .line 5
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_1

    .line 25
    const-string v1, "FingerprintEnroll"

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    const/4 v1, 0x1

    .line 39
    if-ne v0, p2, :cond_2

    .line 41
    const/4 p2, 0x4

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    move p2, v1

    .line 44
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    const-string/jumbo v2, "onNotificationPosted, tag=("

    .line 49
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const-string p1, ")"

    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    const-string v0, "FRRNotificationListener"

    .line 70
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricNotificationLogger;->mLogger:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    const/16 p0, 0x331

    .line 80
    invoke-static {p0, v1, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 83
    :cond_3
    :goto_1
    return-void
.end method

.method public final onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V
    .locals 3

    .line 1
    const-string p2, "FaceEnroll"

    .line 3
    if-eqz p1, :cond_5

    .line 5
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_1

    .line 25
    const-string v1, "FingerprintEnroll"

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    const-string/jumbo v1, "onNotificationRemoved, tag=("

    .line 39
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    const-string v1, "), reason=("

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    const-string v1, ")"

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v0

    .line 66
    const-string v1, "FRRNotificationListener"

    .line 68
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    .line 74
    move-result-object p1

    .line 75
    const/4 v0, 0x1

    .line 76
    if-ne p1, p2, :cond_2

    .line 78
    const/4 p1, 0x4

    .line 79
    goto :goto_0

    .line 80
    :cond_2
    move p1, v0

    .line 81
    :goto_0
    const/16 p2, 0x331

    .line 83
    const/4 v2, 0x2

    .line 84
    if-eq p3, v0, :cond_4

    .line 86
    if-eq p3, v2, :cond_3

    .line 88
    const-string/jumbo p0, "unhandled reason, ignoring logging"

    .line 91
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    goto :goto_1

    .line 95
    :cond_3
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricNotificationLogger;->mLogger:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    .line 97
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    const/4 p0, 0x3

    .line 101
    invoke-static {p2, p0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 104
    goto :goto_1

    .line 105
    :cond_4
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricNotificationLogger;->mLogger:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    .line 107
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    invoke-static {p2, v2, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 113
    :cond_5
    :goto_1
    return-void
.end method
