.class public abstract Lcom/android/server/pm/PackageManagerServiceUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z

.field public static final REMOVE_IF_APEX_PKG:Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda0;

.field public static final REMOVE_IF_NULL_PKG:Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 2
    .line 3
    sput-boolean v0, Lcom/android/server/pm/PackageManagerServiceUtils;->DEBUG:Z

    .line 4
    .line 5
    new-instance v0, Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda0;-><init>(I)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/android/server/pm/PackageManagerServiceUtils;->REMOVE_IF_APEX_PKG:Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda0;

    .line 12
    .line 13
    new-instance v0, Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda0;-><init>(I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/android/server/pm/PackageManagerServiceUtils;->REMOVE_IF_NULL_PKG:Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda0;

    .line 20
    .line 21
    return-void
.end method

.method public static buildVerificationRootHashString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    add-int/lit8 v1, v1, 0x1

    .line 13
    .line 14
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, ":"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->getRootHash(Ljava/lang/String;)[B

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string v2, "0"

    .line 31
    .line 32
    if-nez p0, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-static {p0}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    :goto_0
    if-eqz p1, :cond_4

    .line 46
    .line 47
    array-length p0, p1

    .line 48
    if-nez p0, :cond_1

    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_1
    array-length p0, p1

    .line 52
    add-int/lit8 p0, p0, -0x1

    .line 53
    .line 54
    :goto_1
    if-ltz p0, :cond_3

    .line 55
    .line 56
    aget-object v3, p1, p0

    .line 57
    .line 58
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    add-int/lit8 v4, v4, 0x1

    .line 65
    .line 66
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->getRootHash(Ljava/lang/String;)[B

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    const-string v5, ";"

    .line 75
    .line 76
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    if-nez v3, :cond_2

    .line 86
    .line 87
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_2
    invoke-static {v3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    :goto_2
    add-int/lit8 p0, p0, -0x1

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    return-object p0

    .line 106
    :cond_4
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    return-object p0
.end method

.method public static canJoinSharedUserId(Ljava/lang/String;Landroid/content/pm/SigningDetails;Lcom/android/server/pm/SharedUserSetting;I)Z
    .locals 6

    .line 1
    iget-object v0, p2, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const/4 v3, 0x1

    .line 11
    const/4 v4, 0x0

    .line 12
    if-nez v2, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v2, v4

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    move v2, v3

    .line 24
    :goto_1
    if-eqz v2, :cond_2

    .line 25
    .line 26
    if-eqz p3, :cond_2

    .line 27
    .line 28
    return v3

    .line 29
    :cond_2
    if-nez v2, :cond_4

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Landroid/content/pm/SigningDetails;->hasAncestor(Landroid/content/pm/SigningDetails;)Z

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-eqz v5, :cond_4

    .line 36
    .line 37
    if-ne p3, v1, :cond_3

    .line 38
    .line 39
    return v3

    .line 40
    :cond_3
    return v4

    .line 41
    :cond_4
    if-nez v2, :cond_6

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/content/pm/SigningDetails;->hasAncestor(Landroid/content/pm/SigningDetails;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_6

    .line 48
    .line 49
    if-eqz p3, :cond_5

    .line 50
    .line 51
    return v3

    .line 52
    :cond_5
    return v4

    .line 53
    :cond_6
    if-nez v2, :cond_7

    .line 54
    .line 55
    return v4

    .line 56
    :cond_7
    iget-object p2, p2, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    .line 57
    .line 58
    iget-object p2, p2, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    .line 61
    .line 62
    .line 63
    move-result p3

    .line 64
    if-eqz p3, :cond_9

    .line 65
    .line 66
    invoke-virtual {p2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    :cond_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result p3

    .line 74
    if-eqz p3, :cond_9

    .line 75
    .line 76
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p3

    .line 80
    check-cast p3, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 81
    .line 82
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {p1, v0}, Landroid/content/pm/SigningDetails;->hasAncestor(Landroid/content/pm/SigningDetails;)Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-eqz v2, :cond_8

    .line 91
    .line 92
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-nez v0, :cond_8

    .line 97
    .line 98
    const-string p1, "Package "

    .line 99
    .line 100
    const-string p2, " revoked the sharedUserId capability from the signing key used to sign "

    .line 101
    .line 102
    invoke-static {p1, p0, p2}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    const-string p1, "PackageManager"

    .line 118
    .line 119
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    return v4

    .line 123
    :cond_9
    return v3
.end method

.method public static checkDowngrade(JI[Ljava/lang/String;[ILandroid/content/pm/PackageInfoLite;)V
    .locals 5

    .line 1
    invoke-virtual {p5}, Landroid/content/pm/PackageInfoLite;->getLongVersionCode()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    cmp-long v0, v0, p0

    .line 6
    .line 7
    const-string v1, " is older than current "

    .line 8
    .line 9
    const/16 v2, -0x19

    .line 10
    .line 11
    if-ltz v0, :cond_5

    .line 12
    .line 13
    invoke-virtual {p5}, Landroid/content/pm/PackageInfoLite;->getLongVersionCode()J

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    cmp-long p0, v3, p0

    .line 18
    .line 19
    if-nez p0, :cond_4

    .line 20
    .line 21
    iget p0, p5, Landroid/content/pm/PackageInfoLite;->baseRevisionCode:I

    .line 22
    .line 23
    if-lt p0, p2, :cond_3

    .line 24
    .line 25
    iget-object p0, p5, Landroid/content/pm/PackageInfoLite;->splitNames:[Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-nez p0, :cond_4

    .line 32
    .line 33
    array-length p0, p3

    .line 34
    array-length p1, p4

    .line 35
    if-ne p0, p1, :cond_2

    .line 36
    .line 37
    const/4 p0, 0x0

    .line 38
    :goto_0
    iget-object p1, p5, Landroid/content/pm/PackageInfoLite;->splitNames:[Ljava/lang/String;

    .line 39
    .line 40
    array-length p2, p1

    .line 41
    if-ge p0, p2, :cond_4

    .line 42
    .line 43
    aget-object p1, p1, p0

    .line 44
    .line 45
    invoke-static {p3, p1}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    const/4 v0, -0x1

    .line 50
    if-eq p2, v0, :cond_1

    .line 51
    .line 52
    iget-object v0, p5, Landroid/content/pm/PackageInfoLite;->splitRevisionCodes:[I

    .line 53
    .line 54
    aget v0, v0, p0

    .line 55
    .line 56
    aget v3, p4, p2

    .line 57
    .line 58
    if-lt v0, v3, :cond_0

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_0
    new-instance p3, Lcom/android/server/pm/PackageManagerException;

    .line 62
    .line 63
    const-string v0, "Update split "

    .line 64
    .line 65
    const-string v3, " revision code "

    .line 66
    .line 67
    invoke-static {v0, p1, v3}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iget-object p5, p5, Landroid/content/pm/PackageInfoLite;->splitRevisionCodes:[I

    .line 72
    .line 73
    aget p0, p5, p0

    .line 74
    .line 75
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    aget p0, p4, p2

    .line 82
    .line 83
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-direct {p3, v2, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p3

    .line 94
    :cond_1
    :goto_1
    add-int/lit8 p0, p0, 0x1

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_2
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    .line 98
    .line 99
    const-string p1, "Current split names and the split revision codes are not 1:1 mapping.This indicates that the package info data has been corrupted."

    .line 100
    .line 101
    invoke-direct {p0, v2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw p0

    .line 105
    :cond_3
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    .line 106
    .line 107
    new-instance p1, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const-string p3, "Update base revision code "

    .line 110
    .line 111
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iget p3, p5, Landroid/content/pm/PackageInfoLite;->baseRevisionCode:I

    .line 115
    .line 116
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-direct {p0, v2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw p0

    .line 133
    :cond_4
    return-void

    .line 134
    :cond_5
    new-instance p2, Lcom/android/server/pm/PackageManagerException;

    .line 135
    .line 136
    new-instance p3, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    const-string p4, "Update version code "

    .line 139
    .line 140
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    iget p4, p5, Landroid/content/pm/PackageInfoLite;->versionCode:I

    .line 144
    .line 145
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    invoke-direct {p2, v2, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 159
    .line 160
    .line 161
    throw p2
.end method

.method public static comparePackageSignatures(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/SigningDetails;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 4
    .line 5
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    .line 6
    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->compareSignatures(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 19
    :goto_1
    return p0
.end method

.method public static compareSignatureArrays([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p0, :cond_1

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, -0x1

    .line 8
    :goto_0
    return v0

    .line 9
    :cond_1
    if-nez p1, :cond_2

    .line 10
    .line 11
    const/4 p0, -0x2

    .line 12
    return p0

    .line 13
    :cond_2
    array-length v1, p0

    .line 14
    array-length v2, p1

    .line 15
    const/4 v3, -0x3

    .line 16
    if-eq v1, v2, :cond_3

    .line 17
    .line 18
    return v3

    .line 19
    :cond_3
    array-length v1, p0

    .line 20
    const/4 v2, 0x0

    .line 21
    if-ne v1, v0, :cond_5

    .line 22
    .line 23
    aget-object p0, p0, v2

    .line 24
    .line 25
    aget-object p1, p1, v2

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_4

    .line 32
    .line 33
    move v3, v2

    .line 34
    :cond_4
    return v3

    .line 35
    :cond_5
    new-instance v0, Landroid/util/ArraySet;

    .line 36
    .line 37
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 38
    .line 39
    .line 40
    array-length v1, p0

    .line 41
    move v4, v2

    .line 42
    :goto_1
    if-ge v4, v1, :cond_6

    .line 43
    .line 44
    aget-object v5, p0, v4

    .line 45
    .line 46
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    add-int/lit8 v4, v4, 0x1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_6
    new-instance p0, Landroid/util/ArraySet;

    .line 53
    .line 54
    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 55
    .line 56
    .line 57
    array-length v1, p1

    .line 58
    move v4, v2

    .line 59
    :goto_2
    if-ge v4, v1, :cond_7

    .line 60
    .line 61
    aget-object v5, p1, v4

    .line 62
    .line 63
    invoke-virtual {p0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    add-int/lit8 v4, v4, 0x1

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_7
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    if-eqz p0, :cond_8

    .line 74
    .line 75
    return v2

    .line 76
    :cond_8
    return v3
.end method

.method public static compareSignatures(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->compareSignatureArrays([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static copyFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p2}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v1, "Copying "

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " to "

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "PackageManager"

    .line 30
    .line 31
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    new-instance v0, Ljava/io/File;

    .line 35
    .line 36
    invoke-direct {v0, p0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    sget p2, Landroid/system/OsConstants;->O_RDWR:I

    .line 44
    .line 45
    sget v1, Landroid/system/OsConstants;->O_CREAT:I

    .line 46
    .line 47
    or-int/2addr p2, v1

    .line 48
    const/16 v1, 0x1a4

    .line 49
    .line 50
    invoke-static {p0, p2, v1}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-static {p2, v1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 59
    .line 60
    .line 61
    const/4 p2, 0x0

    .line 62
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    .line 63
    .line 64
    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 65
    .line 66
    .line 67
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {p1, p0}, Landroid/os/FileUtils;->copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    .line 73
    .line 74
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    move-object p2, v0

    .line 80
    goto :goto_0

    .line 81
    :catchall_1
    move-exception p0

    .line 82
    :goto_0
    invoke-static {p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 83
    .line 84
    .line 85
    throw p0

    .line 86
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 87
    .line 88
    const-string p1, "Invalid filename: "

    .line 89
    .line 90
    invoke-static {p1, p2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p0
.end method

.method public static copyPackage(Ljava/io/File;Ljava/lang/String;)I
    .locals 6

    .line 1
    const-string v0, "PackageManager"

    .line 2
    .line 3
    const-string v1, "Failed to parse package at "

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p0, -0x3

    .line 8
    return p0

    .line 9
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/File;

    .line 10
    .line 11
    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v3}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-static {v3, v2, v4}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    return p0

    .line 45
    :catch_0
    move-exception p0

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Landroid/content/pm/parsing/PackageLite;

    .line 52
    .line 53
    invoke-virtual {v1}, Landroid/content/pm/parsing/PackageLite;->getBaseApkPath()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    const-string v3, "base.apk"

    .line 58
    .line 59
    invoke-static {p0, v2, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->copyFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-nez v2, :cond_2

    .line 71
    .line 72
    :goto_0
    invoke-virtual {v1}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    array-length v2, v2

    .line 77
    if-ge v4, v2, :cond_2

    .line 78
    .line 79
    invoke-virtual {v1}, Landroid/content/pm/parsing/PackageLite;->getSplitApkPaths()[Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    aget-object v2, v2, v4

    .line 84
    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string/jumbo v5, "split_"

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    aget-object v5, v5, v4

    .line 101
    .line 102
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v5, ".apk"

    .line 106
    .line 107
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-static {p0, v2, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->copyFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .line 116
    .line 117
    add-int/lit8 v4, v4, 0x1

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_2
    const/4 p0, 0x1

    .line 121
    return p0

    .line 122
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    const-string v2, "Failed to copy package at "

    .line 125
    .line 126
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string p1, ": "

    .line 133
    .line 134
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    const/4 p0, -0x4

    .line 148
    return p0
.end method

.method public static decompressFile(Ljava/io/File;Ljava/io/File;)I
    .locals 6

    .line 1
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 2
    .line 3
    const-string v1, ", dst: "

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "Decompress file; src: "

    .line 10
    .line 11
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v2, "PackageManager"

    .line 36
    .line 37
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    :cond_0
    new-instance v0, Landroid/util/AtomicFile;

    .line 41
    .line 42
    invoke-direct {v0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 43
    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    :try_start_0
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    .line 47
    .line 48
    new-instance v4, Ljava/io/FileInputStream;

    .line 49
    .line 50
    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 51
    .line 52
    .line 53
    invoke-direct {v3, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    :try_start_1
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-static {v3, v2}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    const/16 v5, 0x1a4

    .line 71
    .line 72
    invoke-static {v4, v5}, Landroid/system/Os;->fchmod(Ljava/io/FileDescriptor;I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    .line 77
    .line 78
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 79
    .line 80
    .line 81
    const/4 p0, 0x1

    .line 82
    return p0

    .line 83
    :catchall_0
    move-exception v4

    .line 84
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catchall_1
    move-exception v3

    .line 89
    :try_start_4
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 90
    .line 91
    .line 92
    :goto_0
    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 93
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string v4, "Failed to decompress file; src: "

    .line 96
    .line 97
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    const/4 p1, 0x6

    .line 122
    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 126
    .line 127
    .line 128
    const/16 p0, -0x6e

    .line 129
    .line 130
    return p0
.end method

.method public static dumpCriticalInfo(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getSettingsProblemFile()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    const-wide/32 v3, 0x2dc6c0

    .line 10
    .line 11
    .line 12
    sub-long/2addr v1, v3

    .line 13
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    .line 14
    .line 15
    new-instance v4, Ljava/io/FileReader;

    .line 16
    .line 17
    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    const-wide/16 v4, 0x0

    .line 24
    .line 25
    cmp-long v0, v1, v4

    .line 26
    .line 27
    if-lez v0, :cond_0

    .line 28
    .line 29
    :try_start_1
    invoke-virtual {v3, v1, v2}, Ljava/io/BufferedReader;->skip(J)J

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    const-string v1, "ignored: updated version"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    if-eqz p1, :cond_2

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_2
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_3

    .line 63
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :catchall_1
    move-exception p1

    .line 68
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    :goto_2
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 72
    :catch_0
    :goto_3
    return-void
.end method

.method public static enforceShellRestriction(Lcom/android/server/pm/UserManagerInternal;II)V
    .locals 1

    .line 1
    const/16 v0, 0x7d0

    .line 2
    .line 3
    if-ne p1, v0, :cond_2

    .line 4
    .line 5
    if-ltz p2, :cond_1

    .line 6
    .line 7
    const-string/jumbo p1, "no_debugging_features"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerInternal;->hasUserRestriction(Ljava/lang/String;I)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 18
    .line 19
    const-string p1, "Shell does not have permission to access user "

    .line 20
    .line 21
    invoke-static {p2, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p0

    .line 29
    :cond_1
    :goto_0
    if-gez p2, :cond_2

    .line 30
    .line 31
    const-string p0, "Unable to check shell permission for user "

    .line 32
    .line 33
    const-string p1, "\n\t"

    .line 34
    .line 35
    invoke-static {p2, p0, p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const/4 p1, 0x3

    .line 40
    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    const-string p1, "PackageManager"

    .line 52
    .line 53
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    :cond_2
    return-void
.end method

.method public static enforceSystemOrPhoneCaller(ILjava/lang/String;)V
    .locals 3

    .line 1
    const/16 v0, 0x3e9

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x3e8

    .line 6
    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    .line 11
    .line 12
    const-string v1, "Cannot call "

    .line 13
    .line 14
    const-string v2, " from UID "

    .line 15
    .line 16
    invoke-static {p0, v1, p1, v2}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0

    .line 24
    :cond_1
    :goto_0
    return-void
.end method

.method public static enforceSystemOrRoot(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRoot(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method public static extractAppMetadataFromApk(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;Z)Z
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return v1

    .line 6
    :cond_0
    new-instance v2, Ljava/io/File;

    .line 7
    .line 8
    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    return v0

    .line 18
    :cond_1
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProperties()Ljava/util/Map;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v3, "android.content.PROPERTY_ANDROID_SAFETY_LABEL"

    .line 23
    .line 24
    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-nez v4, :cond_2

    .line 29
    .line 30
    return v1

    .line 31
    :cond_2
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Landroid/content/pm/PackageManager$Property;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$Property;->isResourceId()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-nez v3, :cond_3

    .line 42
    .line 43
    return v1

    .line 44
    :cond_3
    const-string v3, "PackageManager"

    .line 45
    .line 46
    if-eqz p2, :cond_4

    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-nez v4, :cond_4

    .line 57
    .line 58
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    const/16 v5, 0x1c0

    .line 63
    .line 64
    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerServiceUtils;->makeDirRecursive(Ljava/io/File;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catch_0
    move-exception p1

    .line 69
    new-instance p2, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v0, "Failed to create app metadata dir for package "

    .line 72
    .line 73
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string p0, ": "

    .line 84
    .line 85
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    return v1

    .line 103
    :cond_4
    :goto_0
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplits()Ljava/util/List;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    new-instance v4, Landroid/content/res/AssetManager$Builder;

    .line 108
    .line 109
    invoke-direct {v4}, Landroid/content/res/AssetManager$Builder;-><init>()V

    .line 110
    .line 111
    .line 112
    move v5, v1

    .line 113
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    if-ge v5, v6, :cond_5

    .line 118
    .line 119
    :try_start_1
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    check-cast v6, Lcom/android/server/pm/pkg/AndroidPackageSplit;

    .line 124
    .line 125
    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackageSplit;->getPath()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    invoke-static {v6}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;)Landroid/content/res/ApkAssets;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    invoke-virtual {v4, v6}, Landroid/content/res/AssetManager$Builder;->addApkAssets(Landroid/content/res/ApkAssets;)Landroid/content/res/AssetManager$Builder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 134
    .line 135
    .line 136
    goto :goto_2

    .line 137
    :catch_1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    const-string v7, "Failed to load resources from APK "

    .line 140
    .line 141
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v7

    .line 148
    check-cast v7, Lcom/android/server/pm/pkg/AndroidPackageSplit;

    .line 149
    .line 150
    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackageSplit;->getPath()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v7

    .line 154
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .line 163
    .line 164
    :goto_2
    add-int/2addr v5, v0

    .line 165
    goto :goto_1

    .line 166
    :cond_5
    invoke-virtual {v4}, Landroid/content/res/AssetManager$Builder;->build()Landroid/content/res/AssetManager;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    new-instance v4, Landroid/util/DisplayMetrics;

    .line 171
    .line 172
    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v4}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 176
    .line 177
    .line 178
    new-instance v5, Landroid/content/res/Resources;

    .line 179
    .line 180
    const/4 v6, 0x0

    .line 181
    invoke-direct {v5, p0, v4, v6}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 182
    .line 183
    .line 184
    new-instance p0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 185
    .line 186
    invoke-direct {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 187
    .line 188
    .line 189
    :try_start_2
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$Property;->getResourceId()I

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 194
    .line 195
    .line 196
    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 197
    :try_start_3
    new-instance v1, Ljava/io/FileOutputStream;

    .line 198
    .line 199
    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 200
    .line 201
    .line 202
    if-eqz p2, :cond_6

    .line 203
    .line 204
    :try_start_4
    invoke-static {p1, v1}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 205
    .line 206
    .line 207
    goto :goto_3

    .line 208
    :catchall_0
    move-exception p2

    .line 209
    goto :goto_6

    .line 210
    :cond_6
    sget-object p2, Lcom/android/server/pm/PackageInstallerSession;->EMPTY_CHILD_SESSION_ARRAY:[I

    .line 211
    .line 212
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 213
    .line 214
    .line 215
    move-result-wide v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 216
    :try_start_5
    const-string/jumbo p2, "package_manager_service"

    .line 217
    .line 218
    .line 219
    const-string v6, "app_metadata_byte_size_limit"

    .line 220
    .line 221
    const-wide/16 v7, 0x7d00

    .line 222
    .line 223
    invoke-static {p2, v6, v7, v8}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 224
    .line 225
    .line 226
    move-result-wide v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 227
    :try_start_6
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 228
    .line 229
    .line 230
    new-instance p2, Landroid/os/CancellationSignal;

    .line 231
    .line 232
    invoke-direct {p2}, Landroid/os/CancellationSignal;-><init>()V

    .line 233
    .line 234
    .line 235
    new-instance v4, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    .line 236
    .line 237
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 238
    .line 239
    .line 240
    new-instance v5, Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda2;

    .line 241
    .line 242
    invoke-direct {v5, v6, v7, p0, p2}, Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda2;-><init>(JLjava/util/concurrent/atomic/AtomicBoolean;Landroid/os/CancellationSignal;)V

    .line 243
    .line 244
    .line 245
    invoke-static {p1, v1, p2, v4, v5}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J

    .line 246
    .line 247
    .line 248
    :goto_3
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p2

    .line 252
    const/16 v4, 0x1a0

    .line 253
    .line 254
    invoke-static {p2, v4}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 255
    .line 256
    .line 257
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 258
    .line 259
    .line 260
    if-eqz p1, :cond_7

    .line 261
    .line 262
    :try_start_8
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 263
    .line 264
    .line 265
    goto :goto_4

    .line 266
    :catchall_1
    move-exception p1

    .line 267
    goto :goto_c

    .line 268
    :catch_2
    move-exception p1

    .line 269
    goto :goto_a

    .line 270
    :cond_7
    :goto_4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 271
    .line 272
    .line 273
    move-result p1

    .line 274
    if-eqz p1, :cond_9

    .line 275
    .line 276
    :goto_5
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 277
    .line 278
    .line 279
    goto :goto_b

    .line 280
    :catchall_2
    move-exception p2

    .line 281
    goto :goto_8

    .line 282
    :catchall_3
    move-exception p2

    .line 283
    :try_start_9
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 284
    .line 285
    .line 286
    throw p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 287
    :goto_6
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 288
    .line 289
    .line 290
    goto :goto_7

    .line 291
    :catchall_4
    move-exception v1

    .line 292
    :try_start_b
    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 293
    .line 294
    .line 295
    :goto_7
    throw p2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 296
    :goto_8
    if-eqz p1, :cond_8

    .line 297
    .line 298
    :try_start_c
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 299
    .line 300
    .line 301
    goto :goto_9

    .line 302
    :catchall_5
    move-exception p1

    .line 303
    :try_start_d
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 304
    .line 305
    .line 306
    :cond_8
    :goto_9
    throw p2
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 307
    :goto_a
    :try_start_e
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object p1

    .line 311
    invoke-static {v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    .line 313
    .line 314
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 315
    .line 316
    .line 317
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 318
    .line 319
    .line 320
    move-result p1

    .line 321
    if-eqz p1, :cond_9

    .line 322
    .line 323
    goto :goto_5

    .line 324
    :cond_9
    :goto_b
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 325
    .line 326
    .line 327
    move-result p0

    .line 328
    xor-int/2addr p0, v0

    .line 329
    return p0

    .line 330
    :goto_c
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 331
    .line 332
    .line 333
    move-result p0

    .line 334
    if-eqz p0, :cond_a

    .line 335
    .line 336
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 337
    .line 338
    .line 339
    :cond_a
    throw p1
.end method

.method public static getCompressedFiles(Ljava/lang/String;)[Ljava/io/File;
    .locals 6

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "-Stub"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x0

    .line 17
    if-ltz v2, :cond_3

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    add-int/lit8 v5, v2, 0x5

    .line 24
    .line 25
    if-eq v4, v5, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v4, "PackageManager"

    .line 33
    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    const-string v0, "Unable to determine stub parent dir for codePath: "

    .line 37
    .line 38
    invoke-static {v0, p0, v4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-object v3

    .line 42
    :cond_1
    new-instance v3, Ljava/io/File;

    .line 43
    .line 44
    const/4 v5, 0x0

    .line 45
    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    new-instance v0, Lcom/android/server/pm/PackageManagerServiceUtils$1;

    .line 53
    .line 54
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 62
    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    array-length v1, v0

    .line 68
    if-lez v1, :cond_2

    .line 69
    .line 70
    const-string v1, "getCompressedFiles["

    .line 71
    .line 72
    const-string v2, "]: "

    .line 73
    .line 74
    invoke-static {v1, p0, v2}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-static {p0, v1, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :cond_2
    return-object v0

    .line 86
    :cond_3
    :goto_0
    return-object v3
.end method

.method public static getLastModifiedTime(Lcom/android/server/pm/pkg/AndroidPackage;)J
    .locals 5

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    return-wide v0

    .line 21
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 22
    .line 23
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    array-length v2, v2

    .line 39
    add-int/lit8 v2, v2, -0x1

    .line 40
    .line 41
    :goto_0
    if-ltz v2, :cond_1

    .line 42
    .line 43
    new-instance v3, Ljava/io/File;

    .line 44
    .line 45
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    aget-object v4, v4, v2

    .line 50
    .line 51
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    .line 55
    .line 56
    .line 57
    move-result-wide v3

    .line 58
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 59
    .line 60
    .line 61
    move-result-wide v0

    .line 62
    add-int/lit8 v2, v2, -0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    return-wide v0
.end method

.method public static getMinimalPackageInfo(Landroid/content/Context;Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/pm/PackageInfoLite;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/pm/PackageInfoLite;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, -0x2

    .line 7
    if-eqz p2, :cond_3

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_2

    .line 12
    .line 13
    :cond_0
    new-instance v2, Ljava/io/File;

    .line 14
    .line 15
    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sget-object p2, Lcom/android/server/pm/PackageInstallerSession;->EMPTY_CHILD_SESSION_ARRAY:[I

    .line 19
    .line 20
    const/high16 p2, 0x8000000

    .line 21
    .line 22
    and-int/2addr p2, p3

    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    const-wide/16 v1, 0x0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    :try_start_0
    invoke-static {p1, p4}, Lcom/android/internal/content/InstallLocationUtils;->calculateInstalledSize(Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;)J

    .line 29
    .line 30
    .line 31
    move-result-wide v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 32
    :goto_0
    new-instance p2, Landroid/content/pm/PackageInstaller$SessionParams;

    .line 33
    .line 34
    const/4 p4, -0x1

    .line 35
    invoke-direct {p2, p4}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getPackageName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p4

    .line 42
    iput-object p4, p2, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getInstallLocation()I

    .line 45
    .line 46
    .line 47
    move-result p4

    .line 48
    iput p4, p2, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    .line 49
    .line 50
    iput-wide v1, p2, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    .line 51
    .line 52
    iput p3, p2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 53
    .line 54
    :try_start_1
    invoke-static {p0, p2}, Lcom/android/internal/content/InstallLocationUtils;->resolveInstallLocation(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)I

    .line 55
    .line 56
    .line 57
    move-result p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 58
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getPackageName()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    iput-object p2, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    iput-object p2, v0, Landroid/content/pm/PackageInfoLite;->splitNames:[Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getVersionCode()I

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    iput p2, v0, Landroid/content/pm/PackageInfoLite;->versionCode:I

    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getVersionCodeMajor()I

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    iput p2, v0, Landroid/content/pm/PackageInfoLite;->versionCodeMajor:I

    .line 81
    .line 82
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getBaseRevisionCode()I

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    iput p2, v0, Landroid/content/pm/PackageInfoLite;->baseRevisionCode:I

    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getSplitRevisionCodes()[I

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    iput-object p2, v0, Landroid/content/pm/PackageInfoLite;->splitRevisionCodes:[I

    .line 93
    .line 94
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getInstallLocation()I

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    iput p2, v0, Landroid/content/pm/PackageInfoLite;->installLocation:I

    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->getVerifiers()[Landroid/content/pm/VerifierInfo;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    iput-object p2, v0, Landroid/content/pm/PackageInfoLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    .line 105
    .line 106
    iput p0, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 107
    .line 108
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->isMultiArch()Z

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    iput-boolean p0, v0, Landroid/content/pm/PackageInfoLite;->multiArch:Z

    .line 113
    .line 114
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->isDebuggable()Z

    .line 115
    .line 116
    .line 117
    move-result p0

    .line 118
    iput-boolean p0, v0, Landroid/content/pm/PackageInfoLite;->debuggable:Z

    .line 119
    .line 120
    invoke-virtual {p1}, Landroid/content/pm/parsing/PackageLite;->isIsSdkLibrary()Z

    .line 121
    .line 122
    .line 123
    move-result p0

    .line 124
    iput-boolean p0, v0, Landroid/content/pm/PackageInfoLite;->isSdkLibrary:Z

    .line 125
    .line 126
    return-object v0

    .line 127
    :catch_0
    move-exception p0

    .line 128
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 129
    .line 130
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 131
    .line 132
    .line 133
    throw p1

    .line 134
    :catch_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 135
    .line 136
    .line 137
    move-result p0

    .line 138
    if-nez p0, :cond_2

    .line 139
    .line 140
    const/4 p0, -0x6

    .line 141
    iput p0, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_2
    iput v1, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 145
    .line 146
    :goto_1
    return-object v0

    .line 147
    :cond_3
    :goto_2
    const-string p0, "Invalid package file "

    .line 148
    .line 149
    const-string p1, "PackageManager"

    .line 150
    .line 151
    invoke-static {p0, p2, p1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    iput v1, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 155
    .line 156
    return-object v0
.end method

.method public static getNextCodePath(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 5

    .line 1
    new-instance v0, Ljava/security/SecureRandom;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x10

    .line 7
    .line 8
    new-array v1, v1, [B

    .line 9
    .line 10
    :cond_0
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 11
    .line 12
    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string/jumbo v3, "~~"

    .line 16
    .line 17
    .line 18
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/16 v3, 0xa

    .line 22
    .line 23
    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    new-instance v4, Ljava/io/File;

    .line 35
    .line 36
    invoke-direct {v4, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_0

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 46
    .line 47
    .line 48
    new-instance p0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const/16 v0, 0x2d

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    new-instance v1, Ljava/io/File;

    .line 73
    .line 74
    invoke-direct {v1, v4, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    sget-boolean p0, Lcom/android/server/pm/PackageManagerServiceUtils;->DEBUG:Z

    .line 78
    .line 79
    if-eqz p0, :cond_3

    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    const/4 v2, -0x1

    .line 90
    if-eq v0, v2, :cond_2

    .line 91
    .line 92
    const/4 v2, 0x0

    .line 93
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    if-eqz p0, :cond_1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    .line 105
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string v2, "codepath is off: "

    .line 109
    .line 110
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v1, " ("

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string p1, ")"

    .line 129
    .line 130
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw p0

    .line 141
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 142
    .line 143
    const-string p1, "Not a valid package folder name"

    .line 144
    .line 145
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw p0

    .line 149
    :cond_3
    :goto_0
    return-object v1
.end method

.method public static getPackageManagerLocal()Lcom/android/server/pm/PackageManagerLocal;
    .locals 2

    .line 1
    :try_start_0
    const-class v0, Lcom/android/server/pm/PackageManagerLocal;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/LocalManagerRegistry;->getManagerOrThrow(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/pm/PackageManagerLocal;
    :try_end_0
    .catch Lcom/android/server/LocalManagerRegistry$ManagerNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    new-instance v1, Ljava/lang/RuntimeException;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    throw v1
.end method

.method public static getRootHash(Ljava/lang/String;)[B
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Landroid/os/incremental/IncrementalManager;->unsafeGetFileSignature(Ljava/lang/String;)[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-static {v0}, Landroid/os/incremental/V4Signature;->readFrom([B)Landroid/os/incremental/V4Signature;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Landroid/os/incremental/V4Signature;->hashingInfo:[B

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-static {v0}, Landroid/os/incremental/V4Signature$HashingInfo;->fromByteArray([B)Landroid/os/incremental/V4Signature$HashingInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, v0, Landroid/os/incremental/V4Signature$HashingInfo;->rawRootHash:[B

    .line 20
    .line 21
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    new-instance v1, Ljava/io/File;

    .line 28
    .line 29
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object p0, v0, Landroid/os/incremental/V4Signature$HashingInfo;->rawRootHash:[B

    .line 33
    .line 34
    invoke-static {v1, p0}, Lcom/android/server/pm/ApkChecksums;->verityHashForFile(Ljava/io/File;[B)[B

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :catch_0
    move-exception p0

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    new-instance p0, Ljava/io/IOException;

    .line 42
    .line 43
    const-string v0, "Root has not present"

    .line 44
    .line 45
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p0

    .line 49
    :cond_1
    new-instance p0, Ljava/io/IOException;

    .line 50
    .line 51
    const-string v0, "Hashing info not present"

    .line 52
    .line 53
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p0

    .line 57
    :cond_2
    new-instance p0, Ljava/io/IOException;

    .line 58
    .line 59
    const-string v0, "File signature not present"

    .line 60
    .line 61
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    const-string v0, "PackageManager"

    .line 66
    .line 67
    const-string v1, "Could not obtain verity root hash"

    .line 68
    .line 69
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    .line 71
    .line 72
    const/4 p0, 0x0

    .line 73
    return-object p0
.end method

.method public static getSettingsProblemFile()Ljava/io/File;
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/io/File;

    .line 6
    .line 7
    const-string/jumbo v2, "system"

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Ljava/io/File;

    .line 14
    .line 15
    const-string/jumbo v2, "uiderrors.txt"

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public static isDowngradePermitted(IZ)Z
    .locals 3

    .line 1
    and-int/lit16 v0, p0, 0x80

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/high16 p1, 0x100000

    .line 15
    .line 16
    and-int/2addr p0, p1

    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    move v1, v2

    .line 20
    :cond_1
    return v1

    .line 21
    :cond_2
    :goto_0
    return v2

    .line 22
    :cond_3
    return v1
.end method

.method public static isInstalledByAdb(Ljava/lang/String;)Z
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    const-string v0, "com.android.shell"

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 15
    :goto_1
    return p0
.end method

.method public static isRootOrShell(I)Z
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    const/16 v0, 0x7d0

    .line 4
    .line 5
    if-ne p0, v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    goto :goto_1

    .line 10
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 11
    :goto_1
    return p0
.end method

.method public static isSystemOrRoot(I)Z
    .locals 1

    .line 1
    const/16 v0, 0x3e8

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    goto :goto_1

    .line 10
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 11
    :goto_1
    return p0
.end method

.method public static isSystemOrRootOrShell(I)Z
    .locals 1

    .line 1
    const/16 v0, 0x3e8

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    const/16 v0, 0x7d0

    .line 8
    .line 9
    if-ne p0, v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 15
    :goto_1
    return p0
.end method

.method public static linkFilesAndSetModes(Lcom/android/server/pm/Installer;Ljava/lang/String;Ljava/io/File;Ljava/io/File;[Ljava/io/File;I)V
    .locals 16

    .line 1
    move-object/from16 v1, p4

    .line 2
    .line 3
    const-string v2, "> to <"

    .line 4
    .line 5
    array-length v3, v1

    .line 6
    const/4 v0, 0x0

    .line 7
    move v4, v0

    .line 8
    :goto_0
    if-ge v4, v3, :cond_4

    .line 9
    .line 10
    aget-object v0, v1, v4

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v5, Ljava/io/File;

    .line 17
    .line 18
    move-object/from16 v6, p2

    .line 19
    .line 20
    invoke-direct {v5, v6, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v7, Ljava/io/File;

    .line 24
    .line 25
    move-object/from16 v8, p3

    .line 26
    .line 27
    invoke-direct {v7, v8, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 31
    .line 32
    .line 33
    move-result v9

    .line 34
    sget-boolean v10, Lcom/android/server/pm/PackageManagerServiceUtils;->DEBUG:Z

    .line 35
    .line 36
    const-string v11, ">"

    .line 37
    .line 38
    const-string v12, "PackageManager"

    .line 39
    .line 40
    if-eqz v9, :cond_1

    .line 41
    .line 42
    if-eqz v10, :cond_0

    .line 43
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v5, "Skipping existing linked file <"

    .line 47
    .line 48
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    :cond_0
    move-object/from16 v14, p0

    .line 65
    .line 66
    move-object/from16 v15, p1

    .line 67
    .line 68
    move/from16 v9, p5

    .line 69
    .line 70
    goto/16 :goto_5

    .line 71
    .line 72
    :cond_1
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v9

    .line 76
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v13
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_3

    .line 80
    move-object/from16 v14, p0

    .line 81
    .line 82
    move-object/from16 v15, p1

    .line 83
    .line 84
    :try_start_1
    invoke-virtual {v14, v15, v0, v9, v13}, Lcom/android/server/pm/Installer;->linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    if-eqz v10, :cond_2

    .line 88
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string v9, "Linked <"

    .line 95
    .line 96
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :catch_0
    move-exception v0

    .line 120
    :goto_1
    move/from16 v9, p5

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_2
    :goto_2
    :try_start_2
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_2

    .line 127
    move/from16 v9, p5

    .line 128
    .line 129
    :try_start_3
    invoke-static {v0, v9}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_1

    .line 130
    .line 131
    .line 132
    invoke-static {v7}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-nez v0, :cond_3

    .line 137
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    const-string v5, "Failed to restorecon for linked file <"

    .line 141
    .line 142
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    goto :goto_5

    .line 159
    :catch_1
    move-exception v0

    .line 160
    goto :goto_3

    .line 161
    :catch_2
    move-exception v0

    .line 162
    move/from16 v9, p5

    .line 163
    .line 164
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    const-string v10, "Failed to set mode for linked file <"

    .line 167
    .line 168
    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    invoke-static {v12, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    .line 183
    .line 184
    goto :goto_5

    .line 185
    :catch_3
    move-exception v0

    .line 186
    move-object/from16 v14, p0

    .line 187
    .line 188
    move-object/from16 v15, p1

    .line 189
    .line 190
    goto :goto_1

    .line 191
    :goto_4
    new-instance v10, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    const-string v13, "Failed to link native library <"

    .line 194
    .line 195
    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v5

    .line 214
    invoke-static {v12, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 215
    .line 216
    .line 217
    :cond_3
    :goto_5
    add-int/lit8 v4, v4, 0x1

    .line 218
    .line 219
    goto/16 :goto_0

    .line 220
    .line 221
    :cond_4
    return-void
.end method

.method public static linkFilesToOldDirs(Lcom/android/server/pm/Installer;Ljava/lang/String;Ljava/io/File;Ljava/util/Set;)V
    .locals 8

    .line 1
    if-eqz p3, :cond_7

    .line 2
    .line 3
    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_2

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_7

    .line 27
    .line 28
    array-length v1, v0

    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    array-length v2, v0

    .line 38
    const/4 v3, 0x0

    .line 39
    move v4, v3

    .line 40
    :goto_0
    if-ge v4, v2, :cond_4

    .line 41
    .line 42
    aget-object v5, v0, v4

    .line 43
    .line 44
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    if-nez v6, :cond_3

    .line 49
    .line 50
    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    const-string v7, ".apk"

    .line 55
    .line 56
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    if-eqz v6, :cond_3

    .line 61
    .line 62
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_5

    .line 73
    .line 74
    return-void

    .line 75
    :cond_5
    new-array v0, v3, [Ljava/io/File;

    .line 76
    .line 77
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, [Ljava/io/File;

    .line 82
    .line 83
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 84
    .line 85
    .line 86
    move-result-object p3

    .line 87
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_7

    .line 92
    .line 93
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    move-object v7, v1

    .line 98
    check-cast v7, Ljava/io/File;

    .line 99
    .line 100
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-nez v1, :cond_6

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_6
    const/16 v6, 0x1a4

    .line 108
    .line 109
    move-object v1, p0

    .line 110
    move-object v2, p1

    .line 111
    move-object v3, p2

    .line 112
    move-object v4, v7

    .line 113
    move-object v5, v0

    .line 114
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->linkFilesAndSetModes(Lcom/android/server/pm/Installer;Ljava/lang/String;Ljava/io/File;Ljava/io/File;[Ljava/io/File;I)V

    .line 115
    .line 116
    .line 117
    const-string v1, "lib"

    .line 118
    .line 119
    invoke-static {p0, p1, p2, v7, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->linkNativeLibraries(Lcom/android/server/pm/Installer;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    const-string v1, "lib64"

    .line 123
    .line 124
    invoke-static {p0, p1, p2, v7, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->linkNativeLibraries(Lcom/android/server/pm/Installer;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_7
    :goto_2
    return-void
.end method

.method public static linkNativeLibraries(Lcom/android/server/pm/Installer;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .locals 11

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p2, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance p2, Ljava/io/File;

    .line 14
    .line 15
    invoke-direct {p2, p3, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 19
    .line 20
    .line 21
    move-result p3

    .line 22
    const-string p4, ">"

    .line 23
    .line 24
    const-string v1, "PackageManager"

    .line 25
    .line 26
    if-nez p3, :cond_1

    .line 27
    .line 28
    :try_start_0
    invoke-static {p2}, Lcom/android/internal/content/NativeLibraryHelper;->createNativeLibrarySubdir(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p0

    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string p3, "Failed to create native library dir at <"

    .line 36
    .line 37
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 55
    .line 56
    .line 57
    move-result-object p3

    .line 58
    if-nez p3, :cond_2

    .line 59
    .line 60
    return-void

    .line 61
    :cond_2
    array-length v2, p3

    .line 62
    const/4 v3, 0x0

    .line 63
    :goto_1
    if-ge v3, v2, :cond_6

    .line 64
    .line 65
    aget-object v4, p3, v3

    .line 66
    .line 67
    new-instance v8, Ljava/io/File;

    .line 68
    .line 69
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    invoke-direct {v8, p2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    if-nez v5, :cond_3

    .line 81
    .line 82
    :try_start_1
    invoke-static {v8}, Lcom/android/internal/content/NativeLibraryHelper;->createNativeLibrarySubdir(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :catch_1
    move-exception v4

    .line 87
    new-instance v5, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string v6, "Failed to create native library subdir at <"

    .line 90
    .line 91
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    invoke-static {v1, v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_3
    :goto_2
    new-instance v7, Ljava/io/File;

    .line 109
    .line 110
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    invoke-direct {v7, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 118
    .line 119
    .line 120
    move-result-object v9

    .line 121
    if-eqz v9, :cond_5

    .line 122
    .line 123
    array-length v4, v9

    .line 124
    if-nez v4, :cond_4

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_4
    const/16 v10, 0x1ed

    .line 128
    .line 129
    move-object v5, p0

    .line 130
    move-object v6, p1

    .line 131
    invoke-static/range {v5 .. v10}, Lcom/android/server/pm/PackageManagerServiceUtils;->linkFilesAndSetModes(Lcom/android/server/pm/Installer;Ljava/lang/String;Ljava/io/File;Ljava/io/File;[Ljava/io/File;I)V

    .line 132
    .line 133
    .line 134
    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_6
    return-void
.end method

.method public static logCriticalInfo(ILjava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "PackageManager"

    .line 2
    .line 3
    invoke-static {p0, v0, p1}, Landroid/util/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    const/16 p0, 0xc30

    .line 7
    .line 8
    invoke-static {p0, p1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getSettingsProblemFile()Ljava/io/File;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    new-instance v0, Ljava/io/FileOutputStream;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-direct {v0, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 19
    .line 20
    .line 21
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    .line 22
    .line 23
    invoke-direct {v1, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 24
    .line 25
    .line 26
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/text/SimpleDateFormat;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v2, Ljava/util/Date;

    .line 32
    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 34
    .line 35
    .line 36
    move-result-wide v3

    .line 37
    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v0, ": "

    .line 53
    .line 54
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    const/16 p1, 0x1fc

    .line 75
    .line 76
    const/4 v0, -0x1

    .line 77
    invoke-static {p0, p1, v0, v0}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    .line 80
    :catch_0
    return-void
.end method

.method public static makeDirRecursive(Ljava/io/File;I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/nio/file/Path;->getNameCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    :goto_0
    if-gt v1, v0, :cond_1

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-interface {p0, v2, v1}, Ljava/nio/file/Path;->subpath(II)Ljava/nio/file/Path;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-interface {v2}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-static {v3, p1}, Landroid/system/Os;->mkdir(Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {v2, p1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    return-void
.end method

.method public static matchSignaturesCompat(Ljava/lang/String;Lcom/android/server/pm/PackageSignatures;Landroid/content/pm/SigningDetails;)Z
    .locals 11

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    array-length v2, v1

    .line 13
    const/4 v3, 0x0

    .line 14
    move v4, v3

    .line 15
    :goto_0
    if-ge v4, v2, :cond_0

    .line 16
    .line 17
    aget-object v5, v1, v4

    .line 18
    .line 19
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    add-int/lit8 v4, v4, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v1, Landroid/util/ArraySet;

    .line 26
    .line 27
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    array-length v4, v2

    .line 35
    move v5, v3

    .line 36
    :goto_1
    if-ge v5, v4, :cond_2

    .line 37
    .line 38
    aget-object v6, v2, v5

    .line 39
    .line 40
    :try_start_0
    invoke-virtual {v6}, Landroid/content/pm/Signature;->getChainSignatures()[Landroid/content/pm/Signature;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    array-length v8, v7

    .line 45
    move v9, v3

    .line 46
    :goto_2
    if-ge v9, v8, :cond_1

    .line 47
    .line 48
    aget-object v10, v7, v9

    .line 49
    .line 50
    invoke-virtual {v1, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    add-int/lit8 v9, v9, 0x1

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :catch_0
    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    iput-object p2, p1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 69
    .line 70
    const/4 p0, 0x1

    .line 71
    return p0

    .line 72
    :cond_3
    invoke-virtual {p2}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_4

    .line 77
    .line 78
    new-instance p1, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string p2, "Existing package "

    .line 81
    .line 82
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string p0, " has flattened signing certificate chain. Unable to install newer version with rotated signing certificate."

    .line 89
    .line 90
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    const/4 p1, 0x4

    .line 98
    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :cond_4
    return v3
.end method

.method public static matchSignaturesRecover(Ljava/lang/String;Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;I)Z
    .locals 2

    .line 1
    const-string v0, "Recovered effectively matching certificates for "

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    :try_start_0
    invoke-virtual {p2, p1, p3}, Landroid/content/pm/SigningDetails;->checkCapabilityRecover(Landroid/content/pm/SigningDetails;I)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {v1, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    return p0

    .line 27
    :catch_0
    move-exception p1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p1, 0x0

    .line 30
    goto :goto_1

    .line 31
    :goto_0
    invoke-virtual {p1}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string p3, "Failed to recover certificates for "

    .line 38
    .line 39
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p0, ": "

    .line 46
    .line 47
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-static {v1, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const/4 p0, 0x0

    .line 61
    return p0
.end method

.method public static preparePackageParserCache(Ljava/lang/String;ZZ)Ljava/io/File;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    const-string/jumbo p1, "pm.boot.disable_package_cache"

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {p1, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const-string v2, "PackageManager"

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    const-string p0, "Disabling package parser cache due to system property."

    .line 18
    .line 19
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getPackageCacheDirectory()Ljava/io/File;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1}, Landroid/os/FileUtils;->createDir(Ljava/io/File;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-nez v3, :cond_2

    .line 32
    .line 33
    return-object v0

    .line 34
    :cond_2
    sget-object v3, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {p1}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    array-length v5, v4

    .line 41
    :goto_0
    if-ge v1, v5, :cond_4

    .line 42
    .line 43
    aget-object v6, v4, v1

    .line 44
    .line 45
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    invoke-static {v3, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    if-eqz v7, :cond_3

    .line 54
    .line 55
    new-instance v7, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v8, "Keeping known cache "

    .line 58
    .line 59
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    invoke-static {v2, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v8, "Destroying unknown cache "

    .line 80
    .line 81
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    invoke-static {v2, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    invoke-static {v6}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 99
    .line 100
    .line 101
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_4
    invoke-static {p1, v3}, Landroid/os/FileUtils;->createDir(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    if-nez v1, :cond_5

    .line 109
    .line 110
    new-instance p0, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    const-string p2, "Cache directory cannot be created - wiping base dir "

    .line 113
    .line 114
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-static {v2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    invoke-static {p1}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 128
    .line 129
    .line 130
    return-object v0

    .line 131
    :cond_5
    if-eqz p2, :cond_6

    .line 132
    .line 133
    const-string p2, "eng."

    .line 134
    .line 135
    invoke-virtual {p0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 136
    .line 137
    .line 138
    move-result p0

    .line 139
    if-eqz p0, :cond_6

    .line 140
    .line 141
    const-string p0, "Wiping cache directory because the system partition changed."

    .line 142
    .line 143
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    new-instance p0, Ljava/io/File;

    .line 147
    .line 148
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    const-string v0, "framework"

    .line 153
    .line 154
    invoke-direct {p0, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    .line 158
    .line 159
    .line 160
    move-result-wide v4

    .line 161
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    .line 162
    .line 163
    .line 164
    move-result-wide v6

    .line 165
    cmp-long p0, v4, v6

    .line 166
    .line 167
    if-gez p0, :cond_6

    .line 168
    .line 169
    invoke-static {p1}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    .line 170
    .line 171
    .line 172
    invoke-static {p1, v3}, Landroid/os/FileUtils;->createDir(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    :cond_6
    return-object v1
.end method

.method public static verifySignatures(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/SigningDetails;ZZZ)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    if-eqz v1, :cond_b

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 18
    .line 19
    invoke-virtual {p3, v1, v3}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/16 v4, 0x8

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 30
    .line 31
    invoke-virtual {v1, p3, v4}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move v1, v2

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    move v1, v3

    .line 41
    :goto_1
    invoke-static {}, Landroid/security/Flags;->extendVbChainToUpdatedApk()Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-eqz v5, :cond_4

    .line 46
    .line 47
    if-eqz v1, :cond_4

    .line 48
    .line 49
    if-eqz p2, :cond_4

    .line 50
    .line 51
    iget-object v5, p2, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 52
    .line 53
    iget-object v5, v5, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 54
    .line 55
    sget-object v6, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    .line 56
    .line 57
    if-eq v5, v6, :cond_4

    .line 58
    .line 59
    invoke-virtual {p3, v5, v3}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-nez v1, :cond_3

    .line 64
    .line 65
    iget-object p2, p2, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 66
    .line 67
    iget-object p2, p2, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 68
    .line 69
    invoke-virtual {p2, p3, v4}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    if-eqz p2, :cond_2

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v1, "Updated system app mismatches cert on /system: "

    .line 79
    .line 80
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    const/4 v1, 0x6

    .line 91
    invoke-static {v1, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 92
    .line 93
    .line 94
    move v1, v2

    .line 95
    goto :goto_3

    .line 96
    :cond_3
    :goto_2
    move v1, v3

    .line 97
    :cond_4
    :goto_3
    if-nez v1, :cond_5

    .line 98
    .line 99
    if-eqz p4, :cond_5

    .line 100
    .line 101
    iget-object p2, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 102
    .line 103
    invoke-static {v0, p2, p3}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignaturesCompat(Ljava/lang/String;Lcom/android/server/pm/PackageSignatures;Landroid/content/pm/SigningDetails;)Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    move p2, v1

    .line 108
    goto :goto_4

    .line 109
    :cond_5
    move p2, v2

    .line 110
    :goto_4
    if-nez v1, :cond_8

    .line 111
    .line 112
    if-eqz p5, :cond_8

    .line 113
    .line 114
    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 115
    .line 116
    iget-object v1, v1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 117
    .line 118
    invoke-static {v0, v1, p3, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignaturesRecover(Ljava/lang/String;Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;I)Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    if-nez v1, :cond_7

    .line 123
    .line 124
    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 125
    .line 126
    iget-object v1, v1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 127
    .line 128
    invoke-static {v0, p3, v1, v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignaturesRecover(Ljava/lang/String;Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;I)Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-eqz v1, :cond_6

    .line 133
    .line 134
    goto :goto_5

    .line 135
    :cond_6
    move v1, v2

    .line 136
    goto :goto_6

    .line 137
    :cond_7
    :goto_5
    move v1, v3

    .line 138
    :cond_8
    :goto_6
    if-nez v1, :cond_9

    .line 139
    .line 140
    if-eqz p6, :cond_9

    .line 141
    .line 142
    iget-object p6, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 143
    .line 144
    iget-object p6, p6, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 145
    .line 146
    invoke-virtual {p6, p3}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/SigningDetails;)Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    :cond_9
    if-eqz v1, :cond_a

    .line 151
    .line 152
    goto :goto_7

    .line 153
    :cond_a
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    .line 154
    .line 155
    const-string p1, "Existing package "

    .line 156
    .line 157
    const-string p2, " signatures do not match newer version; ignoring!"

    .line 158
    .line 159
    invoke-static {p1, v0, p2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    const/4 p2, -0x7

    .line 164
    invoke-direct {p0, p2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw p0

    .line 168
    :cond_b
    move p2, v2

    .line 169
    :goto_7
    if-eqz p1, :cond_13

    .line 170
    .line 171
    iget-object p6, p1, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 172
    .line 173
    iget-object v1, p6, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 174
    .line 175
    sget-object v4, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    .line 176
    .line 177
    if-eq v1, v4, :cond_13

    .line 178
    .line 179
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 180
    .line 181
    iget-object p0, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 182
    .line 183
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    if-eqz p0, :cond_c

    .line 188
    .line 189
    move p0, v3

    .line 190
    goto :goto_8

    .line 191
    :cond_c
    move p0, v2

    .line 192
    :goto_8
    invoke-static {v0, p3, p1, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->canJoinSharedUserId(Ljava/lang/String;Landroid/content/pm/SigningDetails;Lcom/android/server/pm/SharedUserSetting;I)Z

    .line 193
    .line 194
    .line 195
    move-result p0

    .line 196
    if-nez p0, :cond_d

    .line 197
    .line 198
    if-eqz p4, :cond_d

    .line 199
    .line 200
    invoke-static {v0, p6, p3}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignaturesCompat(Ljava/lang/String;Lcom/android/server/pm/PackageSignatures;Landroid/content/pm/SigningDetails;)Z

    .line 201
    .line 202
    .line 203
    move-result p0

    .line 204
    :cond_d
    if-nez p0, :cond_10

    .line 205
    .line 206
    if-eqz p5, :cond_10

    .line 207
    .line 208
    iget-object p0, p6, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 209
    .line 210
    const/4 p4, 0x2

    .line 211
    invoke-static {v0, p0, p3, p4}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignaturesRecover(Ljava/lang/String;Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;I)Z

    .line 212
    .line 213
    .line 214
    move-result p0

    .line 215
    if-nez p0, :cond_e

    .line 216
    .line 217
    iget-object p0, p6, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 218
    .line 219
    invoke-static {v0, p3, p0, p4}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignaturesRecover(Ljava/lang/String;Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;I)Z

    .line 220
    .line 221
    .line 222
    move-result p0

    .line 223
    if-eqz p0, :cond_f

    .line 224
    .line 225
    :cond_e
    move v2, v3

    .line 226
    :cond_f
    or-int/2addr p2, v2

    .line 227
    move p0, v2

    .line 228
    :cond_10
    const-string p4, "Package "

    .line 229
    .line 230
    const/4 p5, -0x8

    .line 231
    if-eqz p0, :cond_12

    .line 232
    .line 233
    iget-object p0, p6, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 234
    .line 235
    invoke-virtual {p3, p0}, Landroid/content/pm/SigningDetails;->hasCommonAncestor(Landroid/content/pm/SigningDetails;)Z

    .line 236
    .line 237
    .line 238
    move-result p0

    .line 239
    if-eqz p0, :cond_11

    .line 240
    .line 241
    goto :goto_9

    .line 242
    :cond_11
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    .line 243
    .line 244
    const-string p1, " has a signing lineage that diverges from the lineage of the sharedUserId"

    .line 245
    .line 246
    invoke-static {p4, v0, p1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    invoke-direct {p0, p5, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 251
    .line 252
    .line 253
    throw p0

    .line 254
    :cond_12
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    .line 255
    .line 256
    const-string p2, " has no signatures that match those in shared user "

    .line 257
    .line 258
    invoke-static {p4, v0, p2}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    move-result-object p2

    .line 262
    iget-object p1, p1, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    .line 263
    .line 264
    const-string p3, "; ignoring!"

    .line 265
    .line 266
    invoke-static {p2, p1, p3}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    invoke-direct {p0, p5, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 271
    .line 272
    .line 273
    throw p0

    .line 274
    :cond_13
    :goto_9
    return p2
.end method
