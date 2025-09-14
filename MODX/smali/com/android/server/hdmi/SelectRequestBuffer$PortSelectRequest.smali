.class public final Lcom/android/server/hdmi/SelectRequestBuffer$PortSelectRequest;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

.field public final mId:I

.field public final mService:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;ILandroid/hardware/hdmi/IHdmiControlCallback;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/hdmi/SelectRequestBuffer$PortSelectRequest;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/android/server/hdmi/SelectRequestBuffer$PortSelectRequest;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 8
    iput p2, p0, Lcom/android/server/hdmi/SelectRequestBuffer$PortSelectRequest;->mId:I

    .line 10
    iput-object p3, p0, Lcom/android/server/hdmi/SelectRequestBuffer$PortSelectRequest;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 12
    return-void
.end method


# virtual methods
.method public final isLocalDeviceReady()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/SelectRequestBuffer$PortSelectRequest;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_1

    .line 9
    const-string v0, "Local tv device not available"

    .line 11
    const-string v1, "SelectRequestBuffer"

    .line 13
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/SelectRequestBuffer$PortSelectRequest;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 18
    if-eqz p0, :cond_0

    .line 20
    const/4 v0, 0x2

    .line 21
    invoke-interface {p0, v0}, Landroid/hardware/hdmi/IHdmiControlCallback;->onComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception p0

    .line 26
    const-string v0, "Invoking callback failed:"

    .line 28
    invoke-static {v0, p0, v1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 31
    :cond_0
    :goto_0
    const/4 p0, 0x0

    .line 32
    return p0

    .line 33
    :cond_1
    const/4 p0, 0x1

    .line 34
    return p0
.end method
