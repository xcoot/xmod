.class public final Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$DeliveryRunnable;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public feature:Lcom/samsung/android/server/dynamicfeature/DFeature;

.field public state:I

.field public final synthetic this$0:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$DeliveryRunnable;->this$0:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$DeliveryRunnable;->feature:Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 2
    .line 3
    const-string v1, "dynamicfeature_Service"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p0, "No feature to broadcast"

    .line 8
    .line 9
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$DeliveryRunnable;->feature:Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/samsung/android/server/dynamicfeature/DFeature;->getIntentAction()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$DeliveryRunnable;->feature:Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 25
    .line 26
    invoke-static {v2}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->setCurrentBroadcastFeature(Lcom/samsung/android/server/dynamicfeature/DFeature;)V

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$DeliveryRunnable;->feature:Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 30
    .line 31
    iget v3, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$DeliveryRunnable;->state:I

    .line 32
    .line 33
    const/4 v4, 0x2

    .line 34
    if-ne v3, v4, :cond_1

    .line 35
    .line 36
    const/4 v3, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v3, 0x0

    .line 39
    :goto_0
    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/server/dynamicfeature/DFeature;->loadCargo(Landroid/content/Intent;Z)V

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$DeliveryRunnable;->this$0:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;

    .line 43
    .line 44
    iget-object v2, v2, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mContext:Landroid/content/Context;

    .line 45
    .line 46
    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 47
    .line 48
    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string/jumbo v3, "send broadcast : "

    .line 52
    .line 53
    .line 54
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    filled-new-array {v0}, [Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-static {v0}, Lcom/samsung/android/server/dynamicfeature/dlog/Dlog;->event([Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$DeliveryRunnable;->state:I

    .line 95
    .line 96
    const-string v2, "Fail to set property : "

    .line 97
    .line 98
    if-ne v0, v4, :cond_2

    .line 99
    .line 100
    iget-object p0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$DeliveryRunnable;->feature:Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/samsung/android/server/dynamicfeature/DFeature;->getPersistPropertyKey()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->removeProperty(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :catch_0
    invoke-static {v2, p0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$DeliveryRunnable;->feature:Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/samsung/android/server/dynamicfeature/DFeature;->getPersistPropertyKey()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    :try_start_1
    iget-object p0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$DeliveryRunnable;->feature:Lcom/samsung/android/server/dynamicfeature/DFeature;

    .line 121
    .line 122
    iget-object p0, p0, Lcom/samsung/android/server/dynamicfeature/DFeature;->value:Ljava/lang/String;

    .line 123
    .line 124
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :catch_1
    invoke-static {v2, v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    :goto_1
    return-void
.end method
