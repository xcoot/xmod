.class public abstract Lcom/android/server/backup/BackupUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static hashSignatureArray([Landroid/content/pm/Signature;)Ljava/util/ArrayList;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 4
    return-object v0

    .line 5
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    array-length v2, p0

    .line 8
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    array-length v2, p0

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    if-ge v3, v2, :cond_1

    .line 15
    aget-object v4, p0, v3

    .line 17
    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 20
    move-result-object v4

    .line 21
    :try_start_0
    const-string v5, "SHA-256"

    .line 23
    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 26
    move-result-object v5

    .line 27
    invoke-virtual {v5, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 30
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    .line 33
    move-result-object v4
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_1

    .line 35
    :catch_0
    const-string v4, "BackupUtils"

    .line 37
    const-string v5, "No SHA-256 algorithm found!"

    .line 39
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    move-object v4, v0

    .line 43
    :goto_1
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    add-int/lit8 v3, v3, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    return-object v1
.end method

.method public static signaturesMatch(Ljava/util/ArrayList;Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManagerInternal;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_9

    .line 4
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 6
    if-nez v1, :cond_0

    .line 8
    goto :goto_3

    .line 9
    :cond_0
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 11
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 13
    const/4 v2, 0x1

    .line 14
    and-int/2addr v1, v2

    .line 15
    if-eqz v1, :cond_1

    .line 17
    return v2

    .line 18
    :cond_1
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_2

    .line 24
    return v0

    .line 25
    :cond_2
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 27
    if-nez v1, :cond_3

    .line 29
    const-string p0, "BackupUtils"

    .line 31
    const-string/jumbo p1, "signingInfo is empty, app was either unsigned or the flag PackageManager#GET_SIGNING_CERTIFICATES was not specified"

    .line 34
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return v0

    .line 38
    :cond_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 41
    move-result v3

    .line 42
    if-ne v3, v2, :cond_5

    .line 44
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 47
    move-result-object p0

    .line 48
    check-cast p0, [B

    .line 50
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 52
    check-cast p2, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 54
    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 56
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 59
    move-result-object p2

    .line 60
    invoke-interface {p2, p1}, Lcom/android/server/pm/Computer;->getSigningDetails(Ljava/lang/String;)Landroid/content/pm/SigningDetails;

    .line 63
    move-result-object p1

    .line 64
    if-nez p1, :cond_4

    .line 66
    goto :goto_0

    .line 67
    :cond_4
    invoke-virtual {p1, p0, v2}, Landroid/content/pm/SigningDetails;->hasSha256Certificate([BI)Z

    .line 70
    move-result v0

    .line 71
    :goto_0
    return v0

    .line 72
    :cond_5
    invoke-virtual {v1}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    .line 75
    move-result-object p1

    .line 76
    invoke-static {p1}, Lcom/android/server/backup/BackupUtils;->hashSignatureArray([Landroid/content/pm/Signature;)Ljava/util/ArrayList;

    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 83
    move-result p2

    .line 84
    move v1, v0

    .line 85
    :goto_1
    if-ge v1, v3, :cond_8

    .line 87
    move v4, v0

    .line 88
    :goto_2
    if-ge v4, p2, :cond_7

    .line 90
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 93
    move-result-object v5

    .line 94
    check-cast v5, [B

    .line 96
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 99
    move-result-object v6

    .line 100
    check-cast v6, [B

    .line 102
    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    .line 105
    move-result v5

    .line 106
    if-eqz v5, :cond_6

    .line 108
    add-int/lit8 v1, v1, 0x1

    .line 110
    goto :goto_1

    .line 111
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 113
    goto :goto_2

    .line 114
    :cond_7
    return v0

    .line 115
    :cond_8
    return v2

    .line 116
    :cond_9
    :goto_3
    return v0
.end method
