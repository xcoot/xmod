.class public final synthetic Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/power/PowerHistorian$WakeUpRecord;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p1, Lcom/android/server/power/PowerHistorian$WakeUpRecord;->mIsOn:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget v0, Lcom/android/server/sepunion/SemGoodCatchService;->$r8$clinit:I

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v1, "MODULE : FeatureWakeUp, FUNCTION : wakeup, opPackageName : "

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v4, p1, Lcom/android/server/power/PowerHistorian$WakeUpRecord;->mOpPackageName:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", reasonInt : "

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget v1, p1, Lcom/android/server/power/PowerHistorian$WakeUpRecord;->mReasonInt:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v2, ", reasonStr : "

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v7, p1, Lcom/android/server/power/PowerHistorian$WakeUpRecord;->mReasonStr:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v2, ", foregroundPackageName : "

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v8, p1, Lcom/android/server/power/PowerHistorian$WakeUpRecord;->mForegroundPackageName:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const-string v2, "SemGoodCatchService"

    .line 61
    .line 62
    invoke-static {v2, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    iget-wide v2, p1, Lcom/android/server/power/PowerHistorian$Record;->mRecordedTimeMillis:J

    .line 66
    .line 67
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    const-string v2, "FeatureWakeUp"

    .line 76
    .line 77
    const-string/jumbo v3, "wakeup"

    .line 78
    .line 79
    .line 80
    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    .line 85
    .line 86
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchHandler:Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;

    .line 87
    .line 88
    const/4 v0, 0x2

    .line 89
    const/4 v1, 0x0

    .line 90
    invoke-static {p0, v0, p1, v1}, Lcom/android/server/sepunion/SemGoodCatchService;->sendMsg(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 91
    .line 92
    .line 93
    :cond_0
    return-void
.end method
