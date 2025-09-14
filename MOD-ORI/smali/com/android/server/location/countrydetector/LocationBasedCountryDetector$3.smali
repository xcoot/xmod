.class public final Lcom/android/server/location/countrydetector/LocationBasedCountryDetector$3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;

.field public final synthetic val$location:Landroid/location/Location;


# direct methods
.method public constructor <init>(Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;Landroid/location/Location;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector$3;->this$0:Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector$3;->val$location:Landroid/location/Location;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector$3;->val$location:Landroid/location/Location;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector$3;->this$0:Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/location/countrydetector/CountryDetectorBase;->mListener:Landroid/location/CountryListener;

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-interface {p0, v1}, Landroid/location/CountryListener;->onCountryDetected(Landroid/location/Country;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void

    .line 16
    :cond_1
    iget-object v2, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector$3;->this$0:Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    new-instance v3, Landroid/location/Geocoder;

    .line 22
    .line 23
    iget-object v2, v2, Lcom/android/server/location/countrydetector/CountryDetectorBase;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    invoke-direct {v3, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    :try_start_0
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    .line 29
    .line 30
    .line 31
    move-result-wide v4

    .line 32
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    .line 33
    .line 34
    .line 35
    move-result-wide v6

    .line 36
    const/4 v8, 0x1

    .line 37
    invoke-virtual/range {v3 .. v8}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-lez v2, :cond_2

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Landroid/location/Address;

    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    goto :goto_0

    .line 61
    :catch_0
    const-string v0, "LocationBasedCountryDetector"

    .line 62
    .line 63
    const-string v2, "Exception occurs when getting country from location"

    .line 64
    .line 65
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    :cond_2
    move-object v0, v1

    .line 69
    :goto_0
    if-eqz v0, :cond_3

    .line 70
    .line 71
    iget-object v2, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector$3;->this$0:Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;

    .line 72
    .line 73
    new-instance v3, Landroid/location/Country;

    .line 74
    .line 75
    const/4 v4, 0x1

    .line 76
    invoke-direct {v3, v0, v4}, Landroid/location/Country;-><init>(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    iput-object v3, v2, Lcom/android/server/location/countrydetector/CountryDetectorBase;->mDetectedCountry:Landroid/location/Country;

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    iget-object v0, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector$3;->this$0:Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;

    .line 83
    .line 84
    iput-object v1, v0, Lcom/android/server/location/countrydetector/CountryDetectorBase;->mDetectedCountry:Landroid/location/Country;

    .line 85
    .line 86
    :goto_1
    iget-object v0, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector$3;->this$0:Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;

    .line 87
    .line 88
    iget-object v2, v0, Lcom/android/server/location/countrydetector/CountryDetectorBase;->mDetectedCountry:Landroid/location/Country;

    .line 89
    .line 90
    iget-object v0, v0, Lcom/android/server/location/countrydetector/CountryDetectorBase;->mListener:Landroid/location/CountryListener;

    .line 91
    .line 92
    if-eqz v0, :cond_4

    .line 93
    .line 94
    invoke-interface {v0, v2}, Landroid/location/CountryListener;->onCountryDetected(Landroid/location/Country;)V

    .line 95
    .line 96
    .line 97
    :cond_4
    iget-object p0, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector$3;->this$0:Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;

    .line 98
    .line 99
    iput-object v1, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mQueryThread:Ljava/lang/Thread;

    .line 100
    .line 101
    return-void
.end method
