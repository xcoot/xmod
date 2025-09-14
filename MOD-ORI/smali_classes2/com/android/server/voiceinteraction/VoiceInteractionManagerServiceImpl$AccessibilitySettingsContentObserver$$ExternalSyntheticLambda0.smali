.class public final synthetic Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$AccessibilitySettingsContentObserver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$AccessibilitySettingsContentObserver$$ExternalSyntheticLambda0;->f$0:Z

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$AccessibilitySettingsContentObserver$$ExternalSyntheticLambda0;->f$0:Z

    .line 2
    .line 3
    check-cast p1, Lcom/android/internal/app/IVoiceInteractionAccessibilitySettingsListener;

    .line 4
    .line 5
    :try_start_0
    invoke-interface {p1, p0}, Lcom/android/internal/app/IVoiceInteractionAccessibilitySettingsListener;->onAccessibilityDetectionChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 11
    .line 12
    .line 13
    :goto_0
    return-void
.end method
