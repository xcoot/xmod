.class public final synthetic Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

.field public final synthetic f$1:Landroid/os/IBinder;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;Landroid/os/IBinder;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$$ExternalSyntheticLambda1;->f$1:Landroid/os/IBinder;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$$ExternalSyntheticLambda1;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$$ExternalSyntheticLambda1;->f$1:Landroid/os/IBinder;

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$$ExternalSyntheticLambda1;->f$2:I

    .line 6
    .line 7
    iget-object v2, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v2

    .line 10
    :try_start_0
    invoke-virtual {v0, p0, v1}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->handleVisibleActivitiesLocked(ILandroid/os/IBinder;)V

    .line 11
    .line 12
    .line 13
    monitor-exit v2

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p0
.end method
