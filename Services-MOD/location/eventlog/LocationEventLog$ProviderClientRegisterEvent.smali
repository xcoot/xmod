.class public final Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientRegisterEvent;
.super Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mIdentity:Landroid/location/util/identity/CallerIdentity;

.field public final mLocationRequest:Landroid/location/LocationRequest;

.field public final mRegistered:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLandroid/location/util/identity/CallerIdentity;Landroid/location/LocationRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;-><init>(Ljava/lang/String;)V

    .line 4
    iput-boolean p2, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientRegisterEvent;->mRegistered:Z

    .line 6
    iput-object p3, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientRegisterEvent;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 8
    iput-object p4, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientRegisterEvent;->mLocationRequest:Landroid/location/LocationRequest;

    .line 10
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientRegisterEvent;->mRegistered:Z

    .line 3
    iget-object v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;->mProvider:Ljava/lang/String;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const-string v0, " provider +registration "

    .line 9
    invoke-static {v1, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientRegisterEvent;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    const-string v1, " -> "

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    iget-object p0, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientRegisterEvent;->mLocationRequest:Landroid/location/LocationRequest;

    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_0
    const-string v0, " provider -registration "

    .line 35
    invoke-static {v1, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    move-result-object v0

    .line 39
    iget-object p0, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientRegisterEvent;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 41
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 48
    return-object p0
.end method
