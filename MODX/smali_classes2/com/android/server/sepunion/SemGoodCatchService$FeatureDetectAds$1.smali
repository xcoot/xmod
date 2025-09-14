.class public final Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$1;
.super Landroid/app/IProcessObserver$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$1;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onForegroundActivitiesChanged(IIZ)V
    .locals 6

    .line 1
    if-eqz p3, :cond_2

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$1;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    .line 4
    .line 5
    iput p2, p1, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mForegroundUid:I

    .line 6
    .line 7
    const/4 p3, 0x0

    .line 8
    const/16 v0, 0x3e8

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    if-ne p2, v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-array p1, v1, [Ljava/lang/String;

    .line 17
    .line 18
    const-string p2, "android"

    .line 19
    .line 20
    aput-object p2, p1, p3

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p1, p1, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    :goto_0
    if-nez p1, :cond_1

    .line 30
    .line 31
    new-array p1, v1, [Ljava/lang/String;

    .line 32
    .line 33
    const-string p2, ""

    .line 34
    .line 35
    aput-object p2, p1, p3

    .line 36
    .line 37
    :cond_1
    aget-object v2, p1, p3

    .line 38
    .line 39
    iget-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$1;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    .line 40
    .line 41
    iget-boolean p2, p1, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mActiveState:Z

    .line 42
    .line 43
    if-eqz p2, :cond_2

    .line 44
    .line 45
    iget p2, p1, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mPreviousUid:I

    .line 46
    .line 47
    iget p1, p1, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mForegroundUid:I

    .line 48
    .line 49
    if-eq p2, p1, :cond_2

    .line 50
    .line 51
    sget p1, Lcom/android/server/sepunion/SemGoodCatchService;->$r8$clinit:I

    .line 52
    .line 53
    new-instance p1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string p2, "mForegroundUid = "

    .line 56
    .line 57
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object p2, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$1;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    .line 61
    .line 62
    iget p2, p2, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mForegroundUid:I

    .line 63
    .line 64
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string p2, "("

    .line 68
    .line 69
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string p2, ")"

    .line 76
    .line 77
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    const-string p2, "SemGoodCatchService"

    .line 85
    .line 86
    invoke-static {p2, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$1;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    .line 90
    .line 91
    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    .line 92
    .line 93
    const-string v4, ""

    .line 94
    .line 95
    const-string v5, ""

    .line 96
    .line 97
    const-string v1, "detectads"

    .line 98
    .line 99
    const/4 v3, 0x0

    .line 100
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sepunion/SemGoodCatchManager;->update(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    :cond_2
    return-void
.end method

.method public final onForegroundServicesChanged(III)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onProcessDied(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onProcessStarted(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method
