.class public final synthetic Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/VcnManagementService;

.field public final synthetic f$1:Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/VcnManagementService;Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/VcnManagementService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda13;->f$1:Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda13;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/VcnManagementService;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda13;->f$1:Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda13;->f$2:I

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object v0, v1, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;->mCallback:Landroid/net/vcn/IVcnStatusCallback;

    .line 11
    .line 12
    invoke-interface {v0, p0}, Landroid/net/vcn/IVcnStatusCallback;->onVcnStatusChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    const-string v0, "VcnStatusCallback threw on VCN status change"

    .line 18
    .line 19
    const-string v1, "VcnManagementService"

    .line 20
    .line 21
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method
