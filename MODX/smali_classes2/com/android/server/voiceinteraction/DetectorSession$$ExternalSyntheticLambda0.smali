.class public final synthetic Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;


# instance fields
.field public final synthetic f$0:Lcom/android/server/voiceinteraction/DetectorSession;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/voiceinteraction/DetectorSession;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/voiceinteraction/DetectorSession;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onProximityUpdate(D)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/voiceinteraction/DetectorSession;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iput-wide p1, p0, Lcom/android/server/voiceinteraction/DetectorSession;->mProximityMeters:D

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    throw p0
.end method
