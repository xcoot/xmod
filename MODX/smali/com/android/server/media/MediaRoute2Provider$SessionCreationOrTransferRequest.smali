.class public final Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mRequestId:J

.field public final mTargetOriginalRouteId:Ljava/lang/String;

.field public final mTransferInitiatorPackageName:Ljava/lang/String;

.field public final mTransferInitiatorUserHandle:Landroid/os/UserHandle;

.field public final mTransferReason:I


# direct methods
.method public constructor <init>(JLjava/lang/String;ILandroid/os/UserHandle;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p1, p0, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;->mRequestId:J

    .line 6
    iput-object p3, p0, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;->mTargetOriginalRouteId:Ljava/lang/String;

    .line 8
    iput p4, p0, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;->mTransferReason:I

    .line 10
    iput-object p5, p0, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;->mTransferInitiatorUserHandle:Landroid/os/UserHandle;

    .line 12
    iput-object p6, p0, Lcom/android/server/media/MediaRoute2Provider$SessionCreationOrTransferRequest;->mTransferInitiatorPackageName:Ljava/lang/String;

    .line 14
    return-void
.end method
