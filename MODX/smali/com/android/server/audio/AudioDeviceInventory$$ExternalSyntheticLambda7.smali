.class public final synthetic Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiFunction;


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/server/audio/AdiDeviceState;

    .line 3
    check-cast p2, Lcom/android/server/audio/AdiDeviceState;

    .line 5
    invoke-virtual {p2}, Lcom/android/server/audio/AdiDeviceState;->hasHeadTracker()Z

    .line 8
    move-result p0

    .line 9
    invoke-virtual {p1, p0}, Lcom/android/server/audio/AdiDeviceState;->setHasHeadTracker(Z)V

    .line 12
    invoke-virtual {p2}, Lcom/android/server/audio/AdiDeviceState;->isHeadTrackerEnabled()Z

    .line 15
    move-result p0

    .line 16
    invoke-virtual {p1, p0}, Lcom/android/server/audio/AdiDeviceState;->setHeadTrackerEnabled(Z)V

    .line 19
    invoke-virtual {p2}, Lcom/android/server/audio/AdiDeviceState;->isSAEnabled()Z

    .line 22
    move-result p0

    .line 23
    invoke-virtual {p1, p0}, Lcom/android/server/audio/AdiDeviceState;->setSAEnabled(Z)V

    .line 26
    return-object p1
.end method
