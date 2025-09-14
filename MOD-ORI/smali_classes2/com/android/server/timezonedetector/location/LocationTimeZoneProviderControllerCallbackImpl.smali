.class public final Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerCallbackImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;


# direct methods
.method public constructor <init>(Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerCallbackImpl;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    .line 8
    .line 9
    return-void
.end method
