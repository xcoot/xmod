.class public final Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljavax/security/auth/Destroyable;


# instance fields
.field public final mKeyClaimant:[B

.field public final mLskfHash:[B

.field public final mSessionId:Ljava/lang/String;

.field public final mVaultParams:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[B[B[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->mLskfHash:[B

    .line 6
    iput-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->mSessionId:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->mKeyClaimant:[B

    .line 10
    iput-object p4, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->mVaultParams:[B

    .line 12
    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->mLskfHash:[B

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 7
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->mKeyClaimant:[B

    .line 9
    invoke-static {p0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 12
    return-void
.end method
