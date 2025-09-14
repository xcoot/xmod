.class public final synthetic Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/app/AsyncNotedAppOp;

.field public final synthetic f$1:[Z

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:I

.field public final synthetic f$5:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/app/AsyncNotedAppOp;[ZILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda14;->f$0:Landroid/app/AsyncNotedAppOp;

    .line 6
    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda14;->f$1:[Z

    .line 8
    iput p3, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda14;->f$2:I

    .line 10
    iput-object p4, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda14;->f$3:Ljava/lang/String;

    .line 12
    iput p5, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda14;->f$4:I

    .line 14
    iput-object p6, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda14;->f$5:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda14;->f$0:Landroid/app/AsyncNotedAppOp;

    .line 3
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda14;->f$1:[Z

    .line 5
    iget v2, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda14;->f$2:I

    .line 7
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda14;->f$3:Ljava/lang/String;

    .line 9
    iget v4, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda14;->f$4:I

    .line 11
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda14;->f$5:Ljava/lang/String;

    .line 13
    check-cast p1, Lcom/android/internal/app/IAppOpsAsyncNotedCallback;

    .line 15
    :try_start_0
    invoke-interface {p1, v0}, Lcom/android/internal/app/IAppOpsAsyncNotedCallback;->opNoted(Landroid/app/AsyncNotedAppOp;)V

    .line 18
    const/4 p1, 0x0

    .line 19
    const/4 v0, 0x1

    .line 20
    aput-boolean v0, v1, p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p1

    .line 24
    const-string v0, "Could not forward noteOp of "

    .line 26
    const-string v1, " to "

    .line 28
    const-string v5, "/"

    .line 30
    invoke-static {v2, v0, v1, v3, v5}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    const-string v1, "("

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string p0, ")"

    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object p0

    .line 54
    const-string v0, "AppOps"

    .line 56
    invoke-static {v0, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    :goto_0
    return-void
.end method
