.class public final Lcom/android/server/accounts/TokenCache$Key;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final account:Landroid/accounts/Account;

.field public final packageName:Ljava/lang/String;

.field public final sigDigest:[B

.field public final tokenType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/accounts/TokenCache$Key;->account:Landroid/accounts/Account;

    .line 6
    iput-object p2, p0, Lcom/android/server/accounts/TokenCache$Key;->tokenType:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/android/server/accounts/TokenCache$Key;->packageName:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lcom/android/server/accounts/TokenCache$Key;->sigDigest:[B

    .line 12
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 4
    instance-of v1, p1, Lcom/android/server/accounts/TokenCache$Key;

    .line 6
    if-eqz v1, :cond_0

    .line 8
    check-cast p1, Lcom/android/server/accounts/TokenCache$Key;

    .line 10
    iget-object v1, p0, Lcom/android/server/accounts/TokenCache$Key;->account:Landroid/accounts/Account;

    .line 12
    iget-object v2, p1, Lcom/android/server/accounts/TokenCache$Key;->account:Landroid/accounts/Account;

    .line 14
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 20
    iget-object v1, p0, Lcom/android/server/accounts/TokenCache$Key;->packageName:Ljava/lang/String;

    .line 22
    iget-object v2, p1, Lcom/android/server/accounts/TokenCache$Key;->packageName:Ljava/lang/String;

    .line 24
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 30
    iget-object v1, p0, Lcom/android/server/accounts/TokenCache$Key;->tokenType:Ljava/lang/String;

    .line 32
    iget-object v2, p1, Lcom/android/server/accounts/TokenCache$Key;->tokenType:Ljava/lang/String;

    .line 34
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 40
    iget-object p0, p0, Lcom/android/server/accounts/TokenCache$Key;->sigDigest:[B

    .line 42
    iget-object p1, p1, Lcom/android/server/accounts/TokenCache$Key;->sigDigest:[B

    .line 44
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 47
    move-result p0

    .line 48
    if-eqz p0, :cond_0

    .line 50
    const/4 v0, 0x1

    .line 51
    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/accounts/TokenCache$Key;->account:Landroid/accounts/Account;

    .line 3
    invoke-virtual {v0}, Landroid/accounts/Account;->hashCode()I

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/server/accounts/TokenCache$Key;->packageName:Ljava/lang/String;

    .line 9
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 12
    move-result v1

    .line 13
    xor-int/2addr v0, v1

    .line 14
    iget-object v1, p0, Lcom/android/server/accounts/TokenCache$Key;->tokenType:Ljava/lang/String;

    .line 16
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 19
    move-result v1

    .line 20
    xor-int/2addr v0, v1

    .line 21
    iget-object p0, p0, Lcom/android/server/accounts/TokenCache$Key;->sigDigest:[B

    .line 23
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    .line 26
    move-result p0

    .line 27
    xor-int/2addr p0, v0

    .line 28
    return p0
.end method
