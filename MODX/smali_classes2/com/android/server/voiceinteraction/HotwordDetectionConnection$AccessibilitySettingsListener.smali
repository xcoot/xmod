.class public final Lcom/android/server/voiceinteraction/HotwordDetectionConnection$AccessibilitySettingsListener;
.super Lcom/android/internal/app/IVoiceInteractionAccessibilitySettingsListener$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;


# direct methods
.method public constructor <init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$AccessibilitySettingsListener;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/internal/app/IVoiceInteractionAccessibilitySettingsListener$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAccessibilityDetectionChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$AccessibilitySettingsListener;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$AccessibilitySettingsListener;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->getVisualQueryDetectorSessionLocked()Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    iput-boolean p1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->mEnableAccessibilityDataEgress:Z

    .line 15
    .line 16
    :cond_0
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p0
.end method
