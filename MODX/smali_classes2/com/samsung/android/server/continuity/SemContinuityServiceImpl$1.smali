.class public final Lcom/samsung/android/server/continuity/SemContinuityServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl$1;->this$0:Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string v0, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_2

    .line 15
    .line 16
    const-string/jumbo p1, "reason"

    .line 17
    .line 18
    .line 19
    const/4 v0, -0x1

    .line 20
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    const-string p2, "EMERGENCY_STATE_CHANGED : "

    .line 25
    .line 26
    const-string v0, "[MCF_DS_SYS]_SemContinuityServiceImpl"

    .line 27
    .line 28
    invoke-static {p1, p2, v0}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 p2, 0x2

    .line 32
    if-ne p1, p2, :cond_1

    .line 33
    .line 34
    iget-object p0, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl$1;->this$0:Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;

    .line 35
    .line 36
    iget-object p0, p0, Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl;->mMcfDsManager:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->stopUser()V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 p2, 0x5

    .line 43
    if-ne p1, p2, :cond_2

    .line 44
    .line 45
    iget-object p0, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl$1;->this$0:Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;

    .line 46
    .line 47
    iget-object p1, p0, Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl;->mMcfDsManager:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    .line 48
    .line 49
    iget-object p0, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->mCurrentUserHandle:Landroid/os/UserHandle;

    .line 50
    .line 51
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->startUser(Landroid/os/UserHandle;)V

    .line 52
    .line 53
    .line 54
    :cond_2
    :goto_0
    return-void
.end method
