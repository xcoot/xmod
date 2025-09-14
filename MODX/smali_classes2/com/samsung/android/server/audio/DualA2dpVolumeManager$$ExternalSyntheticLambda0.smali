.class public final synthetic Lcom/samsung/android/server/audio/DualA2dpVolumeManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/audio/DualA2dpVolumeManager;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    .line 5
    .line 6
    iput p2, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    .line 2
    .line 3
    iget p0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/media/AudioSystem;->checkAudioFlinger()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const-string v2, "AS.DualA2dpManager"

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const-string p0, "Cannot access audioserver"

    .line 17
    .line 18
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    goto/16 :goto_3

    .line 22
    .line 23
    :cond_0
    new-instance v1, Lcom/samsung/android/media/AudioParameter$Builder;

    .line 24
    .line 25
    invoke-direct {v1}, Lcom/samsung/android/media/AudioParameter$Builder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v3, "audioParam"

    .line 29
    .line 30
    invoke-virtual {v1, v3}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v3, "l_volume_table"

    .line 35
    .line 36
    invoke-virtual {v1, v3}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lcom/samsung/android/media/AudioParameter$Builder;->build()Lcom/samsung/android/media/AudioParameter;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Lcom/samsung/android/media/AudioParameter;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {v1}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_1

    .line 57
    .line 58
    const-string p0, "cannot get volume tables. using default table"

    .line 59
    .line 60
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_1
    add-int/lit8 v3, p0, 0x1

    .line 65
    .line 66
    new-array v3, v3, [F

    .line 67
    .line 68
    new-instance v4, Ljava/util/StringTokenizer;

    .line 69
    .line 70
    const-string v5, ";"

    .line 71
    .line 72
    invoke-direct {v4, v1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const/4 v1, 0x0

    .line 76
    move v5, v1

    .line 77
    :goto_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    if-eqz v6, :cond_2

    .line 82
    .line 83
    if-gt v5, p0, :cond_2

    .line 84
    .line 85
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    add-int/lit8 v7, v5, 0x1

    .line 90
    .line 91
    :try_start_0
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 92
    .line 93
    .line 94
    move-result v8

    .line 95
    aput v8, v3, v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .line 97
    move v5, v7

    .line 98
    goto :goto_0

    .line 99
    :catch_0
    const-string p0, "invalid value "

    .line 100
    .line 101
    invoke-static {p0, v6, v2}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_2
    if-gt v5, p0, :cond_3

    .line 106
    .line 107
    const-string p0, "incorrect volume table, using default table"

    .line 108
    .line 109
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_3
    move v2, v1

    .line 114
    :goto_1
    sget-object v4, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->FINE_VOLUME_TABLE:[F

    .line 115
    .line 116
    if-ge v2, p0, :cond_5

    .line 117
    .line 118
    add-int/lit8 v5, v2, 0x1

    .line 119
    .line 120
    aget v6, v3, v5

    .line 121
    .line 122
    aget v7, v3, v2

    .line 123
    .line 124
    sub-float/2addr v6, v7

    .line 125
    const/high16 v7, 0x41200000    # 10.0f

    .line 126
    .line 127
    div-float/2addr v6, v7

    .line 128
    move v7, v1

    .line 129
    :goto_2
    const/16 v8, 0xa

    .line 130
    .line 131
    if-ge v7, v8, :cond_4

    .line 132
    .line 133
    mul-int/lit8 v8, v2, 0xa

    .line 134
    .line 135
    add-int/2addr v8, v7

    .line 136
    aget v9, v3, v2

    .line 137
    .line 138
    int-to-float v10, v7

    .line 139
    mul-float/2addr v10, v6

    .line 140
    add-float/2addr v10, v9

    .line 141
    aput v10, v4, v8

    .line 142
    .line 143
    add-int/lit8 v7, v7, 0x1

    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_4
    move v2, v5

    .line 147
    goto :goto_1

    .line 148
    :cond_5
    iget p0, v0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->MAX_VOLUME:I

    .line 149
    .line 150
    const/high16 v0, 0x3f800000    # 1.0f

    .line 151
    .line 152
    aput v0, v4, p0

    .line 153
    .line 154
    :goto_3
    return-void
.end method
