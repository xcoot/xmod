.class public final synthetic Lcom/android/server/location/nsflp/NSLocationMonitor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/location/injector/LocationPowerSaveModeHelper$LocationPowerSaveModeChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/nsflp/NSLocationMonitor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/nsflp/NSLocationMonitor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 6
    return-void
.end method


# virtual methods
.method public final onLocationPowerSaveModeChanged(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const/4 v0, 0x1

    .line 7
    if-eq p1, v0, :cond_0

    .line 9
    const/4 v1, 0x2

    .line 10
    if-eq p1, v1, :cond_0

    .line 12
    const/4 v1, 0x4

    .line 13
    if-eq p1, v1, :cond_0

    .line 15
    const/4 v0, 0x0

    .line 16
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    .line 18
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 21
    const-string/jumbo v1, "powerSaveMode"

    .line 24
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 27
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    .line 29
    sget-object v0, Landroid/location/LocationConstants$STATE_TYPE;->LOCATION_POWER_SAVE_CHANGED:Landroid/location/LocationConstants$STATE_TYPE;

    .line 31
    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    .line 34
    return-void
.end method
