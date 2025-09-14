.class public final synthetic Lcom/android/server/notification/NotificationManagerService$17$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/NotificationManagerService$17;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService$17;ILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$17$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/notification/NotificationManagerService$17;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/notification/NotificationManagerService$17$$ExternalSyntheticLambda3;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$17$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/notification/NotificationManagerService$17$$ExternalSyntheticLambda3;->f$3:I

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/notification/NotificationManagerService$17$$ExternalSyntheticLambda3;->f$4:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$17$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/notification/NotificationManagerService$17;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/notification/NotificationManagerService$17$$ExternalSyntheticLambda3;->f$1:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$17$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    .line 6
    .line 7
    iget v3, p0, Lcom/android/server/notification/NotificationManagerService$17$$ExternalSyntheticLambda3;->f$3:I

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$17$$ExternalSyntheticLambda3;->f$4:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const-string v4, "EDGELIGHTING:"

    .line 15
    .line 16
    :try_start_0
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$17;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-class v5, Landroid/os/PowerManager;

    .line 23
    .line 24
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroid/os/PowerManager;

    .line 29
    .line 30
    new-instance v5, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    new-instance v2, Landroid/os/WorkSource;

    .line 47
    .line 48
    invoke-direct {v2, v3, p0}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catch_0
    const-string p0, " invalid wakelock flag : "

    .line 62
    .line 63
    const-string v0, "NotificationService"

    .line 64
    .line 65
    invoke-static {v1, p0, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :goto_0
    return-void
.end method
