.class public final Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementDeliverEvent;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mIdentity:Landroid/location/util/identity/CallerIdentity;

.field public final mNumGnssMeasurements:I


# direct methods
.method public constructor <init>(ILandroid/location/util/identity/CallerIdentity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementDeliverEvent;->mNumGnssMeasurements:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementDeliverEvent;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "gnss measurements delivered GnssMeasurements["

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementDeliverEvent;->mNumGnssMeasurements:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, "] to "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementDeliverEvent;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method
