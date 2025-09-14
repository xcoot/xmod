.class public final Lcom/android/server/policy/WakeGestureListener$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/policy/WakeGestureListener$2;->this$0:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/WakeGestureListener$2;->this$0:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->shouldEnableWakeGestureLp()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 17
    .line 18
    const-string v2, "Wake Up"

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    const/4 v4, 0x0

    .line 22
    invoke-virtual {v1, v3, v2, v4}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(ILjava/lang/String;Z)Z

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowWakeUpPolicy:Lcom/android/server/policy/WindowWakeUpPolicy;

    .line 28
    .line 29
    iget-boolean v1, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mAllowTheaterModeWakeFromWakeGesture:Z

    .line 30
    .line 31
    invoke-virtual {p0, v1}, Lcom/android/server/policy/WindowWakeUpPolicy;->canWakeUp(Z)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mClock:Lcom/android/internal/os/Clock;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    .line 41
    .line 42
    .line 43
    move-result-wide v1

    .line 44
    const-string v3, "GESTURE"

    .line 45
    .line 46
    const/4 v4, 0x4

    .line 47
    invoke-virtual {p0, v1, v2, v4, v3}, Lcom/android/server/policy/WindowWakeUpPolicy;->wakeUp(JILjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    :goto_0
    monitor-exit v0

    .line 54
    return-void

    .line 55
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    throw p0
.end method
