.class public final Lcom/android/server/location/eventlog/LocationEventLog$LocationPowerSaveModeEvent;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mLocationPowerSaveMode:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/location/eventlog/LocationEventLog$LocationPowerSaveModeEvent;->mLocationPowerSaveMode:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/location/eventlog/LocationEventLog$LocationPowerSaveModeEvent;->mLocationPowerSaveMode:I

    .line 2
    .line 3
    if-eqz p0, :cond_4

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-eq p0, v0, :cond_3

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    if-eq p0, v0, :cond_2

    .line 10
    .line 11
    const/4 v0, 0x3

    .line 12
    if-eq p0, v0, :cond_1

    .line 13
    .line 14
    const/4 v0, 0x4

    .line 15
    if-eq p0, v0, :cond_0

    .line 16
    .line 17
    const-string p0, "UNKNOWN"

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string p0, "THROTTLE_REQUESTS_WHEN_SCREEN_OFF"

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const-string p0, "FOREGROUND_ONLY"

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    const-string p0, "ALL_DISABLED_WHEN_SCREEN_OFF"

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_3
    const-string p0, "GPS_DISABLED_WHEN_SCREEN_OFF"

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_4
    const-string p0, "NO_CHANGE"

    .line 33
    .line 34
    :goto_0
    const-string/jumbo v0, "location power save mode changed to "

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method
