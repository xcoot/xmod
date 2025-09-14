.class public final Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;

.field public final synthetic val$country:Landroid/location/Country;

.field public final synthetic val$detectedCountry:Landroid/location/Country;

.field public final synthetic val$notifyChange:Z

.field public final synthetic val$startLocationBasedDetection:Z


# direct methods
.method public constructor <init>(Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;Landroid/location/Country;Landroid/location/Country;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$2;->this$0:Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;

    .line 6
    iput-object p2, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$2;->val$country:Landroid/location/Country;

    .line 8
    iput-object p3, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$2;->val$detectedCountry:Landroid/location/Country;

    .line 10
    iput-boolean p4, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$2;->val$notifyChange:Z

    .line 12
    iput-boolean p5, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$2;->val$startLocationBasedDetection:Z

    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$2;->this$0:Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;

    .line 3
    iget-object v1, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$2;->val$country:Landroid/location/Country;

    .line 5
    iget-object v2, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$2;->val$detectedCountry:Landroid/location/Country;

    .line 7
    iget-boolean v3, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$2;->val$notifyChange:Z

    .line 9
    iget-boolean p0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$2;->val$startLocationBasedDetection:Z

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    if-eqz v3, :cond_1

    .line 16
    if-eqz v2, :cond_1

    .line 18
    iget-object v3, v0, Lcom/android/server/location/countrydetector/CountryDetectorBase;->mListener:Landroid/location/CountryListener;

    .line 20
    if-eqz v3, :cond_1

    .line 22
    if-eqz v1, :cond_0

    .line 24
    invoke-virtual {v1, v2}, Landroid/location/Country;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_1

    .line 30
    :cond_0
    iget-object v1, v0, Lcom/android/server/location/countrydetector/CountryDetectorBase;->mListener:Landroid/location/CountryListener;

    .line 32
    if-eqz v1, :cond_1

    .line 34
    invoke-interface {v1, v2}, Landroid/location/CountryListener;->onCountryDetected(Landroid/location/Country;)V

    .line 37
    :cond_1
    const/4 v1, 0x1

    .line 38
    if-eqz p0, :cond_5

    .line 40
    if-eqz v2, :cond_2

    .line 42
    invoke-virtual {v2}, Landroid/location/Country;->getSource()I

    .line 45
    move-result p0

    .line 46
    if-le p0, v1, :cond_5

    .line 48
    :cond_2
    iget-object p0, v0, Lcom/android/server/location/countrydetector/CountryDetectorBase;->mContext:Landroid/content/Context;

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 53
    move-result-object p0

    .line 54
    const-string v3, "airplane_mode_on"

    .line 56
    const/4 v4, 0x0

    .line 57
    invoke-static {p0, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 60
    move-result p0

    .line 61
    if-nez p0, :cond_3

    .line 63
    goto :goto_0

    .line 64
    :cond_3
    iget-object p0, v0, Lcom/android/server/location/countrydetector/CountryDetectorBase;->mContext:Landroid/content/Context;

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 69
    move-result-object p0

    .line 70
    const-string/jumbo v3, "wifi_on"

    .line 73
    invoke-static {p0, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 76
    move-result p0

    .line 77
    if-eqz p0, :cond_5

    .line 79
    :goto_0
    iget-object p0, v0, Lcom/android/server/location/countrydetector/CountryDetectorBase;->mListener:Landroid/location/CountryListener;

    .line 81
    if-eqz p0, :cond_5

    .line 83
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    .line 86
    move-result p0

    .line 87
    if-eqz p0, :cond_5

    .line 89
    iget-object p0, v0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mLocationBasedCountryDetectionListener:Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$1;

    .line 91
    monitor-enter v0

    .line 92
    :try_start_0
    iget-object v3, v0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mLocationBasedCountryDetector:Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    if-eqz v3, :cond_4

    .line 96
    monitor-exit v0

    .line 97
    goto :goto_1

    .line 98
    :cond_4
    :try_start_1
    new-instance v3, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;

    .line 100
    iget-object v4, v0, Lcom/android/server/location/countrydetector/CountryDetectorBase;->mContext:Landroid/content/Context;

    .line 102
    invoke-direct {v3, v4}, Lcom/android/server/location/countrydetector/CountryDetectorBase;-><init>(Landroid/content/Context;)V

    .line 105
    const-string/jumbo v5, "location"

    .line 108
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 111
    move-result-object v4

    .line 112
    check-cast v4, Landroid/location/LocationManager;

    .line 114
    iput-object v4, v3, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    .line 116
    iput-object v3, v0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mLocationBasedCountryDetector:Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;

    .line 118
    iput-object p0, v3, Lcom/android/server/location/countrydetector/CountryDetectorBase;->mListener:Landroid/location/CountryListener;

    .line 120
    invoke-virtual {v3}, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->detectCountry()Landroid/location/Country;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    monitor-exit v0

    .line 124
    goto :goto_1

    .line 125
    :catchall_0
    move-exception p0

    .line 126
    monitor-exit v0

    .line 127
    throw p0

    .line 128
    :cond_5
    :goto_1
    if-eqz v2, :cond_7

    .line 130
    invoke-virtual {v2}, Landroid/location/Country;->getSource()I

    .line 133
    move-result p0

    .line 134
    if-lt p0, v1, :cond_6

    .line 136
    goto :goto_2

    .line 137
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->cancelLocationRefresh()V

    .line 140
    invoke-virtual {v0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->stopLocationBasedDetector()V

    .line 143
    goto :goto_3

    .line 144
    :cond_7
    :goto_2
    monitor-enter v0

    .line 145
    :try_start_2
    iget-object p0, v0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mLocationRefreshTimer:Ljava/util/Timer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 147
    if-eqz p0, :cond_8

    .line 149
    monitor-exit v0

    .line 150
    goto :goto_3

    .line 151
    :cond_8
    :try_start_3
    new-instance p0, Ljava/util/Timer;

    .line 153
    invoke-direct {p0}, Ljava/util/Timer;-><init>()V

    .line 156
    iput-object p0, v0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mLocationRefreshTimer:Ljava/util/Timer;

    .line 158
    new-instance v1, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$3;

    .line 160
    invoke-direct {v1, v0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$3;-><init>(Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;)V

    .line 163
    const-wide/32 v2, 0x5265c00

    .line 166
    invoke-virtual {p0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 169
    monitor-exit v0

    .line 170
    :goto_3
    return-void

    .line 171
    :catchall_1
    move-exception p0

    .line 172
    monitor-exit v0

    .line 173
    throw p0
.end method
