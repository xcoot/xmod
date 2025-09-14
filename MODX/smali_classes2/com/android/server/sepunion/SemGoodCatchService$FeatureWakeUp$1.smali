.class public final Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;


# instance fields
.field public final synthetic this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp$1;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;

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
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp$1;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->mOn:Z

    .line 27
    .line 28
    sget-object v0, Lcom/android/server/power/PowerHistorian;->INSTANCE:Lcom/android/server/power/PowerHistorian;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/android/server/power/PowerHistorian;->mRecordCache:Landroid/util/SparseArray;

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Lcom/android/server/power/PowerHistorian$RecordBuffer;

    .line 37
    .line 38
    iget-object p1, p1, Lcom/android/server/power/PowerHistorian$RecordBuffer;->mBuffer:Ljava/util/LinkedList;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/util/LinkedList;->stream()Ljava/util/stream/Stream;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    new-instance v0, Lcom/android/server/power/PowerHistorian$$ExternalSyntheticLambda0;

    .line 45
    .line 46
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    new-instance v0, Lcom/android/server/power/PowerHistorian$$ExternalSyntheticLambda1;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Ljava/util/List;

    .line 71
    .line 72
    new-instance v0, Ljava/util/LinkedList;

    .line 73
    .line 74
    invoke-direct {v0, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 75
    .line 76
    .line 77
    new-instance p1, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp$$ExternalSyntheticLambda0;

    .line 78
    .line 79
    invoke-direct {p1, p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;)V

    .line 80
    .line 81
    .line 82
    invoke-interface {v0, p1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 83
    .line 84
    .line 85
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    .line 86
    .line 87
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchHandler:Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;

    .line 88
    .line 89
    const/4 p1, 0x0

    .line 90
    const/4 v0, 0x5

    .line 91
    const/4 v1, 0x0

    .line 92
    invoke-static {p0, v0, v1, p1}, Lcom/android/server/sepunion/SemGoodCatchService;->sendMsg(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 93
    .line 94
    .line 95
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
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp$1;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->mOn:Z

    .line 27
    .line 28
    return-void
.end method
