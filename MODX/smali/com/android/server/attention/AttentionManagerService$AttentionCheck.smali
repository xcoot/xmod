.class final Lcom/android/server/attention/AttentionManagerService$AttentionCheck;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallbackInternal:Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;

.field public final mIAttentionCallback:Lcom/android/server/attention/AttentionManagerService$AttentionCheck$1;

.field public mIsDispatched:Z

.field public mIsFulfilled:Z


# direct methods
.method public constructor <init>(Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;Lcom/android/server/attention/AttentionManagerService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mCallbackInternal:Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;

    .line 6
    new-instance v0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$1;

    .line 8
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$1;-><init>(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;Lcom/android/server/attention/AttentionManagerService;)V

    .line 11
    iput-object v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->mIAttentionCallback:Lcom/android/server/attention/AttentionManagerService$AttentionCheck$1;

    .line 13
    return-void
.end method
