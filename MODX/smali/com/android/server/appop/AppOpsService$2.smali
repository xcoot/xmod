.class public final Lcom/android/server/appop/AppOpsService$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AppOpsService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$2;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 6
    return-void
.end method


# virtual methods
.method public final onUidModeChanged(IILjava/lang/String;)V
    .locals 6

    .line 1
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$2;->this$0:Lcom/android/server/appop/AppOpsService;

    .line 3
    iget-object p0, v1, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    .line 5
    new-instance v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda15;

    .line 7
    const/4 v2, 0x2

    .line 8
    invoke-direct {v0, v2}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda15;-><init>(I)V

    .line 11
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object v2

    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v3

    .line 19
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 21
    move-object v5, p3

    .line 22
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 29
    return-void
.end method
