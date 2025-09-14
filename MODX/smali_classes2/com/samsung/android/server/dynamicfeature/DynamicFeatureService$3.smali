.class public final Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$3;->this$0:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;

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
    iget v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :try_start_0
    invoke-static {v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->setCurrentBroadcastFeature(Lcom/samsung/android/server/dynamicfeature/DFeature;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$3;->this$0:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->-$$Nest$mreleaseUpdate(Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$3;->this$0:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mTracker:Lcom/samsung/android/server/dynamicfeature/sentinel/Tracker;

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception p0

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v1, "FAIL :"

    .line 29
    .line 30
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v1, "dynamicfeature_Service"

    .line 34
    .line 35
    invoke-static {p0, v0, v1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void

    .line 39
    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$3;->this$0:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->updateFeatureViaServer()V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$3;->this$0:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->updateFeatureViaServer()V

    .line 48
    .line 49
    .line 50
    iget-object p0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$3;->this$0:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;

    .line 51
    .line 52
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mHandler:Landroid/os/Handler;

    .line 53
    .line 54
    iget-object p0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->updateRunnable:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$3;

    .line 55
    .line 56
    sget-object v1, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->basicInfo:Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;

    .line 57
    .line 58
    iget-wide v1, v1, Lcom/samsung/android/server/dynamicfeature/InfoBoard$BasicInfos;->jobIntervalMin:J

    .line 59
    .line 60
    const v3, 0xea60

    .line 61
    .line 62
    .line 63
    int-to-long v3, v3

    .line 64
    mul-long/2addr v1, v3

    .line 65
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
