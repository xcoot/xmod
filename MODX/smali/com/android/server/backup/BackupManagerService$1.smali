.class public final Lcom/android/server/backup/BackupManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/BackupManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$1;->this$0:Lcom/android/server/backup/BackupManagerService;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    const-string v0, "android.intent.action.USER_REMOVED"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 13
    const-string p1, "android.intent.extra.user_handle"

    .line 15
    const/16 v0, -0x2710

    .line 17
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 20
    move-result p1

    .line 21
    if-lez p1, :cond_0

    .line 23
    iget-object p2, p0, Lcom/android/server/backup/BackupManagerService$1;->this$0:Lcom/android/server/backup/BackupManagerService;

    .line 25
    iget-object p2, p2, Lcom/android/server/backup/BackupManagerService;->mHandler:Landroid/os/Handler;

    .line 27
    new-instance v0, Lcom/android/server/backup/BackupManagerService$$ExternalSyntheticLambda0;

    .line 29
    const/4 v1, 0x1

    .line 30
    invoke-direct {v0, p1, v1, p0}, Lcom/android/server/backup/BackupManagerService$$ExternalSyntheticLambda0;-><init>(IILjava/lang/Object;)V

    .line 33
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 36
    :cond_0
    return-void
.end method
