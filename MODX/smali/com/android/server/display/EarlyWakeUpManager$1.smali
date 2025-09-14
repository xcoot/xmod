.class public final Lcom/android/server/display/EarlyWakeUpManager$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/EarlyWakeUpManager;


# direct methods
.method public constructor <init>(Lcom/android/server/display/EarlyWakeUpManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/display/EarlyWakeUpManager$1;->this$0:Lcom/android/server/display/EarlyWakeUpManager;

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/EarlyWakeUpManager$1;->this$0:Lcom/android/server/display/EarlyWakeUpManager;

    .line 3
    iget-object v0, v0, Lcom/android/server/display/EarlyWakeUpManager;->mEarlyWakeUpLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/EarlyWakeUpManager$1;->this$0:Lcom/android/server/display/EarlyWakeUpManager;

    .line 8
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lcom/android/server/display/EarlyWakeUpManager;->mEarlyLightSensorReadyLocked:Z

    .line 11
    invoke-virtual {p0}, Lcom/android/server/display/EarlyWakeUpManager;->updateSuspendBlockerLocked()V

    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p0
.end method
