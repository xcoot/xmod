.class public final Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;


# instance fields
.field public final synthetic this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$3;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onStart(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lcom/android/server/sepunion/SemGoodCatchService;->$r8$clinit:I

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v1, "onStart "

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "SemGoodCatchService"

    .line 19
    .line 20
    invoke-static {v0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$3;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    .line 24
    .line 25
    iget-boolean p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->mOn:Z

    .line 26
    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    iput-boolean p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->mOn:Z

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->process(Z)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public final onStop(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lcom/android/server/sepunion/SemGoodCatchService;->$r8$clinit:I

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v1, "onStop "

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "SemGoodCatchService"

    .line 19
    .line 20
    invoke-static {v0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$3;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    .line 24
    .line 25
    iget-boolean p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->mOn:Z

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->mOn:Z

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->process(Z)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method
