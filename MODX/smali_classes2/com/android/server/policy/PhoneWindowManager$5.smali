.class public final Lcom/android/server/policy/PhoneWindowManager$5;
.super Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$5;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAppTransitionCancelledLocked(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$5;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->applyKeyguardOcclusionChange()I

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    sget-boolean p1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    .line 9
    .line 10
    const-string v1, "WindowManager"

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const-string v2, "Starting keyguard exit animation"

    .line 15
    .line 16
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 24
    .line 25
    if-eqz v4, :cond_2

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    const-string p1, "PWM.startKeyguardExitAnimation"

    .line 30
    .line 31
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 35
    .line 36
    iget-object p1, p1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    const-wide/16 v0, 0x0

    .line 41
    .line 42
    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->startKeyguardExitAnimation(JJ)V

    .line 43
    .line 44
    .line 45
    :cond_2
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$5;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 46
    .line 47
    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 48
    .line 49
    monitor-enter p1

    .line 50
    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$5;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 51
    .line 52
    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockAfterDreamingTransitionFinished:Z

    .line 54
    .line 55
    monitor-exit p1

    .line 56
    return-void

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    throw p0
.end method

.method public final onAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$5;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$5;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 7
    .line 8
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const-class v1, Landroid/service/dreams/DreamManagerInternal;

    .line 13
    .line 14
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Landroid/service/dreams/DreamManagerInternal;

    .line 19
    .line 20
    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    .line 21
    .line 22
    :cond_0
    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/service/dreams/DreamManagerInternal;->isDreaming()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$5;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 33
    .line 34
    iget-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mLockAfterDreamingTransitionFinished:Z

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->lockNow(Landroid/os/Bundle;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$5;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockAfterDreamingTransitionFinished:Z

    .line 49
    .line 50
    monitor-exit p1

    .line 51
    return-void

    .line 52
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw p0
.end method

.method public final onAppTransitionStartingLocked(J)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$5;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return p0
.end method
