.class public final Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mKey:Ljava/security/PublicKey;

.field public mRefCount:I


# direct methods
.method public constructor <init>(Ljava/security/PublicKey;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->mRefCount:I

    .line 3
    iput-object p1, p0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->mKey:Ljava/security/PublicKey;

    return-void
.end method

.method public constructor <init>(Ljava/security/PublicKey;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    .line 5
    iput p2, p0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->mRefCount:I

    .line 6
    iput-object p1, p0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->mKey:Ljava/security/PublicKey;

    return-void
.end method
