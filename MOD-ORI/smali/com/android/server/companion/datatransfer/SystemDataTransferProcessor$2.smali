.class public final Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$2;
.super Landroid/os/ResultReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$2;->this$0:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceiveResult(ILandroid/os/Bundle;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "onReceiveResult() code="

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v1, ", data="

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "CDM_SystemDataTransferProcessor"

    .line 25
    .line 26
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    if-ne p1, v0, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const-string p0, "Unknown result code:"

    .line 36
    .line 37
    invoke-static {p1, p0, v1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    :goto_0
    const-string/jumbo v2, "permission_sync_request"

    .line 42
    .line 43
    .line 44
    const-class v3, Landroid/companion/datatransfer/PermissionSyncRequest;

    .line 45
    .line 46
    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    check-cast p2, Landroid/companion/datatransfer/PermissionSyncRequest;

    .line 51
    .line 52
    if-eqz p2, :cond_3

    .line 53
    .line 54
    if-nez p1, :cond_2

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    const/4 v0, 0x0

    .line 58
    :goto_1
    invoke-virtual {p2, v0}, Landroid/companion/datatransfer/PermissionSyncRequest;->setUserConsented(Z)V

    .line 59
    .line 60
    .line 61
    new-instance p1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v0, "Recording request: "

    .line 64
    .line 65
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$2;->this$0:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 79
    .line 80
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->mSystemDataTransferRequestStore:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

    .line 81
    .line 82
    invoke-virtual {p2}, Landroid/companion/datatransfer/PermissionSyncRequest;->getUserId()I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->writeRequest(ILandroid/companion/datatransfer/SystemDataTransferRequest;)V

    .line 87
    .line 88
    .line 89
    :cond_3
    return-void
.end method
