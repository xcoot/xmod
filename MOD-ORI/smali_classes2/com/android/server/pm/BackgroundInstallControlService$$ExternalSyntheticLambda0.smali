.class public final synthetic Lcom/android/server/pm/BackgroundInstallControlService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/BackgroundInstallControlService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/BackgroundInstallControlService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/BackgroundInstallControlService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/BackgroundInstallControlService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onUsageEvent(ILandroid/app/usage/UsageEvents$Event;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/BackgroundInstallControlService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/BackgroundInstallControlService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mHandler:Lcom/android/server/pm/BackgroundInstallControlService$EventHandler;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0, p1, v0, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 11
    .line 12
    .line 13
    return-void
.end method
