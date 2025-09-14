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

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$2;->this$0:Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$2;->val$country:Landroid/location/Country;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$2;->val$detectedCountry:Landroid/location/Country;

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$2;->val$notifyChange:Z

    .line 11
    .line 12
    iput-boolean p5, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$2;->val$startLocationBasedDetection:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$2;->this$0:Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$2;->val$country:Landroid/location/Country;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$2;->val$detectedCountry:Landroid/location/Country;

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$2;->val$notifyChange:Z

    .line 8
    .line 9
    iget-boolean p0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$2;->val$startLocationBasedDetection:Z

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    if-eqz v3, :cond_1

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    iget-object v3, v0, Lcom/android/server/location/countrydetector/CountryDetectorBase;->mListener:Landroid/location/CountryListener;

    .line 19
    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/location/Country;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    :cond_0
    iget-object v1, v0, Lcom/android/server/location/countrydetector/CountryDetectorBase;->mListener:Landroid/location/CountryListener;

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-interface {v1, v2}, Landroid/location/CountryListener;->onCountryDetected(Landroid/location/Country;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    const/4 v1, 0x1

    .line 38
    if-eqz p0, :cond_5

    .line 39
    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    invoke-virtual {v2}, Landroid/location/Country;->getSource()I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-le p0, v1, :cond_5

    .line 47
    .line 48
    :cond_2
    iget-object p0, v0, Lcom/android/server/location/countrydetector/CountryDetectorBase;->mContext:Landroid/content/Context;

    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    const-string v3, "airplane_mode_on"

    .line 55
    .line 56
    const/4 v4, 0x0

    .line 57
    invoke-static {p0, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-nez p0, :cond_3

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    iget-object p0, v0, Lcom/android/server/location/countrydetector/CountryDetectorBase;->mContext:Landroid/content/Context;

    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    const-string/jumbo v3, "wifi_on"

    .line 71
    .line 72
    .line 73
    invoke-static {p0, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    if-eqz p0, :cond_5

    .line 78
    .line 79
    :goto_0
    iget-object p0, v0, Lcom/android/server/location/countrydetector/CountryDetectorBase;->mListener:Landroid/location/CountryListener;

    .line 80
    .line 81
    if-eqz p0, :cond_5

    .line 82
    .line 83
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    if-eqz p0, :cond_5

    .line 88
    .line 89
    iget-object p0, v0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mLocationBasedCountryDetectionListener:Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$1;

    .line 90
    .line 91
    monitor-enter v0

    .line 92
    :try_start_0
    iget-object v3, v0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mLocationBasedCountryDetector:Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    .line 94
    if-eqz v3, :cond_4

    .line 95
    .line 96
    monitor-exit v0

    .line 97
    goto :goto_1

    .line 98
    :cond_4
    :try_start_1
    new-instance v3, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;

    .line 99
    .line 100
    iget-object v4, v0, Lcom/android/server/location/countrydetector/CountryDetectorBase;->mContext:Landroid/content/Context;

    .line 101
    .line 102
    invoke-direct {v3, v4}, Lcom/android/server/location/countrydetector/CountryDetectorBase;-><init>(Landroid/content/Context;)V

    .line 103
    .line 104
    .line 105
    const-string/jumbo v5, "location"

    .line 106
    .line 107
    .line 108
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    check-cast v4, Landroid/location/LocationManager;

    .line 113
    .line 114
    iput-object v4, v3, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mLocationManager:Landroid/location/LocationManager;

    .line 115
    .line 116
    iput-object v3, v0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mLocationBasedCountryDetector:Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;

    .line 117
    .line 118
    iput-object p0, v3, Lcom/android/server/location/countrydetector/CountryDetectorBase;->mListener:Landroid/location/CountryListener;

    .line 119
    .line 120
    invoke-virtual {v3}, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->detectCountry()Landroid/location/Country;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    .line 122
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

    .line 129
    .line 130
    invoke-virtual {v2}, Landroid/location/Country;->getSource()I

    .line 131
    .line 132
    .line 133
    move-result p0

    .line 134
    if-lt p0, v1, :cond_6

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->cancelLocationRefresh()V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->stopLocationBasedDetector()V

    .line 141
    .line 142
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

    .line 146
    .line 147
    if-eqz p0, :cond_8

    .line 148
    .line 149
    monitor-exit v0

    .line 150
    goto :goto_3

    .line 151
    :cond_8
    :try_start_3
    new-instance p0, Ljava/util/Timer;

    .line 152
    .line 153
    invoke-direct {p0}, Ljava/util/Timer;-><init>()V

    .line 154
    .line 155
    .line 156
    iput-object p0, v0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mLocationRefreshTimer:Ljava/util/Timer;

    .line 157
    .line 158
    new-instance v1, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$3;

    .line 159
    .line 160
    invoke-direct {v1, v0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$3;-><init>(Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;)V

    .line 161
    .line 162
    .line 163
    const-wide/32 v2, 0x5265c00

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 167
    .line 168
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
