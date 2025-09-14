.class public final Lcom/android/server/location/countrydetector/LocationBasedCountryDetector$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;


# direct methods
.method public constructor <init>(Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector$1;->this$0:Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector$1;->this$0:Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->stop()V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector$1;->this$0:Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->queryCountryCode(Landroid/location/Location;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method
