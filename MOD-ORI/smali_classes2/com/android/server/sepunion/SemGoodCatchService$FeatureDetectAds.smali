.class public final Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;
.super Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mActiveState:Z

.field public mForegroundUid:I

.field public final mIntentFilter:Landroid/content/IntentFilter;

.field public final mOnStateListener:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$3;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public mPreviousUid:I

.field public final mProcessObserver:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$1;

.field public final mReceiver:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$2;

.field public mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

.field public final synthetic this$0:Lcom/android/server/sepunion/SemGoodCatchService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SemGoodCatchService;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    .line 2
    .line 3
    const-string v0, "FeatureDetectAds"

    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Landroid/content/IntentFilter;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mIntentFilter:Landroid/content/IntentFilter;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput-boolean v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mActiveState:Z

    .line 17
    .line 18
    const/4 v1, -0x1

    .line 19
    iput v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mPreviousUid:I

    .line 20
    .line 21
    iput v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mForegroundUid:I

    .line 22
    .line 23
    new-instance v1, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$1;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$1;-><init>(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mProcessObserver:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$1;

    .line 29
    .line 30
    new-instance v1, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$2;

    .line 31
    .line 32
    invoke-direct {v1, p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$2;-><init>(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;)V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mReceiver:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$2;

    .line 36
    .line 37
    new-instance v1, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$3;

    .line 38
    .line 39
    invoke-direct {v1, p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$3;-><init>(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;)V

    .line 40
    .line 41
    .line 42
    iput-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mOnStateListener:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$3;

    .line 43
    .line 44
    iget-object v1, p1, Lcom/android/server/sepunion/SemGoodCatchService;->mContext:Landroid/content/Context;

    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iput-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 51
    .line 52
    const-string v1, "com.android.server.sepunion.semgoodcatchservice.GOOD_CATCH_STATE_CHANGED"

    .line 53
    .line 54
    invoke-static {v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    iget-object p1, p1, Lcom/android/server/sepunion/SemGoodCatchService;->mContext:Landroid/content/Context;

    .line 59
    .line 60
    new-instance v2, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$4;

    .line 61
    .line 62
    invoke-direct {v2, p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$4;-><init>(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 66
    .line 67
    .line 68
    const-string p0, "android.intent.action.SCREEN_ON"

    .line 69
    .line 70
    invoke-virtual {v0, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const-string p0, "android.intent.action.SCREEN_OFF"

    .line 74
    .line 75
    invoke-virtual {v0, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method


# virtual methods
.method public final process(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mReceiver:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mProcessObserver:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$1;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    :try_start_0
    iget-object p1, v2, Lcom/android/server/sepunion/SemGoodCatchService;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mIntentFilter:Landroid/content/IntentFilter;

    .line 12
    .line 13
    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-interface {p0, v1}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :catch_0
    move-exception p0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object p0, v2, Lcom/android/server/sepunion/SemGoodCatchService;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-interface {p0, v1}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :goto_0
    sget p1, Lcom/android/server/sepunion/SemGoodCatchService;->$r8$clinit:I

    .line 40
    .line 41
    const-string p1, "SemGoodCatchService"

    .line 42
    .line 43
    const-string v0, "Exception - ProcessObserver"

    .line 44
    .line 45
    invoke-static {p1, v0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 49
    .line 50
    .line 51
    :goto_1
    return-void
.end method
