.class public final Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mGeofence:Landroid/location/Geofence;

.field public final mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/app/PendingIntent;Landroid/location/Geofence;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-object v0, p1

    .line 8
    check-cast v0, Landroid/app/PendingIntent;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;->mPendingIntent:Landroid/app/PendingIntent;

    .line 11
    .line 12
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-object p1, p2

    .line 16
    check-cast p1, Landroid/location/Geofence;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;->mGeofence:Landroid/location/Geofence;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;->mPendingIntent:Landroid/app/PendingIntent;

    .line 9
    .line 10
    iget-object v2, p1, Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;->mPendingIntent:Landroid/app/PendingIntent;

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;->mGeofence:Landroid/location/Geofence;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;->mGeofence:Landroid/location/Geofence;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroid/location/Geofence;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;->mPendingIntent:Landroid/app/PendingIntent;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/PendingIntent;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
