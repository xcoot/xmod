.class public final Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementClientRegisterEvent;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mGnssMeasurementRequest:Landroid/location/GnssMeasurementRequest;

.field public final mIdentity:Landroid/location/util/identity/CallerIdentity;

.field public final mRegistered:Z


# direct methods
.method public constructor <init>(ZLandroid/location/util/identity/CallerIdentity;Landroid/location/GnssMeasurementRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementClientRegisterEvent;->mRegistered:Z

    .line 6
    iput-object p2, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementClientRegisterEvent;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 8
    iput-object p3, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementClientRegisterEvent;->mGnssMeasurementRequest:Landroid/location/GnssMeasurementRequest;

    .line 10
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementClientRegisterEvent;->mRegistered:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string/jumbo v1, "gnss measurements +registration "

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    iget-object v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementClientRegisterEvent;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    const-string v1, " -> "

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    iget-object p0, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementClientRegisterEvent;->mGnssMeasurementRequest:Landroid/location/GnssMeasurementRequest;

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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    const-string/jumbo v1, "gnss measurements -registration "

    .line 38
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    iget-object p0, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementClientRegisterEvent;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 50
    return-object p0
.end method
