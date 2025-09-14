.class public final synthetic Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssVisibilityControl;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssVisibilityControl;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/gnss/GnssVisibilityControl;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda0;->f$1:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/gnss/GnssVisibilityControl;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda0;->f$1:Z

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v2, "handleGpsEnabledChanged, mIsGpsEnabled: "

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-boolean v2, v0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mIsGpsEnabled:Z

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, ", isGpsEnabled: "

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "GnssVisibilityControl"

    .line 31
    .line 32
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    iput-boolean p0, v0, Lcom/android/server/location/gnss/GnssVisibilityControl;->mIsGpsEnabled:Z

    .line 36
    .line 37
    if-nez p0, :cond_0

    .line 38
    .line 39
    sget-object p0, Lcom/android/server/location/gnss/GnssVisibilityControl;->NO_LOCATION_ENABLED_PROXY_APPS:[Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v0, p0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->setNfwLocationAccessProxyAppsInGnssHal([Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->getLocationPermissionEnabledProxyApps()[Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {v0, p0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->setNfwLocationAccessProxyAppsInGnssHal([Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void
.end method
