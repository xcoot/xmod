.class public final synthetic Lcom/android/server/deviceidle/BluetoothConstraint$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/deviceidle/BluetoothConstraint;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/deviceidle/BluetoothConstraint;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/deviceidle/BluetoothConstraint$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/deviceidle/BluetoothConstraint;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/deviceidle/BluetoothConstraint$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/deviceidle/BluetoothConstraint;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mMonitoring:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mMonitoring:Z

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/deviceidle/BluetoothConstraint;->mLocalService:Lcom/android/server/DeviceIdleInternal;

    .line 12
    .line 13
    invoke-interface {v1, p0, v0}, Lcom/android/server/DeviceIdleInternal;->onConstraintStateChanged(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    :goto_0
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :goto_1
    monitor-exit p0

    .line 22
    throw v0
.end method
