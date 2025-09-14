.class public final Lcom/android/server/vr/VrManagerService$5;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/vr/VrManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/vr/VrManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/vr/VrManagerService$5;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    const-string p1, "android.intent.action.USER_UNLOCKED"

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService$5;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 14
    .line 15
    iget-object p1, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter p1

    .line 18
    const/4 p2, 0x1

    .line 19
    :try_start_0
    iput-boolean p2, p0, Lcom/android/server/vr/VrManagerService;->mUserUnlocked:Z

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/server/vr/VrManagerService;->updateVrModeAllowedLocked()V

    .line 22
    .line 23
    .line 24
    monitor-exit p1

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0

    .line 29
    :cond_0
    :goto_0
    return-void
.end method
