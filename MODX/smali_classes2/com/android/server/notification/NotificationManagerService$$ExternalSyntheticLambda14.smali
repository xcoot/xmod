.class public final synthetic Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/NotificationManagerService;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService;ZLjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/notification/NotificationManagerService;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda14;->f$1:Z

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda14;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda14;->f$3:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/notification/NotificationManagerService;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda14;->f$1:Z

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda14;->f$2:Ljava/lang/String;

    .line 6
    .line 7
    iget p0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda14;->f$3:I

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v3, Landroid/content/Intent;

    .line 17
    .line 18
    const-string v4, "android.app.action.APP_BLOCK_STATE_CHANGED"

    .line 19
    .line 20
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v4, "android.app.extra.BLOCKED_STATE"

    .line 24
    .line 25
    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const/high16 v3, 0x10000000

    .line 30
    .line 31
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    const/4 v2, 0x0

    .line 48
    invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception p0

    .line 53
    const-string v0, "NotificationService"

    .line 54
    .line 55
    const-string v1, "Can\'t notify app about app block change"

    .line 56
    .line 57
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    .line 59
    .line 60
    :goto_0
    return-void
.end method
