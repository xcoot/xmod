.class public final synthetic Lcom/android/server/media/MediaSessionDeviceConfig$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    new-instance v0, Lcom/android/server/media/MediaSessionDeviceConfig$$ExternalSyntheticLambda1;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Lcom/android/server/media/MediaSessionDeviceConfig$$ExternalSyntheticLambda1;-><init>(Landroid/provider/DeviceConfig$Properties;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p0, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
