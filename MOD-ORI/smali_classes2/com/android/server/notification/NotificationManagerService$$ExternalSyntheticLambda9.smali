.class public final synthetic Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/NotificationManagerService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/notification/NotificationManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda9;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda9;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/notification/NotificationManagerService;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda9;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda9;->f$2:I

    .line 6
    .line 7
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 8
    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v4, "NotificationManagerService:post:"

    .line 12
    .line 13
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const/4 v4, 0x1

    .line 24
    invoke-virtual {v2, v4, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    new-instance v3, Landroid/os/WorkSource;

    .line 29
    .line 30
    invoke-direct {v3, p0, v1}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 34
    .line 35
    .line 36
    sget-object p0, Lcom/android/server/notification/NotificationManagerService;->POST_WAKE_LOCK_TIMEOUT:Ljava/time/Duration;

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/time/Duration;->toMillis()J

    .line 39
    .line 40
    .line 41
    move-result-wide v3

    .line 42
    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 43
    .line 44
    .line 45
    iget-object p0, v0, Lcom/android/server/notification/NotificationManagerService;->mPostNotificationTrackerFactory:Lcom/android/server/notification/NotificationManagerService$PostNotificationTrackerFactory;

    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    new-instance p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;

    .line 51
    .line 52
    invoke-direct {p0, v2}, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;-><init>(Landroid/os/PowerManager$WakeLock;)V

    .line 53
    .line 54
    .line 55
    return-object p0
.end method
