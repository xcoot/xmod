.class public final Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$4;
.super Landroid/telephony/PhoneStateListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;


# direct methods
.method public constructor <init>(Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$4;->this$0:Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$4;->this$0:Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;

    .line 2
    .line 3
    iget v0, p1, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mCountServiceStateChanges:I

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    add-int/2addr v0, v1

    .line 7
    iput v0, p1, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mCountServiceStateChanges:I

    .line 8
    .line 9
    iget v0, p1, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mTotalCountServiceStateChanges:I

    .line 10
    .line 11
    add-int/2addr v0, v1

    .line 12
    iput v0, p1, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mTotalCountServiceStateChanges:I

    .line 13
    .line 14
    iget-object p1, p1, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-ne p1, v1, :cond_0

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$4;->this$0:Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;

    .line 23
    .line 24
    invoke-virtual {p0, v1, v1}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->detectCountry(ZZ)Landroid/location/Country;

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method
