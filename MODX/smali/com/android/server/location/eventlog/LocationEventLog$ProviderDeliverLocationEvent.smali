.class public final Lcom/android/server/location/eventlog/LocationEventLog$ProviderDeliverLocationEvent;
.super Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mIdentity:Landroid/location/util/identity/CallerIdentity;

.field public final mNumLocations:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/location/util/identity/CallerIdentity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;-><init>(Ljava/lang/String;)V

    .line 4
    iput p2, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderDeliverLocationEvent;->mNumLocations:I

    .line 6
    iput-object p3, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderDeliverLocationEvent;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 8
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;->mProvider:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, " provider delivered location["

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderDeliverLocationEvent;->mNumLocations:I

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, "] to "

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object p0, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderDeliverLocationEvent;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method
