.class public final Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;
.super Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mOnStateListener:Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp$1;

.field public final synthetic this$0:Lcom/android/server/sepunion/SemGoodCatchService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SemGoodCatchService;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    .line 2
    .line 3
    const-string v0, "FeatureWakeUp"

    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp$1;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp$1;-><init>(Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;->mOnStateListener:Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp$1;

    .line 14
    .line 15
    const-string v0, "com.android.server.sepunion.semgoodcatchservice.GOOD_CATCH_STATE_CHANGED"

    .line 16
    .line 17
    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object p1, p1, Lcom/android/server/sepunion/SemGoodCatchService;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    new-instance v1, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp$2;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp$2;-><init>(Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    return-void
.end method
