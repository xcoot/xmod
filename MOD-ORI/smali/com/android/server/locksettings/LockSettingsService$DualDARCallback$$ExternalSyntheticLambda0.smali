.class public final synthetic Lcom/android/server/locksettings/LockSettingsService$DualDARCallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;

    .line 4
    .line 5
    check-cast p1, Landroid/os/IBinder;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    :try_start_0
    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception p1

    .line 19
    const-string v0, "LockSettingsService.DDAR"

    .line 20
    .line 21
    const-string v1, "Failed to unlink death listener"

    .line 22
    .line 23
    invoke-static {p1, v0, v1}, Lcom/android/server/knox/dar/sdp/SDPLog;->e(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 27
    .line 28
    .line 29
    :goto_0
    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;->mCallback:Ljava/lang/Object;

    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_0
    const/4 v0, 0x0

    .line 34
    :try_start_1
    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :catch_1
    move-exception p0

    .line 39
    const-string p1, "LockSettingsService.DDAR"

    .line 40
    .line 41
    const-string v0, "Failed to link death listener..."

    .line 42
    .line 43
    invoke-static {p0, p1, v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->e(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :goto_1
    return-void

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
