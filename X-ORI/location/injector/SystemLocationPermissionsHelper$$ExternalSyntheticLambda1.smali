.class public final synthetic Lcom/android/server/location/injector/SystemLocationPermissionsHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/injector/SystemLocationPermissionsHelper;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/injector/SystemLocationPermissionsHelper;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/location/injector/SystemLocationPermissionsHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/injector/SystemLocationPermissionsHelper;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/location/injector/SystemLocationPermissionsHelper$$ExternalSyntheticLambda1;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/location/injector/SystemLocationPermissionsHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/injector/SystemLocationPermissionsHelper;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/location/injector/SystemLocationPermissionsHelper$$ExternalSyntheticLambda1;->f$1:I

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;->mNSPermissionHelper:Lcom/android/server/location/nsflp/NSPermissionHelper;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string/jumbo v2, "uid"

    .line 10
    .line 11
    .line 12
    invoke-static {p0, v2}, Lcom/android/server/SystemUpdateManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/os/Bundle;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iget-object v1, v1, Lcom/android/server/location/nsflp/NSPermissionHelper;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    .line 17
    .line 18
    sget-object v3, Landroid/location/LocationConstants$STATE_TYPE;->PERMISSIONS_CHANGED:Landroid/location/LocationConstants$STATE_TYPE;

    .line 19
    .line 20
    invoke-virtual {v1, v3, v2}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v1, v0, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;

    .line 40
    .line 41
    invoke-interface {v2, p0}, Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;->onLocationPermissionsChanged(I)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v0, v0, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;->mSLocationConsumer:Ljava/util/function/Consumer;

    .line 46
    .line 47
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method
