.class public final Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic $r8$classId:I

.field public mCallback:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/locksettings/LockSettingsService;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;->mCallback:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;->mCallback:Ljava/lang/Object;

    .line 8
    check-cast v0, Lcom/android/server/locksettings/LockSettingsService;

    .line 10
    iget-object v0, v0, Lcom/android/server/locksettings/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    .line 12
    invoke-interface {v0}, Landroid/service/gatekeeper/IGateKeeperService;->asBinder()Landroid/os/IBinder;

    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 20
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;->mCallback:Ljava/lang/Object;

    .line 22
    check-cast p0, Lcom/android/server/locksettings/LockSettingsService;

    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    .line 27
    return-void

    .line 28
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;->mCallback:Ljava/lang/Object;

    .line 30
    check-cast v0, Lcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback;

    .line 32
    if-nez v0, :cond_0

    .line 34
    const/4 v0, 0x0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback;->asBinder()Landroid/os/IBinder;

    .line 39
    move-result-object v0

    .line 40
    :goto_0
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 43
    move-result-object v0

    .line 44
    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback$$ExternalSyntheticLambda0;

    .line 46
    const/4 v2, 0x1

    .line 47
    invoke-direct {v1, p0, v2}, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;I)V

    .line 50
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 53
    return-void

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
