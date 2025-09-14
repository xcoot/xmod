.class public final Lcom/android/server/sepunion/VDCObserverService$3;
.super Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/VDCObserverService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/VDCObserverService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/sepunion/VDCObserverService$3;->this$0:Lcom/android/server/sepunion/VDCObserverService;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final notePauseComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/sepunion/VDCObserverService$3;->this$0:Lcom/android/server/sepunion/VDCObserverService;

    .line 4
    .line 5
    const/4 p2, 0x2

    .line 6
    invoke-static {p0, p2, p4, p1}, Lcom/android/server/sepunion/VDCObserverService;->-$$Nest$mhandleUsageStatsChanged(Lcom/android/server/sepunion/VDCObserverService;IILandroid/content/ComponentName;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public final noteResumeComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/sepunion/VDCObserverService$3;->this$0:Lcom/android/server/sepunion/VDCObserverService;

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    invoke-static {p0, p2, p4, p1}, Lcom/android/server/sepunion/VDCObserverService;->-$$Nest$mhandleUsageStatsChanged(Lcom/android/server/sepunion/VDCObserverService;IILandroid/content/ComponentName;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public final noteStopComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/sepunion/VDCObserverService$3;->this$0:Lcom/android/server/sepunion/VDCObserverService;

    .line 4
    .line 5
    const/16 p2, 0x17

    .line 6
    .line 7
    invoke-static {p0, p2, p4, p1}, Lcom/android/server/sepunion/VDCObserverService;->-$$Nest$mhandleUsageStatsChanged(Lcom/android/server/sepunion/VDCObserverService;IILandroid/content/ComponentName;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
