.class public final synthetic Lcom/android/server/location/injector/SystemAppOpsHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/injector/SystemAppOpsHelper;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/injector/SystemAppOpsHelper;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/location/injector/SystemAppOpsHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/injector/SystemAppOpsHelper;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/location/injector/SystemAppOpsHelper$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/location/injector/SystemAppOpsHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/injector/SystemAppOpsHelper;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/location/injector/SystemAppOpsHelper$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/location/injector/SystemAppOpsHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/android/server/location/injector/LocationPermissionsHelper$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    iget-object v1, v1, Lcom/android/server/location/injector/LocationPermissionsHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/injector/SystemLocationPermissionsHelper;

    .line 24
    .line 25
    iget-object v2, v1, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;->mNSPermissionHelper:Lcom/android/server/location/nsflp/NSPermissionHelper;

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    const-string/jumbo v3, "packageName"

    .line 30
    .line 31
    .line 32
    invoke-static {v3, p0}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    iget-object v2, v2, Lcom/android/server/location/nsflp/NSPermissionHelper;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    .line 37
    .line 38
    sget-object v4, Landroid/location/LocationConstants$STATE_TYPE;->OP_CHANGED:Landroid/location/LocationConstants$STATE_TYPE;

    .line 39
    .line 40
    invoke-virtual {v2, v4, v3}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-object v1, v1, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_0

    .line 54
    .line 55
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;

    .line 60
    .line 61
    invoke-interface {v2, p0}, Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;->onLocationPermissionsChanged(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    return-void
.end method
