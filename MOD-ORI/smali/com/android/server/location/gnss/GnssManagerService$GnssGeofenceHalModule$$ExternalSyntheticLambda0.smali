.class public final synthetic Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;III)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;

    .line 4
    .line 5
    iput p2, p0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda0;->f$1:I

    .line 6
    .line 7
    iput p3, p0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda0;->f$2:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;

    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda0;->f$1:I

    .line 9
    .line 10
    iget p0, p0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda0;->f$2:I

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->getGeofenceHardware()Landroid/hardware/location/GeofenceHardwareImpl;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {p0}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->translateGeofenceStatus(I)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    invoke-virtual {v0, v1, p0}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceResumeStatus(II)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;

    .line 25
    .line 26
    iget v1, p0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda0;->f$1:I

    .line 27
    .line 28
    iget p0, p0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda0;->f$2:I

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->getGeofenceHardware()Landroid/hardware/location/GeofenceHardwareImpl;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {p0}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->translateGeofenceStatus(I)I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    invoke-virtual {v0, v1, p0}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceRemoveStatus(II)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;

    .line 43
    .line 44
    iget v1, p0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda0;->f$1:I

    .line 45
    .line 46
    iget p0, p0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda0;->f$2:I

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->getGeofenceHardware()Landroid/hardware/location/GeofenceHardwareImpl;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {p0}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->translateGeofenceStatus(I)I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    invoke-virtual {v0, v1, p0}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceAddStatus(II)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;

    .line 61
    .line 62
    iget v1, p0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda0;->f$1:I

    .line 63
    .line 64
    iget p0, p0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda0;->f$2:I

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->getGeofenceHardware()Landroid/hardware/location/GeofenceHardwareImpl;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-static {p0}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->translateGeofenceStatus(I)I

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    invoke-virtual {v0, v1, p0}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofencePauseStatus(II)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    nop

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
