.class public final Lcom/android/server/autofill/ui/PendingUi;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final client:Landroid/view/autofill/IAutoFillManagerClient;

.field public mState:I

.field public final mToken:Landroid/os/IBinder;

.field public final sessionId:I


# direct methods
.method public constructor <init>(Landroid/os/IBinder;ILandroid/view/autofill/IAutoFillManagerClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/autofill/ui/PendingUi;->mToken:Landroid/os/IBinder;

    .line 6
    const/4 p1, 0x1

    .line 7
    iput p1, p0, Lcom/android/server/autofill/ui/PendingUi;->mState:I

    .line 9
    iput p2, p0, Lcom/android/server/autofill/ui/PendingUi;->sessionId:I

    .line 11
    iput-object p3, p0, Lcom/android/server/autofill/ui/PendingUi;->client:Landroid/view/autofill/IAutoFillManagerClient;

    .line 13
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "PendingUi: [token="

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/android/server/autofill/ui/PendingUi;->mToken:Landroid/os/IBinder;

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, ", sessionId="

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget v1, p0, Lcom/android/server/autofill/ui/PendingUi;->sessionId:I

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, ", state="

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget p0, p0, Lcom/android/server/autofill/ui/PendingUi;->mState:I

    .line 30
    int-to-long v1, p0

    .line 31
    const-class p0, Lcom/android/server/autofill/ui/PendingUi;

    .line 33
    const-string v3, "STATE_"

    .line 35
    invoke-static {p0, v3, v1, v2}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 39
    const-string v1, "]"

    .line 41
    invoke-static {v0, p0, v1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method
