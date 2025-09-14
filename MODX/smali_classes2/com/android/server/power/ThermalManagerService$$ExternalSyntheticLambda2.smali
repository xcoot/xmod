.class public final synthetic Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/android/server/power/ThermalManagerService;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Landroid/os/IThermalStatusListener;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    :try_start_0
    iget v0, v0, Lcom/android/server/power/ThermalManagerService;->mStatus:I

    .line 18
    .line 19
    invoke-interface {p0, v0}, Landroid/os/IThermalStatusListener;->onStatusChange(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    const-string v0, "ThermalManagerService"

    .line 25
    .line 26
    const-string v1, "Thermal callback failed to call"

    .line 27
    .line 28
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void

    .line 32
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, Landroid/os/IThermalEventListener;

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p0, Landroid/os/Temperature;

    .line 39
    .line 40
    :try_start_1
    invoke-interface {v0, p0}, Landroid/os/IThermalEventListener;->notifyThrottling(Landroid/os/Temperature;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :catch_1
    move-exception p0

    .line 45
    const-string v0, "ThermalManagerService"

    .line 46
    .line 47
    const-string v1, "Thermal callback failed to call"

    .line 48
    .line 49
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    .line 51
    .line 52
    :goto_1
    return-void

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
