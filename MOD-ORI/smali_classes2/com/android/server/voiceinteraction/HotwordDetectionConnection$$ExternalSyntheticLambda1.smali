.class public final synthetic Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/voiceinteraction/DetectorSession;

    .line 4
    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const-string/jumbo p0, "setDebugHotwordLoggingLocked: false"

    .line 12
    .line 13
    .line 14
    const-string v0, "DetectorSession"

    .line 15
    .line 16
    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    iput-boolean p0, p1, Lcom/android/server/voiceinteraction/DetectorSession;->mDebugHotwordLogging:Z

    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_0
    instance-of p0, p1, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    .line 24
    .line 25
    if-nez p0, :cond_0

    .line 26
    .line 27
    new-instance p0, Landroid/service/voice/HotwordDetectionServiceFailure;

    .line 28
    .line 29
    const/16 v0, 0xa

    .line 30
    .line 31
    const-string v1, "Shutdown hotword detection service on voice activation op disabled!"

    .line 32
    .line 33
    invoke-direct {p0, v0, v1}, Landroid/service/voice/HotwordDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p0}, Lcom/android/server/voiceinteraction/DetectorSession;->reportErrorLocked(Landroid/service/voice/HotwordDetectionServiceFailure;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/android/server/voiceinteraction/DetectorSession;->destroyLocked()V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void

    .line 43
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/server/voiceinteraction/DetectorSession;->destroyLocked()V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
