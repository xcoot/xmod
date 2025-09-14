.class public final Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mOngoing:Z

.field public final mStartTime:J

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/os/PowerManager$WakeLock;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iput-wide v0, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->mStartTime:J

    .line 9
    .line 10
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->mOngoing:Z

    .line 14
    .line 15
    sget-boolean p0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    const-string p0, "NotificationService"

    .line 20
    .line 21
    const-string p1, "PostNotification: Started"

    .line 22
    .line 23
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->isOngoing()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "NotificationService"

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p0, "cancel() called on already-finished tracker"

    .line 10
    .line 11
    invoke-static {v1, p0}, Landroid/util/Log;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->mOngoing:Z

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$13$$ExternalSyntheticLambda3;

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    invoke-direct {v0, v2, p0}, Lcom/android/server/notification/NotificationManagerService$13$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    iget-wide v4, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->mStartTime:J

    .line 40
    .line 41
    sub-long/2addr v2, v4

    .line 42
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    const-string v0, "PostNotification: Abandoned after %d ms"

    .line 51
    .line 52
    invoke-static {v0, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    :cond_2
    return-void
.end method

.method public isOngoing()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->mOngoing:Z

    .line 2
    .line 3
    return p0
.end method
