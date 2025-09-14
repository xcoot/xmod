.class public final synthetic Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/server/corescpm/ScpmControllerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/corescpm/ScpmControllerImpl;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/corescpm/ScpmControllerImpl;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/corescpm/ScpmControllerImpl;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->register()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mCallback:Ljava/util/function/Consumer;

    .line 19
    .line 20
    invoke-interface {v1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v1

    .line 25
    iget-object v2, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    .line 26
    .line 27
    const/4 v3, 0x5

    .line 28
    const-string v4, "Failed to tryRegister"

    .line 29
    .line 30
    invoke-virtual {v2, v3, v4, v1}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget v1, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mRetryNumber:I

    .line 34
    .line 35
    add-int/lit8 v2, v1, -0x1

    .line 36
    .line 37
    iput v2, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mRetryNumber:I

    .line 38
    .line 39
    if-lez v1, :cond_1

    .line 40
    .line 41
    iget-object v0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mHandler:Landroid/os/Handler;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mTryRegister:Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda0;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mHandler:Landroid/os/Handler;

    .line 49
    .line 50
    iget-object p0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mTryRegister:Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda0;

    .line 51
    .line 52
    const-wide/32 v1, 0x124f80

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    .line 60
    .line 61
    const/4 v1, 0x6

    .line 62
    const-string v2, "SCPM registration fails"

    .line 63
    .line 64
    invoke-virtual {p0, v1, v2, v0}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    :goto_0
    return-void

    .line 68
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    .line 69
    .line 70
    const-string/jumbo v1, "onLazyBootCompletedTimeout"

    .line 71
    .line 72
    .line 73
    const/4 v2, 0x0

    .line 74
    const/4 v3, 0x5

    .line 75
    invoke-virtual {v0, v3, v1, v2}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->onLazyBootCompleted()V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    nop

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
