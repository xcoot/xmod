.class Lcom/android/server/DeviceIdleController$ModeManagerQuickDozeRequestConsumer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method public static -$$Nest$monModeManagerRequestChangedLocked(Lcom/android/server/DeviceIdleController$ModeManagerQuickDozeRequestConsumer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$ModeManagerQuickDozeRequestConsumer;->this$0:Lcom/android/server/DeviceIdleController;

    .line 3
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->-$$Nest$mmaybeBecomeActiveOnModeManagerEventsLocked(Lcom/android/server/DeviceIdleController;)V

    .line 6
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$ModeManagerQuickDozeRequestConsumer;->this$0:Lcom/android/server/DeviceIdleController;

    .line 8
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->updateQuickDozeFlagLocked()V

    .line 11
    return-void
.end method

.method public constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$ModeManagerQuickDozeRequestConsumer;->this$0:Lcom/android/server/DeviceIdleController;

    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 3
    const-string v0, "DeviceIdleController"

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    const-string v2, "Mode manager quick doze request: "

    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$ModeManagerQuickDozeRequestConsumer;->this$0:Lcom/android/server/DeviceIdleController;

    .line 24
    monitor-enter v0

    .line 25
    :try_start_0
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$ModeManagerQuickDozeRequestConsumer;->this$0:Lcom/android/server/DeviceIdleController;

    .line 27
    iget-boolean v2, v1, Lcom/android/server/DeviceIdleController;->mForceModeManagerQuickDozeRequest:Z

    .line 29
    if-nez v2, :cond_0

    .line 31
    iget-boolean v1, v1, Lcom/android/server/DeviceIdleController;->mModeManagerRequestedQuickDoze:Z

    .line 33
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 36
    move-result v2

    .line 37
    if-eq v1, v2, :cond_0

    .line 39
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$ModeManagerQuickDozeRequestConsumer;->this$0:Lcom/android/server/DeviceIdleController;

    .line 41
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 44
    move-result p1

    .line 45
    iput-boolean p1, v1, Lcom/android/server/DeviceIdleController;->mModeManagerRequestedQuickDoze:Z

    .line 47
    iget-object p1, p0, Lcom/android/server/DeviceIdleController$ModeManagerQuickDozeRequestConsumer;->this$0:Lcom/android/server/DeviceIdleController;

    .line 49
    invoke-static {p1}, Lcom/android/server/DeviceIdleController;->-$$Nest$mmaybeBecomeActiveOnModeManagerEventsLocked(Lcom/android/server/DeviceIdleController;)V

    .line 52
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$ModeManagerQuickDozeRequestConsumer;->this$0:Lcom/android/server/DeviceIdleController;

    .line 54
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->updateQuickDozeFlagLocked()V

    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_1

    .line 60
    :cond_0
    :goto_0
    monitor-exit v0

    .line 61
    return-void

    .line 62
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    throw p0
.end method
