.class public final Lcom/android/server/location/eventlog/LocationEventLog$ProviderReceiveLocationEvent;
.super Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mNumLocations:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;-><init>(Ljava/lang/String;)V

    .line 4
    iput p2, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderReceiveLocationEvent;->mNumLocations:I

    .line 6
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
    const-string v1, " provider received location["

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget p0, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderReceiveLocationEvent;->mNumLocations:I

    .line 18
    const-string v1, "]"

    .line 20
    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method
