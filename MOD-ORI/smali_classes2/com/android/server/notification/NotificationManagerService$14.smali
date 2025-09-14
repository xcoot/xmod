.class public final Lcom/android/server/notification/NotificationManagerService$14;
.super Landroid/app/AppOpsManager$OnOpChangedInternalListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$14;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/AppOpsManager$OnOpChangedInternalListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onOpChanged(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$14;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    .line 4
    .line 5
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda16;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, p3, v1, p0, p2}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda16;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method
