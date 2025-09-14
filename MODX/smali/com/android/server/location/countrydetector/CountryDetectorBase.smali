.class public abstract Lcom/android/server/location/countrydetector/CountryDetectorBase;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDetectedCountry:Landroid/location/Country;

.field public final mHandler:Landroid/os/Handler;

.field public mListener:Landroid/location/CountryListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "CountryDetector"

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Context;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/android/server/location/countrydetector/CountryDetectorBase;->mContext:Landroid/content/Context;

    .line 12
    new-instance p1, Landroid/os/Handler;

    .line 14
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/server/location/countrydetector/CountryDetectorBase;->mHandler:Landroid/os/Handler;

    .line 19
    return-void
.end method


# virtual methods
.method public abstract detectCountry()Landroid/location/Country;
.end method

.method public setCountryListener(Landroid/location/CountryListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/location/countrydetector/CountryDetectorBase;->mListener:Landroid/location/CountryListener;

    .line 3
    return-void
.end method
