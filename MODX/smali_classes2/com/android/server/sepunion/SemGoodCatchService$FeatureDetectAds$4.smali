.class public final Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$4;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$4;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

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
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string p2, "com.android.server.sepunion.semgoodcatchservice.GOOD_CATCH_STATE_CHANGED"

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$4;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    .line 14
    .line 15
    new-instance p2, Lcom/samsung/android/sepunion/SemGoodCatchManager;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$4;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/android/server/sepunion/SemGoodCatchService;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    const-string v1, "detectads"

    .line 24
    .line 25
    filled-new-array {v1}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mOnStateListener:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$3;

    .line 30
    .line 31
    const-string v2, "FeatureDetectAds"

    .line 32
    .line 33
    invoke-direct {p2, v0, v2, v1, p0}, Lcom/samsung/android/sepunion/SemGoodCatchManager;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;)V

    .line 34
    .line 35
    .line 36
    iput-object p2, p1, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    .line 37
    .line 38
    :cond_0
    return-void
.end method
