.class public final synthetic Lcom/android/server/notification/NotificationManagerService$13$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/notification/NotificationManagerService$13;

.field public final synthetic f$1:Landroid/app/NotificationManager$Policy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService$13;Landroid/app/NotificationManager$Policy;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/notification/NotificationManagerService$13$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$13$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/NotificationManagerService$13;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$13$$ExternalSyntheticLambda0;->f$1:Landroid/app/NotificationManager$Policy;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$13$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$13$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/NotificationManagerService$13;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$13$$ExternalSyntheticLambda0;->f$1:Landroid/app/NotificationManager$Policy;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    new-instance v1, Landroid/content/Intent;

    .line 22
    .line 23
    const-string v2, "android.app.action.CONSOLIDATED_NOTIFICATION_POLICY_CHANGED"

    .line 24
    .line 25
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v2, "android.app.extra.NOTIFICATION_POLICY"

    .line 29
    .line 30
    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->sendRegisteredOnlyBroadcast(Landroid/content/Intent;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object p0, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    .line 37
    .line 38
    check-cast p0, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;->requestSort()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$13$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/NotificationManagerService$13;

    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$13$$ExternalSyntheticLambda0;->f$1:Landroid/app/NotificationManager$Policy;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    new-instance v1, Landroid/content/Intent;

    .line 52
    .line 53
    const-string v2, "android.app.action.NOTIFICATION_POLICY_CHANGED"

    .line 54
    .line 55
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_1

    .line 63
    .line 64
    const-string v2, "android.app.extra.NOTIFICATION_POLICY"

    .line 65
    .line 66
    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 67
    .line 68
    .line 69
    :cond_1
    iget-object p0, v0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 70
    .line 71
    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService;->sendRegisteredOnlyBroadcast(Landroid/content/Intent;)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    .line 75
    .line 76
    check-cast v0, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;->requestSort()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->notifyZenPolicy()V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
