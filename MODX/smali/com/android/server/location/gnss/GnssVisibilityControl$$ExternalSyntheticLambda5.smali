.class public final synthetic Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssVisibilityControl;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssVisibilityControl;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/location/gnss/GnssVisibilityControl;

    .line 6
    iput p2, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda5;->f$1:I

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/location/gnss/GnssVisibilityControl;

    .line 3
    iget p0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda5;->f$1:I

    .line 5
    iget-object v1, v0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    .line 7
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-object v1, v0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    .line 16
    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 19
    move-result-object v1

    .line 20
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object v1

    .line 24
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_3

    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Ljava/util/Map$Entry;

    .line 36
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Ljava/lang/String;

    .line 42
    invoke-virtual {v0, v3}, Lcom/android/server/location/gnss/GnssVisibilityControl;->getProxyAppInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    .line 45
    move-result-object v4

    .line 46
    if-eqz v4, :cond_1

    .line 48
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 50
    if-eq v4, p0, :cond_2

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {v0, v3}, Lcom/android/server/location/gnss/GnssVisibilityControl;->shouldEnableLocationPermissionInGnssHal(Ljava/lang/String;)Z

    .line 56
    move-result p0

    .line 57
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;

    .line 63
    iget-boolean v2, v1, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;->mHasLocationPermission:Z

    .line 65
    if-eq p0, v2, :cond_3

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    .line 69
    const-string v4, "Proxy app "

    .line 71
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string v3, " location permission changed. IsLocationPermissionEnabled: "

    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object v2

    .line 89
    const-string v3, "GnssVisibilityControl"

    .line 91
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iput-boolean p0, v1, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;->mHasLocationPermission:Z

    .line 96
    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->updateNfwLocationAccessProxyAppsInGnssHal()V

    .line 99
    :cond_3
    :goto_1
    return-void
.end method
