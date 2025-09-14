.class public abstract Lcom/android/server/pm/PackageManagerServiceCompilerMapping;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final REASON_SHARED_INDEX:I

.field public static final REASON_STRINGS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    const-string v13, "boot-after-mainline-update"

    .line 2
    .line 3
    const-string/jumbo v14, "shared"

    .line 4
    .line 5
    .line 6
    const-string v0, "first-boot"

    .line 7
    .line 8
    const-string v1, "boot-after-ota"

    .line 9
    .line 10
    const-string/jumbo v2, "post-boot"

    .line 11
    .line 12
    .line 13
    const-string v3, "install"

    .line 14
    .line 15
    const-string v4, "install-fast"

    .line 16
    .line 17
    const-string v5, "install-bulk"

    .line 18
    .line 19
    const-string v6, "install-bulk-secondary"

    .line 20
    .line 21
    const-string v7, "install-bulk-downgraded"

    .line 22
    .line 23
    const-string v8, "install-bulk-secondary-downgraded"

    .line 24
    .line 25
    const-string v9, "bg-dexopt"

    .line 26
    .line 27
    const-string v10, "ab-ota"

    .line 28
    .line 29
    const-string v11, "inactive"

    .line 30
    .line 31
    const-string v12, "cmdline"

    .line 32
    .line 33
    filled-new-array/range {v0 .. v14}, [Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    .line 38
    .line 39
    array-length v1, v0

    .line 40
    add-int/lit8 v1, v1, -0x1

    .line 41
    .line 42
    sput v1, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_SHARED_INDEX:I

    .line 43
    .line 44
    const/16 v2, 0xf

    .line 45
    .line 46
    array-length v3, v0

    .line 47
    if-ne v2, v3, :cond_1

    .line 48
    .line 49
    const-string/jumbo v2, "shared"

    .line 50
    .line 51
    .line 52
    aget-object v0, v0, v1

    .line 53
    .line 54
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    .line 60
    return-void

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 62
    .line 63
    const-string v1, "REASON_STRINGS not correct because of shared index"

    .line 64
    .line 65
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw v0

    .line 69
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 70
    .line 71
    const-string v1, "REASON_STRINGS not correct"

    .line 72
    .line 73
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw v0
.end method

.method public static getAndCheckValidity(I)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getSystemPropertyName(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, ")"

    .line 10
    .line 11
    sget-object v2, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    .line 12
    .line 13
    const-string v3, "Value \""

    .line 14
    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-nez v4, :cond_3

    .line 22
    .line 23
    const-string/jumbo v4, "skip"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-nez v4, :cond_0

    .line 31
    .line 32
    invoke-static {v0}, Ldalvik/system/DexFile;->isValidCompilerFilter(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_3

    .line 37
    .line 38
    :cond_0
    sget v4, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_SHARED_INDEX:I

    .line 39
    .line 40
    if-ne p0, v4, :cond_2

    .line 41
    .line 42
    invoke-static {v0}, Ldalvik/system/DexFile;->isProfileGuidedCompilerFilter(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-nez v4, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    new-instance v4, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    const-string v5, "\" not allowed (reason "

    .line 52
    .line 53
    invoke-static {v3, v0, v5}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    aget-object p0, v2, p0

    .line 58
    .line 59
    invoke-static {v0, p0, v1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-direct {v4, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v4

    .line 67
    :cond_2
    :goto_0
    return-object v0

    .line 68
    :cond_3
    new-instance v4, Ljava/lang/IllegalStateException;

    .line 69
    .line 70
    const-string v5, "\" not valid (reason "

    .line 71
    .line 72
    invoke-static {v3, v0, v5}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    aget-object p0, v2, p0

    .line 77
    .line 78
    invoke-static {v0, p0, v1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-direct {v4, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw v4
.end method

.method public static getSystemPropertyName(I)Ljava/lang/String;
    .locals 4

    .line 1
    const/16 v0, 0x15

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    sget-object v2, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    .line 5
    .line 6
    const-string/jumbo v3, "pm.dexopt."

    .line 7
    .line 8
    .line 9
    if-ne p0, v0, :cond_0

    .line 10
    .line 11
    new-instance p0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    aget-object v0, v2, v1

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :cond_0
    const/16 v0, 0x16

    .line 27
    .line 28
    if-ne p0, v0, :cond_1

    .line 29
    .line 30
    new-instance p0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    aget-object v0, v2, v1

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :cond_1
    const/16 v0, 0x17

    .line 46
    .line 47
    if-ne p0, v0, :cond_2

    .line 48
    .line 49
    new-instance p0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    aget-object v0, v2, v1

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0

    .line 64
    :cond_2
    const/16 v0, 0x18

    .line 65
    .line 66
    if-ne p0, v0, :cond_3

    .line 67
    .line 68
    new-instance p0, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    aget-object v0, v2, v1

    .line 74
    .line 75
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0

    .line 83
    :cond_3
    const/16 v0, 0x19

    .line 84
    .line 85
    if-ne p0, v0, :cond_4

    .line 86
    .line 87
    new-instance p0, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    const/16 v0, 0x9

    .line 93
    .line 94
    aget-object v0, v2, v0

    .line 95
    .line 96
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    return-object p0

    .line 104
    :cond_4
    if-ltz p0, :cond_5

    .line 105
    .line 106
    const/16 v0, 0xf

    .line 107
    .line 108
    if-ge p0, v0, :cond_5

    .line 109
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    aget-object p0, v2, p0

    .line 116
    .line 117
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    return-object p0

    .line 125
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 126
    .line 127
    const-string/jumbo v1, "reason "

    .line 128
    .line 129
    .line 130
    const-string v2, " invalid"

    .line 131
    .line 132
    invoke-static {p0, v1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw v0
.end method
