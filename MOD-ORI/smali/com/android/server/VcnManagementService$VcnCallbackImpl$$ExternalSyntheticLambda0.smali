.class public final synthetic Lcom/android/server/VcnManagementService$VcnCallbackImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/VcnManagementService$VcnCallbackImpl;

.field public final synthetic f$1:Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/VcnManagementService$VcnCallbackImpl;Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/VcnManagementService$VcnCallbackImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/VcnManagementService$VcnCallbackImpl;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/VcnManagementService$VcnCallbackImpl$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/VcnManagementService$VcnCallbackImpl$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/VcnManagementService$VcnCallbackImpl$$ExternalSyntheticLambda0;->f$3:I

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/VcnManagementService$VcnCallbackImpl$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/VcnManagementService$VcnCallbackImpl$$ExternalSyntheticLambda0;->f$5:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/VcnManagementService$VcnCallbackImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/VcnManagementService$VcnCallbackImpl;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/VcnManagementService$VcnCallbackImpl$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/VcnManagementService$VcnCallbackImpl$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 6
    .line 7
    iget v3, p0, Lcom/android/server/VcnManagementService$VcnCallbackImpl$$ExternalSyntheticLambda0;->f$3:I

    .line 8
    .line 9
    iget-object v4, p0, Lcom/android/server/VcnManagementService$VcnCallbackImpl$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/VcnManagementService$VcnCallbackImpl$$ExternalSyntheticLambda0;->f$5:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget-object v1, v1, Lcom/android/server/VcnManagementService$VcnStatusCallbackInfo;->mCallback:Landroid/net/vcn/IVcnStatusCallback;

    .line 17
    .line 18
    invoke-interface {v1, v2, v3, v4, p0}, Landroid/net/vcn/IVcnStatusCallback;->onGatewayConnectionError(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception p0

    .line 23
    iget-object v0, v0, Lcom/android/server/VcnManagementService$VcnCallbackImpl;->this$0:Lcom/android/server/VcnManagementService;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    const-string v0, "VcnStatusCallback threw on VCN status change"

    .line 29
    .line 30
    const-string v1, "VcnManagementService"

    .line 31
    .line 32
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method
