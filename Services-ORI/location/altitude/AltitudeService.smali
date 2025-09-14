.class public final Lcom/android/server/location/altitude/AltitudeService;
.super Landroid/frameworks/location/altitude/IAltitudeService$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAltitudeConverter:Landroid/location/altitude/AltitudeConverter;

.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/frameworks/location/altitude/IAltitudeService$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/location/altitude/AltitudeConverter;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/location/altitude/AltitudeConverter;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/location/altitude/AltitudeService;->mAltitudeConverter:Landroid/location/altitude/AltitudeConverter;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/location/altitude/AltitudeService;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final addMslAltitudeToLocation(Landroid/frameworks/location/altitude/AddMslAltitudeToLocationRequest;)Landroid/frameworks/location/altitude/AddMslAltitudeToLocationResponse;
    .locals 3

    .line 1
    new-instance v0, Landroid/location/Location;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p1, Landroid/frameworks/location/altitude/AddMslAltitudeToLocationRequest;->latitudeDegrees:D

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 11
    .line 12
    .line 13
    iget-wide v1, p1, Landroid/frameworks/location/altitude/AddMslAltitudeToLocationRequest;->longitudeDegrees:D

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 16
    .line 17
    .line 18
    iget-wide v1, p1, Landroid/frameworks/location/altitude/AddMslAltitudeToLocationRequest;->altitudeMeters:D

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setAltitude(D)V

    .line 21
    .line 22
    .line 23
    iget p1, p1, Landroid/frameworks/location/altitude/AddMslAltitudeToLocationRequest;->verticalAccuracyMeters:F

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Landroid/location/Location;->setVerticalAccuracyMeters(F)V

    .line 26
    .line 27
    .line 28
    new-instance p1, Landroid/frameworks/location/altitude/AddMslAltitudeToLocationResponse;

    .line 29
    .line 30
    invoke-direct {p1}, Landroid/frameworks/location/altitude/AddMslAltitudeToLocationResponse;-><init>()V

    .line 31
    .line 32
    .line 33
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/altitude/AltitudeService;->mAltitudeConverter:Landroid/location/altitude/AltitudeConverter;

    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/location/altitude/AltitudeService;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    invoke-virtual {v1, p0, v0}, Landroid/location/altitude/AltitudeConverter;->addMslAltitudeToLocation(Landroid/content/Context;Landroid/location/Location;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/location/Location;->getMslAltitudeMeters()D

    .line 41
    .line 42
    .line 43
    move-result-wide v1

    .line 44
    iput-wide v1, p1, Landroid/frameworks/location/altitude/AddMslAltitudeToLocationResponse;->mslAltitudeMeters:D

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/location/Location;->getMslAltitudeAccuracyMeters()F

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    iput p0, p1, Landroid/frameworks/location/altitude/AddMslAltitudeToLocationResponse;->mslAltitudeAccuracyMeters:F

    .line 51
    .line 52
    const/4 p0, 0x1

    .line 53
    iput-boolean p0, p1, Landroid/frameworks/location/altitude/AddMslAltitudeToLocationResponse;->success:Z

    .line 54
    .line 55
    return-object p1

    .line 56
    :catch_0
    const/4 p0, 0x0

    .line 57
    iput-boolean p0, p1, Landroid/frameworks/location/altitude/AddMslAltitudeToLocationResponse;->success:Z

    .line 58
    .line 59
    return-object p1
.end method

.method public final getGeoidHeight(Landroid/frameworks/location/altitude/GetGeoidHeightRequest;)Landroid/frameworks/location/altitude/GetGeoidHeightResponse;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/altitude/AltitudeService;->mAltitudeConverter:Landroid/location/altitude/AltitudeConverter;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/location/altitude/AltitudeService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0, p0, p1}, Landroid/location/altitude/AltitudeConverter;->getGeoidHeight(Landroid/content/Context;Landroid/frameworks/location/altitude/GetGeoidHeightRequest;)Landroid/frameworks/location/altitude/GetGeoidHeightResponse;

    .line 6
    .line 7
    .line 8
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object p0

    .line 10
    :catch_0
    new-instance p0, Landroid/frameworks/location/altitude/GetGeoidHeightResponse;

    .line 11
    .line 12
    invoke-direct {p0}, Landroid/frameworks/location/altitude/GetGeoidHeightResponse;-><init>()V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Landroid/frameworks/location/altitude/GetGeoidHeightResponse;->success:Z

    .line 17
    .line 18
    return-object p0
.end method

.method public final getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 1
    const-string/jumbo p0, "e47d23f579ff7a897fb03e7e7f1c3006cfc6036b"

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final getInterfaceVersion()I
    .locals 0

    .line 1
    const/4 p0, 0x2

    .line 2
    return p0
.end method
