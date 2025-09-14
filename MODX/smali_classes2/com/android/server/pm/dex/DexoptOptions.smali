.class public final Lcom/android/server/pm/dex/DexoptOptions;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCompilationReason:I

.field public final mCompilerFilter:Ljava/lang/String;

.field public final mFlags:I

.field public final mPackageName:Ljava/lang/String;

.field public final mSplitName:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 6

    .line 13
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getAndCheckValidity(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    .line 14
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit16 v0, p2, -0xe70

    if-nez v0, :cond_0

    .line 2
    iput-object p3, p0, Lcom/android/server/pm/dex/DexoptOptions;->mPackageName:Ljava/lang/String;

    .line 3
    iput-object p4, p0, Lcom/android/server/pm/dex/DexoptOptions;->mCompilerFilter:Ljava/lang/String;

    .line 4
    iput p2, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    .line 5
    iput-object p5, p0, Lcom/android/server/pm/dex/DexoptOptions;->mSplitName:Ljava/lang/String;

    .line 6
    iput p1, p0, Lcom/android/server/pm/dex/DexoptOptions;->mCompilationReason:I

    return-void

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Invalid flags : "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-static {p1, p2}, Landroid/hardware/audio/common/V2_0/AudioChannelMask$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static convertToArtServiceDexoptReason(I)Ljava/lang/String;
    .locals 2

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    packed-switch p0, :pswitch_data_1

    .line 5
    .line 6
    .line 7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 8
    .line 9
    const-string v1, "Invalid compilation reason "

    .line 10
    .line 11
    invoke-static {p0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw v0

    .line 19
    :pswitch_0
    const-string p0, "labs"

    .line 20
    .line 21
    return-object p0

    .line 22
    :pswitch_1
    const-string p0, "install-repair"

    .line 23
    .line 24
    return-object p0

    .line 25
    :pswitch_2
    const-string p0, "install-speg"

    .line 26
    .line 27
    return-object p0

    .line 28
    :pswitch_3
    const-string p0, "install-spqr"

    .line 29
    .line 30
    return-object p0

    .line 31
    :pswitch_4
    const-string p0, "boot-after-mainline-update"

    .line 32
    .line 33
    return-object p0

    .line 34
    :pswitch_5
    const-string p0, "cmdline"

    .line 35
    .line 36
    return-object p0

    .line 37
    :pswitch_6
    const-string p0, "inactive"

    .line 38
    .line 39
    return-object p0

    .line 40
    :pswitch_7
    const-string p0, "bg-dexopt"

    .line 41
    .line 42
    return-object p0

    .line 43
    :pswitch_8
    const-string p0, "install-bulk-secondary-downgraded"

    .line 44
    .line 45
    return-object p0

    .line 46
    :pswitch_9
    const-string p0, "install-bulk-downgraded"

    .line 47
    .line 48
    return-object p0

    .line 49
    :pswitch_a
    const-string p0, "install-bulk-secondary"

    .line 50
    .line 51
    return-object p0

    .line 52
    :pswitch_b
    const-string p0, "install-bulk"

    .line 53
    .line 54
    return-object p0

    .line 55
    :pswitch_c
    const-string p0, "install-fast"

    .line 56
    .line 57
    return-object p0

    .line 58
    :pswitch_d
    const-string p0, "install"

    .line 59
    .line 60
    return-object p0

    .line 61
    :pswitch_e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 62
    .line 63
    const-string v1, "ART Service unsupported compilation reason "

    .line 64
    .line 65
    invoke-static {p0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw v0

    .line 73
    :pswitch_f
    const-string p0, "boot-after-ota"

    .line 74
    .line 75
    return-object p0

    .line 76
    :pswitch_10
    const-string p0, "first-boot"

    .line 77
    .line 78
    return-object p0

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_e
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_e
    .end packed-switch

    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_3
        :pswitch_2
        :pswitch_7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final convertToDexoptParams(I)Lcom/android/server/art/model/DexoptParams;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mPackageName:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/dex/DexoptOptions;->mSplitName:Ljava/lang/String;

    .line 4
    .line 5
    if-nez v1, :cond_9

    .line 6
    .line 7
    iget v1, p0, Lcom/android/server/pm/dex/DexoptOptions;->mFlags:I

    .line 8
    .line 9
    and-int/lit8 v2, v1, 0x1

    .line 10
    .line 11
    iget-object v3, p0, Lcom/android/server/pm/dex/DexoptOptions;->mCompilerFilter:Ljava/lang/String;

    .line 12
    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    invoke-static {v3}, Ldalvik/system/DexFile;->isProfileGuidedCompilerFilter(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    const-string p1, "DEXOPT_CHECK_FOR_PROFILES_UPDATES must be set with profile guided filter"

    .line 25
    .line 26
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p0

    .line 30
    :cond_1
    :goto_0
    and-int/lit8 v2, v1, 0x2

    .line 31
    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    or-int/lit8 p1, p1, 0x10

    .line 35
    .line 36
    :cond_2
    and-int/lit8 v2, v1, 0x8

    .line 37
    .line 38
    if-eqz v2, :cond_3

    .line 39
    .line 40
    or-int/lit8 p1, p1, 0x2

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_3
    or-int/lit8 p1, p1, 0x1

    .line 44
    .line 45
    :goto_1
    and-int/lit8 v2, v1, 0x20

    .line 46
    .line 47
    if-eqz v2, :cond_4

    .line 48
    .line 49
    or-int/lit8 p1, p1, 0x8

    .line 50
    .line 51
    :cond_4
    and-int/lit16 v2, v1, 0x400

    .line 52
    .line 53
    if-nez v2, :cond_5

    .line 54
    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v4, "DEXOPT_INSTALL_WITH_DEX_METADATA_FILE not set in request to optimise "

    .line 58
    .line 59
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v0, " - ART Service will unconditionally use a DM file if present."

    .line 66
    .line 67
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    const-string v2, "DexoptOptions"

    .line 75
    .line 76
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    :cond_5
    and-int/lit8 v0, v1, 0x4

    .line 80
    .line 81
    if-eqz v0, :cond_8

    .line 82
    .line 83
    and-int/lit16 v0, v1, 0x800

    .line 84
    .line 85
    if-eqz v0, :cond_6

    .line 86
    .line 87
    const/16 v0, 0x50

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_6
    and-int/lit16 v0, v1, 0x200

    .line 91
    .line 92
    if-eqz v0, :cond_7

    .line 93
    .line 94
    const/16 v0, 0x28

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_7
    const/16 v0, 0x3c

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_8
    const/16 v0, 0x64

    .line 101
    .line 102
    :goto_2
    new-instance v1, Lcom/android/server/art/model/DexoptParams$Builder;

    .line 103
    .line 104
    iget p0, p0, Lcom/android/server/pm/dex/DexoptOptions;->mCompilationReason:I

    .line 105
    .line 106
    invoke-static {p0}, Lcom/android/server/pm/dex/DexoptOptions;->convertToArtServiceDexoptReason(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-direct {v1, p0, p1}, Lcom/android/server/art/model/DexoptParams$Builder;-><init>(Ljava/lang/String;I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v3}, Lcom/android/server/art/model/DexoptParams$Builder;->setCompilerFilter(Ljava/lang/String;)Lcom/android/server/art/model/DexoptParams$Builder;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-virtual {p0, v0}, Lcom/android/server/art/model/DexoptParams$Builder;->setPriorityClass(I)Lcom/android/server/art/model/DexoptParams$Builder;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-virtual {p0}, Lcom/android/server/art/model/DexoptParams$Builder;->build()Lcom/android/server/art/model/DexoptParams;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    return-object p0

    .line 126
    :cond_9
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 127
    .line 128
    new-instance p1, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    const-string v2, "Request to optimize only split "

    .line 131
    .line 132
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v1, " for "

    .line 139
    .line 140
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw p0
.end method
