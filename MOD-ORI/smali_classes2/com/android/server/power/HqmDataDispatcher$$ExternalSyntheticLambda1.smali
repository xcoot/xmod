.class public final synthetic Lcom/android/server/power/HqmDataDispatcher$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/HqmDataDispatcher;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/HqmDataDispatcher;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/HqmDataDispatcher$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/HqmDataDispatcher;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/power/HqmDataDispatcher$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/HqmDataDispatcher;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/content/IntentFilter;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/power/HqmDataDispatcher;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    new-instance v2, Lcom/android/server/power/HqmDataDispatcher$HqmRequestReceiver;

    .line 19
    .line 20
    invoke-direct {v2, p0}, Lcom/android/server/power/HqmDataDispatcher$HqmRequestReceiver;-><init>(Lcom/android/server/power/HqmDataDispatcher;)V

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/power/HqmDataDispatcher;->mHandler:Lcom/android/server/power/HqmDataDispatcher$DispatchHandler;

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    return-void
.end method
