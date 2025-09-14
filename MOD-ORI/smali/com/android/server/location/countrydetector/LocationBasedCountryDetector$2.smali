.class public final Lcom/android/server/location/countrydetector/LocationBasedCountryDetector$2;
.super Ljava/util/TimerTask;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;


# direct methods
.method public constructor <init>(Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector$2;->this$0:Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector$2;->this$0:Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->mTimer:Ljava/util/Timer;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->stop()V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector$2;->this$0:Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->getLastKnownLocation()Landroid/location/Location;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->queryCountryCode(Landroid/location/Location;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
