.class public final synthetic Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/net/NetworkManagementService$NetworkManagementEventCallback;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Z

.field public final synthetic f$2:J

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(IIZJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda0;->f$0:I

    .line 6
    iput-boolean p3, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda0;->f$1:Z

    .line 8
    iput-wide p4, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda0;->f$2:J

    .line 10
    iput p2, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda0;->f$3:I

    .line 12
    return-void
.end method


# virtual methods
.method public final sendCallback(Landroid/net/INetworkManagementEventObserver;)V
    .locals 6

    .line 1
    iget v1, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda0;->f$0:I

    .line 3
    iget-boolean v2, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda0;->f$1:Z

    .line 5
    iget-wide v3, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda0;->f$2:J

    .line 7
    iget v5, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda0;->f$3:I

    .line 9
    move-object v0, p1

    .line 10
    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkManagementEventObserver;->interfaceClassDataActivityChanged(IZJI)V

    .line 13
    return-void
.end method
