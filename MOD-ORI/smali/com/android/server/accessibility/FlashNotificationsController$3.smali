.class public final Lcom/android/server/accessibility/FlashNotificationsController$3;
.super Landroid/media/AudioManager$AudioPlaybackCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/FlashNotificationsController;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/FlashNotificationsController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$3;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/media/AudioManager$AudioPlaybackCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPlaybackConfigChanged(Ljava/util/List;)V
    .locals 8

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance v0, Lcom/android/server/accessibility/FlashNotificationsController$3$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$3;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    .line 19
    .line 20
    iget-boolean v0, v0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsAlarming:Z

    .line 21
    .line 22
    if-eq v0, p1, :cond_2

    .line 23
    .line 24
    const-string v0, "alarm state changed: "

    .line 25
    .line 26
    const-string v1, "FlashNotifController"

    .line 27
    .line 28
    invoke-static {v0, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 29
    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$3;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    .line 34
    .line 35
    new-instance v7, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/android/server/accessibility/FlashNotificationsController;->getScreenFlashColorPreference$2()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    const-string v2, "alarm"

    .line 42
    .line 43
    const/4 v3, 0x2

    .line 44
    const/4 v5, 0x0

    .line 45
    const/4 v6, 0x0

    .line 46
    move-object v1, v7

    .line 47
    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;-><init>(Ljava/lang/String;IILandroid/os/IBinder;Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticLambda1;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v7}, Lcom/android/server/accessibility/FlashNotificationsController;->requestStartFlashNotification(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$3;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    .line 55
    .line 56
    const-string v1, "alarm"

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/FlashNotificationsController;->stopFlashNotification(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :goto_1
    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$3;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    .line 62
    .line 63
    iput-boolean p1, p0, Lcom/android/server/accessibility/FlashNotificationsController;->mIsAlarming:Z

    .line 64
    .line 65
    :cond_2
    return-void
.end method
