.class public final synthetic Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 9
    .line 10
    check-cast p1, Lcom/android/server/voiceinteraction/DetectorSession;

    .line 11
    .line 12
    invoke-static {p0, p1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->$r8$lambda$E52jDMeAIM1fqsgeezf_xP2TouE(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;Lcom/android/server/voiceinteraction/DetectorSession;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    check-cast p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 17
    .line 18
    check-cast p1, Lcom/android/server/voiceinteraction/DetectorSession;

    .line 19
    .line 20
    invoke-static {p0, p1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->$r8$lambda$soeRIWrLUaITqTFZZ9ww9BHBGAM(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;Lcom/android/server/voiceinteraction/DetectorSession;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_1
    check-cast p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    .line 25
    .line 26
    check-cast p1, Lcom/android/server/voiceinteraction/DetectorSession;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    instance-of v0, p1, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteVisualQueryDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mRemoteHotwordDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 39
    .line 40
    :goto_0
    iput-object p0, p1, Lcom/android/server/voiceinteraction/DetectorSession;->mRemoteDetectionService:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/android/server/voiceinteraction/DetectorSession;->informRestartProcessLocked()V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
