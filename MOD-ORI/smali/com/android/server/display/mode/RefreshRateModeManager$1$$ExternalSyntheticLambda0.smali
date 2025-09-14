.class public final synthetic Lcom/android/server/display/mode/RefreshRateModeManager$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/mode/RefreshRateModeManager$1;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/mode/RefreshRateModeManager$1;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/mode/RefreshRateModeManager$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/mode/RefreshRateModeManager$1;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/display/mode/RefreshRateModeManager$1$$ExternalSyntheticLambda0;->f$1:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/mode/RefreshRateModeManager$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/mode/RefreshRateModeManager$1;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/server/display/mode/RefreshRateModeManager$1$$ExternalSyntheticLambda0;->f$1:Z

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/display/mode/RefreshRateModeManager$1;->this$0:Lcom/android/server/display/mode/RefreshRateModeManager;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/display/mode/RefreshRateModeManager;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    iget-object v0, v0, Lcom/android/server/display/mode/RefreshRateModeManager$1;->this$0:Lcom/android/server/display/mode/RefreshRateModeManager;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/android/server/display/mode/RefreshRateModeManager;->getController()Lcom/android/server/display/mode/RefreshRateController;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/android/server/display/mode/RefreshRateController;->onBrightnessChangedLocked()V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/display/mode/RefreshRateController;->onDisplayStateOffLocked()V

    .line 23
    .line 24
    .line 25
    :goto_0
    monitor-exit v1

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0
.end method
