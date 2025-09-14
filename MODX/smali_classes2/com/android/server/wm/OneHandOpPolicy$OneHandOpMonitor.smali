.class public final Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mWatcher:Lcom/samsung/android/onehandop/IOneHandOpWatcher;

.field public final synthetic this$0:Lcom/android/server/wm/OneHandOpPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/OneHandOpPolicy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;->this$0:Lcom/android/server/wm/OneHandOpPolicy;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;->this$0:Lcom/android/server/wm/OneHandOpPolicy;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/OneHandOpPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8
    .line 9
    .line 10
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;->mWatcher:Lcom/samsung/android/onehandop/IOneHandOpWatcher;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-interface {v1}, Lcom/samsung/android/onehandop/IOneHandOpWatcher;->asBinder()Landroid/os/IBinder;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    iput-object v1, p0, Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;->mWatcher:Lcom/samsung/android/onehandop/IOneHandOpWatcher;

    .line 25
    .line 26
    const-string v3, "OneHandOpPolicy"

    .line 27
    .line 28
    const-string v4, "OneHandOp service has died unexpectedly"

    .line 29
    .line 30
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    new-instance v3, Landroid/view/MagnificationSpec;

    .line 34
    .line 35
    invoke-direct {v3}, Landroid/view/MagnificationSpec;-><init>()V

    .line 36
    .line 37
    .line 38
    const/high16 v4, 0x3f800000    # 1.0f

    .line 39
    .line 40
    const/4 v5, 0x0

    .line 41
    invoke-virtual {v3, v4, v5, v5}, Landroid/view/MagnificationSpec;->initialize(FFF)V

    .line 42
    .line 43
    .line 44
    iget-object v4, p0, Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;->this$0:Lcom/android/server/wm/OneHandOpPolicy;

    .line 45
    .line 46
    const/4 v5, 0x1

    .line 47
    invoke-virtual {v4, v3, v5, v1}, Lcom/android/server/wm/OneHandOpPolicy;->changeDisplayScaleLocked(Landroid/view/MagnificationSpec;ZLandroid/view/IInputFilter;)V

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
    :cond_0
    move v5, v2

    .line 54
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 56
    .line 57
    .line 58
    if-eqz v5, :cond_1

    .line 59
    .line 60
    iget-object v0, p0, Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;->this$0:Lcom/android/server/wm/OneHandOpPolicy;

    .line 61
    .line 62
    iget-object v0, v0, Lcom/android/server/wm/OneHandOpPolicy;->mContext:Landroid/content/Context;

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const-string v1, "any_screen_running"

    .line 69
    .line 70
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;->this$0:Lcom/android/server/wm/OneHandOpPolicy;

    .line 74
    .line 75
    iget-boolean v1, v0, Lcom/android/server/wm/OneHandOpPolicy;->mIsOneHandOpEnabled:Z

    .line 76
    .line 77
    if-eqz v1, :cond_1

    .line 78
    .line 79
    const/4 v1, 0x3

    .line 80
    invoke-virtual {v0, v1}, Lcom/android/server/wm/OneHandOpPolicy;->startService(I)V

    .line 81
    .line 82
    .line 83
    iget-object p0, p0, Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;->this$0:Lcom/android/server/wm/OneHandOpPolicy;

    .line 84
    .line 85
    iget-object v0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mHandler:Landroid/os/Handler;

    .line 86
    .line 87
    iget-object p0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mRestartRunnable:Lcom/android/server/wm/OneHandOpPolicy$$ExternalSyntheticLambda0;

    .line 88
    .line 89
    const-wide/32 v1, 0xea60

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 97
    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 98
    .line 99
    .line 100
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 101
    :catch_0
    :cond_1
    :goto_2
    return-void
.end method
