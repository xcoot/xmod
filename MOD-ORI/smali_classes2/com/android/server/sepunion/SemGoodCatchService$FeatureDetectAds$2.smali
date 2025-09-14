.class public final Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$2;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

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
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string p2, "android.intent.action.SCREEN_ON"

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    const-string v0, "SemGoodCatchService"

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    sget p1, Lcom/android/server/sepunion/SemGoodCatchService;->$r8$clinit:I

    .line 16
    .line 17
    const-string p1, "ACTION_SCREEN_ON"

    .line 18
    .line 19
    invoke-static {v0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$2;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchHandler:Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;

    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    const/16 p2, 0x7d0

    .line 30
    .line 31
    const/4 v0, 0x4

    .line 32
    invoke-static {p0, v0, p1, p2}, Lcom/android/server/sepunion/SemGoodCatchService;->sendMsg(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    sget p1, Lcom/android/server/sepunion/SemGoodCatchService;->$r8$clinit:I

    .line 45
    .line 46
    const-string p1, "ACTION_SCREEN_OFF"

    .line 47
    .line 48
    invoke-static {v0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$2;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    .line 52
    .line 53
    iget p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mForegroundUid:I

    .line 54
    .line 55
    iput p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mPreviousUid:I

    .line 56
    .line 57
    const-string/jumbo p1, "setActiveState, true"

    .line 58
    .line 59
    .line 60
    invoke-static {v0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    const/4 p1, 0x1

    .line 64
    iput-boolean p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mActiveState:Z

    .line 65
    .line 66
    :cond_1
    :goto_0
    return-void
.end method
