.class public final synthetic Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/DeviceIdleController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/DeviceIdleController;

    .line 2
    .line 3
    check-cast p1, Landroid/os/PowerSaveState;

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-boolean p1, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 7
    .line 8
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mBatterySaverEnabled:Z

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->updateQuickDozeFlagLocked()V

    .line 11
    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p1
.end method
