.class public final Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final gatekeeperPassword:[B

.field public final userId:I


# direct methods
.method public constructor <init>(I[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;->userId:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;->gatekeeperPassword:[B

    .line 7
    .line 8
    return-void
.end method
