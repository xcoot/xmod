.class public final synthetic Lcom/android/server/location/nsflp/NSLocationMonitor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/DeviceIdleInternal$StationaryListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/nsflp/NSLocationMonitor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/nsflp/NSLocationMonitor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDeviceStationaryChanged(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string/jumbo v1, "stationary"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    .line 18
    .line 19
    sget-object p1, Landroid/location/LocationConstants$STATE_TYPE;->DEVICE_STATIONARY_CHANGED:Landroid/location/LocationConstants$STATE_TYPE;

    .line 20
    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
