.class public final Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final course:F

.field public final latitude:D

.field public final longitude:D

.field public final provider:Ljava/lang/String;

.field public final satelliteState:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

.field public final speed:F

.field public final time:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;DDFFLjava/lang/String;Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;->provider:Ljava/lang/String;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;->latitude:D

    .line 7
    .line 8
    iput-wide p4, p0, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;->longitude:D

    .line 9
    .line 10
    iput p6, p0, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;->speed:F

    .line 11
    .line 12
    iput p7, p0, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;->course:F

    .line 13
    .line 14
    iput-object p8, p0, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;->time:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p9, p0, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;->satelliteState:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    .line 17
    .line 18
    return-void
.end method
