.class public final synthetic Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    const-string p1, "Providing query detection result from VisualQueryDetectionService to VoiceInteractionService"

    .line 9
    .line 10
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    .line 11
    .line 12
    iput p3, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$$ExternalSyntheticLambda1;->f$3:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v7, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    .line 6
    .line 7
    iget v3, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$$ExternalSyntheticLambda1;->f$3:I

    .line 8
    .line 9
    iget-object p0, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v2, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    iget-object v4, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractorIdentity:Landroid/media/permission/Identity;

    .line 15
    .line 16
    invoke-static {v2, v4, v1, v7}, Lcom/android/server/voiceinteraction/DetectorSession;->enforcePermissionForDataDelivery(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v2, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/android/server/voiceinteraction/DetectorSession;->mVoiceInteractorIdentity:Landroid/media/permission/Identity;

    .line 22
    .line 23
    iget v4, v0, Landroid/media/permission/Identity;->uid:I

    .line 24
    .line 25
    iget-object v5, v0, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v6, v0, Landroid/media/permission/Identity;->attributionTag:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual/range {v2 .. v7}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    monitor-exit p0

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw v0
.end method
