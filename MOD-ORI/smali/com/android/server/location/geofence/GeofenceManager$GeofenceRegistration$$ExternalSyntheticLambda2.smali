.class public final synthetic Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
