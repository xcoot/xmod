.class public final Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/location/CountryListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;


# direct methods
.method public constructor <init>(Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$1;->this$0:Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;

    .line 6
    return-void
.end method


# virtual methods
.method public final onCountryDetected(Landroid/location/Country;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$1;->this$0:Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;

    .line 3
    iput-object p1, v0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mCountryFromLocation:Landroid/location/Country;

    .line 5
    const/4 p1, 0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, p1, v1}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->detectCountry(ZZ)Landroid/location/Country;

    .line 10
    iget-object p0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$1;->this$0:Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;

    .line 12
    invoke-virtual {p0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->stopLocationBasedDetector()V

    .line 15
    return-void
.end method
