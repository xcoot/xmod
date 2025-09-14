.class public final Lcom/android/server/timedetector/GnssTimeUpdateService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mService:Lcom/android/server/timedetector/GnssTimeUpdateService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 1

    .line 1
    const/16 v0, 0x258

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService$Lifecycle;->mService:Lcom/android/server/timedetector/GnssTimeUpdateService;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/timedetector/GnssTimeUpdateService;->startGnssListeningInternal()Z

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "GnssTimeUpdateService"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const-class v0, Landroid/app/AlarmManager;

    .line 12
    .line 13
    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    move-object v4, v0

    .line 18
    check-cast v4, Landroid/app/AlarmManager;

    .line 19
    .line 20
    const-class v0, Landroid/location/LocationManager;

    .line 21
    .line 22
    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    move-object v5, v0

    .line 27
    check-cast v5, Landroid/location/LocationManager;

    .line 28
    .line 29
    const-class v0, Landroid/location/LocationManagerInternal;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    move-object v6, v0

    .line 36
    check-cast v6, Landroid/location/LocationManagerInternal;

    .line 37
    .line 38
    const-class v0, Lcom/android/server/timedetector/TimeDetectorInternal;

    .line 39
    .line 40
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    move-object v7, v0

    .line 45
    check-cast v7, Lcom/android/server/timedetector/TimeDetectorInternal;

    .line 46
    .line 47
    new-instance v0, Lcom/android/server/timedetector/GnssTimeUpdateService;

    .line 48
    .line 49
    move-object v2, v0

    .line 50
    invoke-direct/range {v2 .. v7}, Lcom/android/server/timedetector/GnssTimeUpdateService;-><init>(Landroid/content/Context;Landroid/app/AlarmManager;Landroid/location/LocationManager;Landroid/location/LocationManagerInternal;Lcom/android/server/timedetector/TimeDetectorInternal;)V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService$Lifecycle;->mService:Lcom/android/server/timedetector/GnssTimeUpdateService;

    .line 54
    .line 55
    const-string v1, "gnss_time_update_service"

    .line 56
    .line 57
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method
