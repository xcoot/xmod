.class public final Lcom/android/server/pm/PackageInstallerService$BroadcastCookie;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final callingUid:I

.field public final userCheck:Ljava/util/function/IntPredicate;


# direct methods
.method public constructor <init>(ILjava/util/function/IntPredicate;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/pm/PackageInstallerService$BroadcastCookie;->callingUid:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerService$BroadcastCookie;->userCheck:Ljava/util/function/IntPredicate;

    .line 7
    .line 8
    return-void
.end method
