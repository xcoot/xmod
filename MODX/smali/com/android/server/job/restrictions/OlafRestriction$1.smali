.class public final Lcom/android/server/job/restrictions/OlafRestriction$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/restrictions/OlafRestriction;


# direct methods
.method public constructor <init>(Lcom/android/server/job/restrictions/OlafRestriction;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/job/restrictions/OlafRestriction$1;->this$0:Lcom/android/server/job/restrictions/OlafRestriction;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    const-string/jumbo p1, "job_restriction"

    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 8
    move-result p1

    .line 9
    const-string v1, " olaf state update: state="

    .line 11
    const-string v2, "OlafRestriction"

    .line 13
    invoke-static {v1, v2, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 16
    iget-object v1, p0, Lcom/android/server/job/restrictions/OlafRestriction$1;->this$0:Lcom/android/server/job/restrictions/OlafRestriction;

    .line 18
    iget-boolean v3, v1, Lcom/android/server/job/restrictions/OlafRestriction;->mOlafOn:Z

    .line 20
    if-eq v3, p1, :cond_1

    .line 22
    iput-boolean p1, v1, Lcom/android/server/job/restrictions/OlafRestriction;->mOlafOn:Z

    .line 24
    if-eqz p1, :cond_0

    .line 26
    const-string/jumbo p1, "olaf_target_uid"

    .line 29
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 32
    move-result p1

    .line 33
    iput p1, v1, Lcom/android/server/job/restrictions/OlafRestriction;->mOlafUid:I

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iput v0, v1, Lcom/android/server/job/restrictions/OlafRestriction;->mOlafUid:I

    .line 38
    :goto_0
    const-string p1, " trigger onRestrictionStateChanged."

    .line 40
    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object p0, p0, Lcom/android/server/job/restrictions/OlafRestriction$1;->this$0:Lcom/android/server/job/restrictions/OlafRestriction;

    .line 45
    iget-object p1, p0, Lcom/android/server/job/restrictions/JobRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 47
    iget-boolean p2, p0, Lcom/android/server/job/restrictions/OlafRestriction;->mOlafOn:Z

    .line 49
    invoke-virtual {p1, p0, p2}, Lcom/android/server/job/JobSchedulerService;->onRestrictionStateChanged(Lcom/android/server/job/restrictions/JobRestriction;Z)V

    .line 52
    :cond_1
    return-void
.end method
