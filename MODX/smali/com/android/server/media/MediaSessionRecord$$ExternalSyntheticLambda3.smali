.class public final synthetic Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/media/MediaSessionRecord;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Z

.field public final synthetic f$5:I

.field public final synthetic f$6:Ljava/lang/String;

.field public final synthetic f$7:I

.field public final synthetic f$8:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/media/MediaSessionRecord;IIIZILjava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/media/MediaSessionRecord;

    .line 6
    iput p2, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda3;->f$1:I

    .line 8
    iput p3, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda3;->f$2:I

    .line 10
    iput p4, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda3;->f$3:I

    .line 12
    iput-boolean p5, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda3;->f$4:Z

    .line 14
    iput p6, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda3;->f$5:I

    .line 16
    iput-object p7, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda3;->f$6:Ljava/lang/String;

    .line 18
    iput p8, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda3;->f$7:I

    .line 20
    iput p9, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda3;->f$8:I

    .line 22
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/media/MediaSessionRecord;

    .line 5
    iget v10, v0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda3;->f$1:I

    .line 7
    iget v11, v0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda3;->f$2:I

    .line 9
    iget v12, v0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda3;->f$3:I

    .line 11
    iget-boolean v13, v0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda3;->f$4:Z

    .line 13
    iget v14, v0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda3;->f$5:I

    .line 15
    iget-object v15, v0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda3;->f$6:Ljava/lang/String;

    .line 17
    iget v9, v0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda3;->f$7:I

    .line 19
    iget v8, v0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda3;->f$8:I

    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    if-eqz v13, :cond_1

    .line 26
    const/4 v0, 0x0

    .line 27
    :try_start_0
    invoke-static {v10, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 33
    iget-object v2, v1, Lcom/android/server/media/MediaSessionRecord;->mAudioManager:Landroid/media/AudioManager;

    .line 35
    iget-object v0, v1, Lcom/android/server/media/MediaSessionRecord;->mContext:Landroid/content/Context;

    .line 37
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 40
    move-result-object v0

    .line 41
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 43
    move v3, v10

    .line 44
    move v4, v11

    .line 45
    move v5, v12

    .line 46
    move-object v6, v15

    .line 47
    move v7, v9

    .line 48
    move v1, v9

    .line 49
    move v9, v0

    .line 50
    :try_start_1
    invoke-virtual/range {v2 .. v9}, Landroid/media/AudioManager;->adjustSuggestedStreamVolumeForUid(IIILjava/lang/String;III)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 53
    goto/16 :goto_1

    .line 55
    :catch_0
    move-exception v0

    .line 56
    goto :goto_0

    .line 57
    :catch_1
    move-exception v0

    .line 58
    move v1, v9

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    :try_start_2
    iget-object v2, v1, Lcom/android/server/media/MediaSessionRecord;->mAudioManager:Landroid/media/AudioManager;

    .line 62
    or-int v5, v12, v14

    .line 64
    iget-object v0, v1, Lcom/android/server/media/MediaSessionRecord;->mContext:Landroid/content/Context;

    .line 66
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 69
    move-result-object v0

    .line 70
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    .line 72
    const/high16 v3, -0x80000000

    .line 74
    move v4, v11

    .line 75
    move-object v6, v15

    .line 76
    move v7, v9

    .line 77
    move v1, v9

    .line 78
    move v9, v0

    .line 79
    :try_start_3
    invoke-virtual/range {v2 .. v9}, Landroid/media/AudioManager;->adjustSuggestedStreamVolumeForUid(IIILjava/lang/String;III)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0

    .line 82
    goto :goto_1

    .line 83
    :cond_1
    :try_start_4
    iget-object v2, v1, Lcom/android/server/media/MediaSessionRecord;->mAudioManager:Landroid/media/AudioManager;

    .line 85
    iget-object v0, v1, Lcom/android/server/media/MediaSessionRecord;->mContext:Landroid/content/Context;

    .line 87
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 90
    move-result-object v0

    .line 91
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1

    .line 93
    move v3, v10

    .line 94
    move v4, v11

    .line 95
    move v5, v12

    .line 96
    move-object v6, v15

    .line 97
    move v7, v9

    .line 98
    move v1, v9

    .line 99
    move v9, v0

    .line 100
    :try_start_5
    invoke-virtual/range {v2 .. v9}, Landroid/media/AudioManager;->adjustStreamVolumeForUid(IIILjava/lang/String;III)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_0

    .line 103
    goto :goto_1

    .line 104
    :goto_0
    const-string v2, "Cannot adjust volume: direction="

    .line 106
    const-string v3, ", stream="

    .line 108
    const-string v4, ", flags="

    .line 110
    invoke-static {v11, v10, v2, v3, v4}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    move-result-object v2

    .line 114
    const-string v3, ", opPackageName="

    .line 116
    const-string v4, ", uid="

    .line 118
    invoke-static {v12, v3, v15, v4, v2}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 121
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    const-string v1, ", useSuggested="

    .line 126
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 132
    const-string v1, ", previousFlagPlaySound="

    .line 134
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    move-result-object v1

    .line 144
    const-string v2, "MediaSessionRecord"

    .line 146
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    :goto_1
    return-void
.end method
