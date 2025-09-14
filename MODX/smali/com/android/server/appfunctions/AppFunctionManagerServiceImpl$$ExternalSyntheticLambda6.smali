.class public final synthetic Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/appfunctions/AppFunctionLoggerHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appfunctions/AppFunctionLoggerHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/appfunctions/AppFunctionLoggerHelper;

    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/appfunctions/AppFunctionLoggerHelper;

    .line 3
    check-cast p1, Landroid/app/appfunctions/AppFunctionExecutionRecord;

    .line 5
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionLoggerHelper;->mAppFunctionExecutionHistory:[Landroid/app/appfunctions/AppFunctionExecutionRecord;

    .line 7
    iget v1, p0, Lcom/android/server/appfunctions/AppFunctionLoggerHelper;->mAppFunctionExecutionHistoryIdx:I

    .line 9
    aput-object p1, v0, v1

    .line 11
    add-int/lit8 v1, v1, 0x1

    .line 13
    rem-int/lit8 v1, v1, 0xa

    .line 15
    iput v1, p0, Lcom/android/server/appfunctions/AppFunctionLoggerHelper;->mAppFunctionExecutionHistoryIdx:I

    .line 17
    sget-boolean v0, Lcom/android/server/appfunctions/AppFunctionLoggerHelper;->SA_LOG_ENABLED:Z

    .line 19
    if-eqz v0, :cond_0

    .line 21
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 24
    move-result-object v0

    .line 25
    new-instance v1, Lcom/android/server/appfunctions/AppFunctionLoggerHelper$$ExternalSyntheticLambda0;

    .line 27
    invoke-direct {v1, p0, p1}, Lcom/android/server/appfunctions/AppFunctionLoggerHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appfunctions/AppFunctionLoggerHelper;Landroid/app/appfunctions/AppFunctionExecutionRecord;)V

    .line 30
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    :cond_0
    return-void
.end method
