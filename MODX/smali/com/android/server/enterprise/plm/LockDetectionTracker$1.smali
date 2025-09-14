.class public final Lcom/android/server/enterprise/plm/LockDetectionTracker$1;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/plm/LockDetectionTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/plm/LockDetectionTracker;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/enterprise/plm/LockDetectionTracker$1;->this$0:Lcom/android/server/enterprise/plm/LockDetectionTracker;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 6
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 9
    goto :goto_2

    .line 10
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 12
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 14
    iget-object p0, p0, Lcom/android/server/enterprise/plm/LockDetectionTracker$1;->this$0:Lcom/android/server/enterprise/plm/LockDetectionTracker;

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    invoke-static {}, Ljava/time/LocalTime;->now()Ljava/time/LocalTime;

    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Ljava/time/LocalTime;->toString()Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 27
    const-string v3, "LockDetection:"

    .line 29
    if-nez v0, :cond_1

    .line 31
    const-string/jumbo v0, "verify credential success"

    .line 34
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v1, -0x1

    .line 39
    if-ne v0, v1, :cond_2

    .line 41
    const-string/jumbo v0, "verify credential failure"

    .line 44
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const/4 v1, 0x0

    .line 48
    :goto_0
    iget-object p0, p0, Lcom/android/server/enterprise/plm/LockDetectionTracker;->mLockDetectionEventCallbacks:Ljava/util/List;

    .line 50
    check-cast p0, Ljava/util/ArrayList;

    .line 52
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 55
    move-result-object p0

    .line 56
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_2

    .line 62
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Lcom/android/server/enterprise/plm/SystemStateTracker$LockStateListener;

    .line 68
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 71
    move-result-object v3

    .line 72
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    move-result-object v4

    .line 76
    iget-object v0, v0, Lcom/android/server/enterprise/plm/SystemStateTracker$LockStateListener;->this$0:Lcom/android/server/enterprise/plm/SystemStateTracker;

    .line 78
    new-instance v5, Lcom/android/server/enterprise/plm/common/PlmMessage;

    .line 80
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 83
    const-string/jumbo v6, "com.samsung.android.knox.intent.action.LOCK_STATE_CHANGE"

    .line 86
    iput-object v6, v5, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    .line 88
    iput-object v3, v5, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj2:Ljava/lang/Object;

    .line 90
    iput-object v4, v5, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj3:Ljava/lang/Object;

    .line 92
    iput-object v2, v5, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj4:Ljava/lang/Object;

    .line 94
    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    .line 97
    move-result-object v3

    .line 98
    const/4 v4, 0x7

    .line 99
    iput v4, v3, Landroid/os/Message;->what:I

    .line 101
    iput-object v5, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 103
    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 106
    goto :goto_1

    .line 107
    :cond_2
    :goto_2
    return-void
.end method
