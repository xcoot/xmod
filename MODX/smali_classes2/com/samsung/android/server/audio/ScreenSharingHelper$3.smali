.class public final Lcom/samsung/android/server/audio/ScreenSharingHelper$3;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/audio/ScreenSharingHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper$3;->this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string v0, "com.samsung.intent.action.SEC_PRESENTATION_START_SMARTVIEW"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/4 v0, 0x0

    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "AS.ScreenSharingHelper"

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    const-string p1, "Enable presentation mode"

    .line 21
    .line 22
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper$3;->this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    .line 26
    .line 27
    iput-boolean v1, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsPresentationMode:Z

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->setMirroringPolicyParameter(Z)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string p2, "com.samsung.intent.action.SEC_PRESENTATION_STOP_SMARTVIEW"

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    const-string p1, "Disable presentation mode"

    .line 46
    .line 47
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    iget-object p0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper$3;->this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    .line 51
    .line 52
    iput-boolean v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsPresentationMode:Z

    .line 53
    .line 54
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->setMirroringPolicyParameter(Z)V

    .line 55
    .line 56
    .line 57
    :cond_2
    :goto_0
    return-void
.end method
