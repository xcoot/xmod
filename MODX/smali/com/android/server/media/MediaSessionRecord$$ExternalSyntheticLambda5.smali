.class public final synthetic Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/media/MediaSessionRecord;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;IIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/media/MediaSessionRecord;

    .line 6
    iput-object p2, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    .line 8
    iput p3, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda5;->f$2:I

    .line 10
    iput p4, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda5;->f$3:I

    .line 12
    iput p5, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda5;->f$4:I

    .line 14
    iput p6, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda5;->f$5:I

    .line 16
    iput p7, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda5;->f$6:I

    .line 18
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/media/MediaSessionRecord;

    .line 3
    iget-object v5, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    .line 5
    iget v7, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda5;->f$2:I

    .line 7
    iget v6, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda5;->f$3:I

    .line 9
    iget v9, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda5;->f$4:I

    .line 11
    iget v10, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda5;->f$5:I

    .line 13
    iget p0, p0, Lcom/android/server/media/MediaSessionRecord$$ExternalSyntheticLambda5;->f$6:I

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    :try_start_0
    iget-object v1, v0, Lcom/android/server/media/MediaSessionRecord;->mAudioManager:Landroid/media/AudioManager;

    .line 20
    iget-object v0, v0, Lcom/android/server/media/MediaSessionRecord;->mContext:Landroid/content/Context;

    .line 22
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 25
    move-result-object v0

    .line 26
    iget v8, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 28
    move v2, v10

    .line 29
    move v3, p0

    .line 30
    move v4, v9

    .line 31
    invoke-virtual/range {v1 .. v8}, Landroid/media/AudioManager;->setStreamVolumeForUid(IIILjava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    const-string v1, "Cannot set volume: stream="

    .line 38
    const-string v2, ", value="

    .line 40
    const-string v3, ", flags="

    .line 42
    invoke-static {v10, p0, v1, v2, v3}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object p0

    .line 53
    const-string v1, "MediaSessionRecord"

    .line 55
    invoke-static {v1, p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    :goto_0
    return-void
.end method
