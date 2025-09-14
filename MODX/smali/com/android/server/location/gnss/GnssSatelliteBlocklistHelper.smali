.class public final Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallback:Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper$GnssSatelliteBlocklistCallback;

.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/location/gnss/GnssLocationProviderSec;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper;->mContext:Landroid/content/Context;

    .line 6
    iput-object p3, p0, Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper;->mCallback:Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper$GnssSatelliteBlocklistCallback;

    .line 8
    new-instance p3, Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper$1;

    .line 10
    new-instance v0, Landroid/os/Handler;

    .line 12
    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 15
    invoke-direct {p3, p0, v0}, Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper$1;-><init>(Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper;Landroid/os/Handler;)V

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 21
    move-result-object p0

    .line 22
    const-string/jumbo p1, "gnss_satellite_blocklist"

    .line 25
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 28
    move-result-object p1

    .line 29
    const/4 p2, 0x1

    .line 30
    const/4 v0, -0x1

    .line 31
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 34
    return-void
.end method

.method public static parseSatelliteBlocklist(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 1
    const-string v0, ","

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    array-length v1, p0

    .line 10
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    array-length v1, p0

    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_0
    if-ge v2, v1, :cond_2

    .line 17
    aget-object v3, p0, v2

    .line 19
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 22
    move-result-object v3

    .line 23
    const-string v4, ""

    .line 25
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result v4

    .line 29
    if-nez v4, :cond_1

    .line 31
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 34
    move-result v3

    .line 35
    if-ltz v3, :cond_0

    .line 37
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    new-instance p0, Ljava/lang/NumberFormatException;

    .line 47
    const-string v0, "Negative value is invalid."

    .line 49
    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 52
    throw p0

    .line 53
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    return-object v0
.end method


# virtual methods
.method public final updateSatelliteBlocklist()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object v0

    .line 7
    const-string/jumbo v1, "gnss_satellite_blocklist"

    .line 10
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_0

    .line 16
    const-string v0, ""

    .line 18
    :cond_0
    const-string v1, "Update GNSS satellite blocklist: "

    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    const-string v2, "GnssBlocklistHelper"

    .line 26
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :try_start_0
    invoke-static {v0}, Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper;->parseSatelliteBlocklist(Ljava/lang/String;)Ljava/util/List;

    .line 32
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 36
    move-result v1

    .line 37
    rem-int/lit8 v1, v1, 0x2

    .line 39
    if-eqz v1, :cond_1

    .line 41
    const-string/jumbo p0, "blocklist string has odd number of values.Aborting updateSatelliteBlocklist"

    .line 44
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void

    .line 48
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 51
    move-result v1

    .line 52
    div-int/lit8 v1, v1, 0x2

    .line 54
    new-array v2, v1, [I

    .line 56
    new-array v3, v1, [I

    .line 58
    const/4 v4, 0x0

    .line 59
    :goto_0
    if-ge v4, v1, :cond_2

    .line 61
    mul-int/lit8 v5, v4, 0x2

    .line 63
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 66
    move-result-object v6

    .line 67
    check-cast v6, Ljava/lang/Integer;

    .line 69
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 72
    move-result v6

    .line 73
    aput v6, v2, v4

    .line 75
    add-int/lit8 v5, v5, 0x1

    .line 77
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 80
    move-result-object v5

    .line 81
    check-cast v5, Ljava/lang/Integer;

    .line 83
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 86
    move-result v5

    .line 87
    aput v5, v3, v4

    .line 89
    add-int/lit8 v4, v4, 0x1

    .line 91
    goto :goto_0

    .line 92
    :cond_2
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper;->mCallback:Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper$GnssSatelliteBlocklistCallback;

    .line 94
    check-cast p0, Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 96
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    new-instance v0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda21;

    .line 101
    invoke-direct {v0, p0, v2, v3}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda21;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;[I[I)V

    .line 104
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    .line 106
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 109
    const/16 v0, 0x8

    .line 111
    new-array v0, v0, [Z

    .line 113
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssMetrics:Lcom/android/server/location/gnss/GnssMetrics;

    .line 115
    iput-object v0, p0, Lcom/android/server/location/gnss/GnssMetrics;->mConstellationTypes:[Z

    .line 117
    return-void

    .line 118
    :catch_0
    move-exception p0

    .line 119
    const-string v0, "Exception thrown when parsing blocklist string."

    .line 121
    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    return-void
.end method
