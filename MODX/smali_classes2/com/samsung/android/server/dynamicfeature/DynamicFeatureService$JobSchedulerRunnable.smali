.class public final Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$JobSchedulerRunnable;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mService:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;

.field public final synthetic this$0:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$JobSchedulerRunnable;->this$0:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$JobSchedulerRunnable;->mService:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$JobSchedulerRunnable;->this$0:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$JobSchedulerRunnable;->mService:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;

    .line 6
    .line 7
    invoke-static {v0, p0}, Lcom/samsung/android/server/dynamicfeature/CheckUpdateJobService;->scheduleDynamicFeatureScheduler(Landroid/content/Context;Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v1, "FAIL :"

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v1, "dynamicfeature_Service"

    .line 20
    .line 21
    invoke-static {p0, v0, v1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method
