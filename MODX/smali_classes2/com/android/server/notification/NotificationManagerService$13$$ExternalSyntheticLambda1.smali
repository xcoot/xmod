.class public final synthetic Lcom/android/server/notification/NotificationManagerService$13$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/NotificationManagerService$13;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService$13;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$13$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/notification/NotificationManagerService$13;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$13$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$13$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/notification/NotificationManagerService$13$$ExternalSyntheticLambda1;->f$3:I

    .line 11
    .line 12
    iput p5, p0, Lcom/android/server/notification/NotificationManagerService$13$$ExternalSyntheticLambda1;->f$4:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$13$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/notification/NotificationManagerService$13;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$13$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$13$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    .line 6
    .line 7
    iget v3, p0, Lcom/android/server/notification/NotificationManagerService$13$$ExternalSyntheticLambda1;->f$3:I

    .line 8
    .line 9
    iget p0, p0, Lcom/android/server/notification/NotificationManagerService$13$$ExternalSyntheticLambda1;->f$4:I

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance v4, Landroid/content/Intent;

    .line 15
    .line 16
    const-string v5, "android.app.action.AUTOMATIC_ZEN_RULE_STATUS_CHANGED"

    .line 17
    .line 18
    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    const-string v1, "android.app.extra.AUTOMATIC_ZEN_RULE_ID"

    .line 25
    .line 26
    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    const-string v1, "android.app.extra.AUTOMATIC_ZEN_RULE_STATUS"

    .line 30
    .line 31
    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {v0, v4, p0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method
