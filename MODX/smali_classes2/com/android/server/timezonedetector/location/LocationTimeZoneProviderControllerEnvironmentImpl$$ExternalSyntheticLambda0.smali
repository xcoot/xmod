.class public final synthetic Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/timezonedetector/StateChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;

.field public final synthetic f$1:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onChange()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;

    .line 7
    .line 8
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl$$ExternalSyntheticLambda1;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;)V

    .line 14
    .line 15
    .line 16
    iget-object p0, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->mHandler:Landroid/os/Handler;

    .line 19
    .line 20
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method
