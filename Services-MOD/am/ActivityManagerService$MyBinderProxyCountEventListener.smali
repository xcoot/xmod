.class public final Lcom/android/server/am/ActivityManagerService$MyBinderProxyCountEventListener;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MyBinderProxyCountEventListener;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 6
    return-void
.end method


# virtual methods
.method public final onLimitReached(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 3
    new-instance v1, Lcom/android/server/am/ActivityManagerService$MyBinderProxyCountEventListener$$ExternalSyntheticLambda0;

    .line 5
    invoke-direct {v1, p0, p1}, Lcom/android/server/am/ActivityManagerService$MyBinderProxyCountEventListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ActivityManagerService$MyBinderProxyCountEventListener;I)V

    .line 8
    const-string p0, "BinderProxy Dump: "

    .line 10
    invoke-static {p1, p0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object p0

    .line 14
    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 20
    return-void
.end method

.method public final onWarningThresholdReached(I)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/server/am/Flags;->logExcessiveBinderProxies()Z

    .line 4
    return-void
.end method
