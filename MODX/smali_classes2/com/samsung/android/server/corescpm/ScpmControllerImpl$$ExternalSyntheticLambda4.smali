.class public final synthetic Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/corescpm/ScpmControllerImpl;

.field public final synthetic f$1:Ljava/util/Set;

.field public final synthetic f$2:Landroid/content/Context;

.field public final synthetic f$3:Landroid/os/Handler;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/corescpm/ScpmControllerImpl;Ljava/util/Set;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/server/corescpm/ScpmControllerImpl;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda4;->f$1:Ljava/util/Set;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda4;->f$2:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda4;->f$3:Landroid/os/Handler;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/server/corescpm/ScpmControllerImpl;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda4;->f$1:Ljava/util/Set;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda4;->f$2:Landroid/content/Context;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda4;->f$3:Landroid/os/Handler;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    :try_start_0
    new-instance v3, Landroid/content/IntentFilter;

    .line 13
    .line 14
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v4, "com.samsung.intent.action.LAZY_BOOT_COMPLETE"

    .line 18
    .line 19
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v4, "com.samsung.android.scpm.policy.CLEAR_DATA"

    .line 23
    .line 24
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_0

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Ljava/lang/String;

    .line 42
    .line 43
    new-instance v5, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v6, "com.samsung.android.scpm.policy.UPDATE."

    .line 49
    .line 50
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    goto :goto_1

    .line 66
    :cond_0
    const/4 v1, 0x2

    .line 67
    invoke-virtual {v2, v0, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 68
    .line 69
    .line 70
    iget-object v0, v0, Lcom/samsung/android/server/corescpm/ScpmControllerImpl;->mOnLazyBootCompletedTimeout:Lcom/samsung/android/server/corescpm/ScpmControllerImpl$$ExternalSyntheticLambda0;

    .line 71
    .line 72
    const-wide/32 v1, 0x36ee80

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 80
    .line 81
    .line 82
    :goto_2
    return-void
.end method
