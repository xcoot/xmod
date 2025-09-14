.class public final Lcom/android/server/power/batterysaver/BatterySaverStateMachine$1;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;


# direct methods
.method public constructor <init>(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->refreshSettingsLocked()V

    .line 9
    .line 10
    .line 11
    monitor-exit p1

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method
