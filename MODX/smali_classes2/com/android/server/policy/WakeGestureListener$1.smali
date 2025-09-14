.class public final Lcom/android/server/policy/WakeGestureListener$1;
.super Landroid/hardware/TriggerEventListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/policy/WakeGestureListener$1;->this$0:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/hardware/TriggerEventListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onTrigger(Landroid/hardware/TriggerEvent;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/server/policy/WakeGestureListener$1;->this$0:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/WakeGestureListener$1;->this$0:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mTriggerRequested:Z

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mHandler:Landroid/os/Handler;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mWakeUpRunnable:Lcom/android/server/policy/WakeGestureListener$2;

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    monitor-exit p1

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method
