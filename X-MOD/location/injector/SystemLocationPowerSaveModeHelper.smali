.class public final Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public volatile mLocationPowerSaveMode:I

.field public mReady:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 11
    iput-object p1, p0, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;->mContext:Landroid/content/Context;

    .line 13
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Landroid/os/PowerSaveState;

    .line 3
    iget-boolean v0, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 5
    if-nez v0, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget p1, p1, Landroid/os/PowerSaveState;->locationMode:I

    .line 11
    :goto_0
    iget v0, p0, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;->mLocationPowerSaveMode:I

    .line 13
    if-ne p1, v0, :cond_1

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    iput p1, p0, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;->mLocationPowerSaveMode:I

    .line 18
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper$$ExternalSyntheticLambda0;

    .line 24
    invoke-direct {v1, p0, p1}, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;I)V

    .line 27
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    :goto_1
    return-void
.end method
