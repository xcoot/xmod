.class public final synthetic Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/location/Location;

.field public final synthetic f$3:I

.field public final synthetic f$4:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;ILandroid/location/Location;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda2;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda2;->f$2:Landroid/location/Location;

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda2;->f$3:I

    .line 11
    .line 12
    iput-wide p5, p0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda2;->f$4:J

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;

    .line 2
    .line 3
    iget v2, p0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda2;->f$1:I

    .line 4
    .line 5
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda2;->f$2:Landroid/location/Location;

    .line 6
    .line 7
    iget v4, p0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda2;->f$3:I

    .line 8
    .line 9
    iget-wide v5, p0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda2;->f$4:J

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->getGeofenceHardware()Landroid/hardware/location/GeofenceHardwareImpl;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v7, 0x0

    .line 16
    sget v8, Landroid/location/FusedBatchOptions$SourceTechnologies;->GNSS:I

    .line 17
    .line 18
    invoke-virtual/range {v1 .. v8}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceTransition(ILandroid/location/Location;IJII)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
