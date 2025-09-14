.class public final Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mContent:[B

.field public mProtectorType:B

.field public mVersion:B


# direct methods
.method public static fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    aget-byte v1, p0, v1

    .line 8
    .line 9
    iput-byte v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mVersion:B

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    aget-byte v1, p0, v1

    .line 13
    .line 14
    iput-byte v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mProtectorType:B

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    array-length v2, p0

    .line 18
    invoke-static {p0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    iput-object p0, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mContent:[B

    .line 23
    .line 24
    return-object v0
.end method
