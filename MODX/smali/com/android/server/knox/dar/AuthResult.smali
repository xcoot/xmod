.class public final Lcom/android/server/knox/dar/AuthResult;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCallerAuthResult:I

.field public mCallingPackage:[B

.field public mCallingPackageAuthResult:I

.field public mCallingPackageSigs:[B


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "        Caller Auth Result : "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget v1, p0, Lcom/android/server/knox/dar/AuthResult;->mCallerAuthResult:I

    .line 10
    const-string v2, "Normal"

    .line 12
    const-string v3, "Abnormal"

    .line 14
    const-string v4, "Not support"

    .line 16
    const/4 v5, 0x1

    .line 17
    if-eqz v1, :cond_2

    .line 19
    if-eq v1, v5, :cond_1

    .line 21
    const/4 v6, 0x2

    .line 22
    if-eq v1, v6, :cond_0

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object v1, v4

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move-object v1, v3

    .line 32
    goto :goto_0

    .line 33
    :cond_2
    move-object v1, v2

    .line 34
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    const-string v1, "\n        Calling Package : "

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    new-instance v1, Ljava/lang/String;

    .line 44
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 46
    iget-object v7, p0, Lcom/android/server/knox/dar/AuthResult;->mCallingPackage:[B

    .line 48
    invoke-direct {v1, v7, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const-string v1, "\n        Calling Package Signatures : "

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    new-instance v1, Ljava/lang/String;

    .line 61
    iget-object v7, p0, Lcom/android/server/knox/dar/AuthResult;->mCallingPackageSigs:[B

    .line 63
    invoke-direct {v1, v7, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string v1, "\n        Calling Package Auth Result : "

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget p0, p0, Lcom/android/server/knox/dar/AuthResult;->mCallingPackageAuthResult:I

    .line 76
    if-eqz p0, :cond_4

    .line 78
    if-eq p0, v5, :cond_3

    .line 80
    move-object v2, v4

    .line 81
    goto :goto_1

    .line 82
    :cond_3
    move-object v2, v3

    .line 83
    :cond_4
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object p0

    .line 90
    return-object p0
.end method
