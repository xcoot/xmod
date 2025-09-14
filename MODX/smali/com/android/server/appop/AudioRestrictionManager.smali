.class public final Lcom/android/server/appop/AudioRestrictionManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final CAMERA_AUDIO_RESTRICTIONS:Landroid/util/SparseArray;


# instance fields
.field public mCameraAudioRestriction:I

.field public final mZenModeAudioRestrictions:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 3
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 6
    new-instance v1, Landroid/util/SparseBooleanArray;

    .line 8
    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 11
    sget-object v2, Landroid/media/AudioAttributes;->SDK_USAGES:Landroid/util/IntArray;

    .line 13
    invoke-virtual {v2}, Landroid/util/IntArray;->toArray()[I

    .line 16
    move-result-object v2

    .line 17
    array-length v3, v2

    .line 18
    const/4 v4, 0x0

    .line 19
    :goto_0
    const/4 v5, 0x3

    .line 20
    if-ge v4, v3, :cond_3

    .line 22
    aget v6, v2, v4

    .line 24
    sget-object v7, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    .line 26
    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->get(I)I

    .line 29
    move-result v7

    .line 30
    const/4 v8, 0x1

    .line 31
    if-eq v7, v8, :cond_1

    .line 33
    const/4 v9, 0x2

    .line 34
    if-eq v7, v9, :cond_1

    .line 36
    const/4 v9, 0x4

    .line 37
    if-ne v7, v9, :cond_0

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    const/4 v6, 0x5

    .line 41
    if-eq v7, v6, :cond_2

    .line 43
    const/4 v6, 0x6

    .line 44
    if-eq v7, v6, :cond_2

    .line 46
    if-eq v7, v5, :cond_2

    .line 48
    const-string v5, "Unknown audio suppression behavior"

    .line 50
    const-string v6, "AudioRestriction"

    .line 52
    invoke-static {v7, v5, v6}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 55
    goto :goto_2

    .line 56
    :cond_1
    :goto_1
    invoke-virtual {v0, v6, v8}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 59
    invoke-virtual {v1, v6, v8}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 62
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 64
    goto :goto_0

    .line 65
    :cond_3
    new-instance v2, Landroid/util/SparseArray;

    .line 67
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 70
    sput-object v2, Lcom/android/server/appop/AudioRestrictionManager;->CAMERA_AUDIO_RESTRICTIONS:Landroid/util/SparseArray;

    .line 72
    const/16 v3, 0x1c

    .line 74
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 77
    invoke-virtual {v2, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 80
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/appop/AudioRestrictionManager;->mZenModeAudioRestrictions:Landroid/util/SparseArray;

    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/android/server/appop/AudioRestrictionManager;->mCameraAudioRestriction:I

    .line 14
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)Z
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/server/appop/AudioRestrictionManager;->hasActiveRestrictions()Z

    .line 4
    move-result v0

    .line 5
    monitor-enter p0

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    move v3, v2

    .line 9
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/appop/AudioRestrictionManager;->mZenModeAudioRestrictions:Landroid/util/SparseArray;

    .line 11
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 14
    move-result v4

    .line 15
    const/4 v5, 0x1

    .line 16
    if-ge v2, v4, :cond_3

    .line 18
    iget-object v4, p0, Lcom/android/server/appop/AudioRestrictionManager;->mZenModeAudioRestrictions:Landroid/util/SparseArray;

    .line 20
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 23
    move-result v4

    .line 24
    invoke-static {v4}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    .line 27
    move-result-object v4

    .line 28
    iget-object v6, p0, Lcom/android/server/appop/AudioRestrictionManager;->mZenModeAudioRestrictions:Landroid/util/SparseArray;

    .line 30
    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 33
    move-result-object v6

    .line 34
    check-cast v6, Landroid/util/SparseArray;

    .line 36
    move v7, v1

    .line 37
    :goto_1
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 40
    move-result v8

    .line 41
    if-ge v7, v8, :cond_2

    .line 43
    if-nez v3, :cond_0

    .line 45
    const-string v3, "  Zen Mode Audio Restrictions:"

    .line 47
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 50
    move v3, v5

    .line 51
    goto :goto_2

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    goto/16 :goto_5

    .line 55
    :cond_0
    :goto_2
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->keyAt(I)I

    .line 58
    move-result v8

    .line 59
    const-string v9, "    "

    .line 61
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 67
    const-string v9, " usage="

    .line 69
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 72
    invoke-static {v8}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    .line 75
    move-result-object v8

    .line 76
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 82
    move-result-object v8

    .line 83
    check-cast v8, Lcom/android/server/appop/AudioRestrictionManager$Restriction;

    .line 85
    const-string v9, ": mode="

    .line 87
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 90
    iget v9, v8, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->mode:I

    .line 92
    invoke-static {v9}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    .line 95
    move-result-object v9

    .line 96
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    iget-object v9, v8, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    .line 101
    invoke-virtual {v9}, Landroid/util/ArraySet;->isEmpty()Z

    .line 104
    move-result v9

    .line 105
    if-nez v9, :cond_1

    .line 107
    const-string v9, "      Exceptions:"

    .line 109
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 112
    move v9, v1

    .line 113
    :goto_3
    iget-object v10, v8, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    .line 115
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    .line 118
    move-result v10

    .line 119
    if-ge v9, v10, :cond_1

    .line 121
    const-string v10, "        "

    .line 123
    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 126
    iget-object v10, v8, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    .line 128
    invoke-virtual {v10, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 131
    move-result-object v10

    .line 132
    check-cast v10, Ljava/lang/String;

    .line 134
    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 137
    add-int/lit8 v9, v9, 0x1

    .line 139
    goto :goto_3

    .line 140
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 142
    goto :goto_1

    .line 143
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 145
    goto/16 :goto_0

    .line 147
    :cond_3
    iget v1, p0, Lcom/android/server/appop/AudioRestrictionManager;->mCameraAudioRestriction:I

    .line 149
    if-eqz v1, :cond_7

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    .line 153
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    const-string v2, "  Camera Audio Restriction Mode: "

    .line 158
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    iget v2, p0, Lcom/android/server/appop/AudioRestrictionManager;->mCameraAudioRestriction:I

    .line 163
    if-eqz v2, :cond_6

    .line 165
    if-eq v2, v5, :cond_5

    .line 167
    const/4 v3, 0x3

    .line 168
    if-eq v2, v3, :cond_4

    .line 170
    const-string v2, "Unknown"

    .line 172
    goto :goto_4

    .line 173
    :cond_4
    const-string v2, "MuteVibrationAndSound"

    .line 175
    goto :goto_4

    .line 176
    :cond_5
    const-string v2, "MuteVibration"

    .line 178
    goto :goto_4

    .line 179
    :cond_6
    const-string v2, "None"

    .line 181
    :goto_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    move-result-object v1

    .line 188
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 191
    :cond_7
    monitor-exit p0

    .line 192
    return v0

    .line 193
    :goto_5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    throw p1
.end method

.method public final hasActiveRestrictions()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AudioRestrictionManager;->mZenModeAudioRestrictions:Landroid/util/SparseArray;

    .line 4
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 7
    move-result v0

    .line 8
    if-gtz v0, :cond_1

    .line 10
    iget v0, p0, Lcom/android/server/appop/AudioRestrictionManager;->mCameraAudioRestriction:I

    .line 12
    if-eqz v0, :cond_0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    goto :goto_1

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    goto :goto_2

    .line 19
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 20
    :goto_1
    monitor-exit p0

    .line 21
    return v0

    .line 22
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v0
.end method
