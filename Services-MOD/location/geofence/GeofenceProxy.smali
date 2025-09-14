.class public final Lcom/android/server/location/geofence/GeofenceProxy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;


# instance fields
.field public volatile mGeofenceHardware:Landroid/hardware/location/IGeofenceHardware;

.field public final mGpsGeofenceHardware:Landroid/location/IGpsGeofenceHardware;

.field public final mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcherImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/gnss/GnssGeofenceProxy;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iput-object p2, p0, Lcom/android/server/location/geofence/GeofenceProxy;->mGpsGeofenceHardware:Landroid/location/IGpsGeofenceHardware;

    .line 9
    const p2, 0x104035e

    .line 12
    const-string/jumbo v0, "com.android.location.service.GeofenceProvider"

    .line 15
    const v1, 0x1110172

    .line 18
    invoke-static {p1, v0, v1, p2}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->createFromConfig(Landroid/content/Context;Ljava/lang/String;II)Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;

    .line 21
    move-result-object v6

    .line 22
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 25
    move-result-object v4

    .line 26
    new-instance p2, Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    .line 28
    const/4 v8, 0x0

    .line 29
    const-string v5, "GeofenceProxy"

    .line 31
    move-object v2, p2

    .line 32
    move-object v3, p1

    .line 33
    move-object v7, p0

    .line 34
    invoke-direct/range {v2 .. v8}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;Lcom/android/server/location/injector/Injector;)V

    .line 37
    iput-object p2, p0, Lcom/android/server/location/geofence/GeofenceProxy;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    .line 39
    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lcom/android/server/location/geofence/GeofenceProxy;->mGeofenceHardware:Landroid/hardware/location/IGeofenceHardware;

    .line 42
    return-void
.end method


# virtual methods
.method public final onBind(Landroid/os/IBinder;Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/location/IGeofenceProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGeofenceProvider;

    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceProxy;->mGeofenceHardware:Landroid/hardware/location/IGeofenceHardware;

    .line 7
    invoke-interface {p1, p0}, Landroid/location/IGeofenceProvider;->setGeofenceHardware(Landroid/hardware/location/IGeofenceHardware;)V

    .line 10
    return-void
.end method

.method public final onUnbind()V
    .locals 0

    .line 1
    return-void
.end method
