.class public final synthetic Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/RootWindowContainer;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/RootWindowContainer;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda25;->f$0:Lcom/android/server/wm/RootWindowContainer;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda25;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda25;->f$0:Lcom/android/server/wm/RootWindowContainer;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda25;->f$1:I

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/wm/Task;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p1, v1}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 18
    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 22
    .line 23
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const-string v4, "android.app.action.CONFIRM_DEVICE_CREDENTIAL_WITH_USER"

    .line 28
    .line 29
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v3, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 38
    .line 39
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getSysUiServiceComponentLocked()Landroid/content/ComponentName;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    new-instance v2, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda13;

    .line 55
    .line 56
    const/4 v3, 0x1

    .line 57
    invoke-direct {v2, p0, v3}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda13;-><init>(II)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v2}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    if-eqz v2, :cond_1

    .line 65
    .line 66
    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 67
    .line 68
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iget-object v2, v0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;

    .line 75
    .line 76
    const/16 v3, 0xe

    .line 77
    .line 78
    invoke-virtual {v2, v3, p0, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    iget-object p1, v0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskProfileLocked:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 83
    .line 84
    invoke-virtual {v0, p1, p0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 88
    .line 89
    .line 90
    :cond_1
    :goto_0
    return-void
.end method
