.class public final synthetic Lcom/android/server/am/pmm/DmaBufLeakDetector$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/pmm/DmaBufLeakDetector;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/pmm/DmaBufLeakDetector;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/am/pmm/DmaBufLeakDetector;

    .line 6
    iput-object p2, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector$$ExternalSyntheticLambda3;->f$1:Landroid/content/Context;

    .line 8
    iput-object p3, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/am/pmm/DmaBufLeakDetector;

    .line 3
    iget-object v1, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector$$ExternalSyntheticLambda3;->f$1:Landroid/content/Context;

    .line 5
    iget-object p0, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    new-instance v2, Landroid/content/Intent;

    .line 12
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 15
    const-string/jumbo v3, "com.sec.android.ISSUE_TRACKER_ACTION"

    .line 18
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    const-string v3, "ERRCODE"

    .line 23
    const/16 v4, -0x86

    .line 25
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 28
    const-string v3, "ERRPKG"

    .line 30
    invoke-virtual {v2, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    const-string p0, "ERRNAME"

    .line 35
    const-string v3, "DMABUF"

    .line 37
    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    const-string p0, "ERRMSG"

    .line 42
    const-string v3, "DMABUF_leak"

    .line 44
    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    sget-object p0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 49
    invoke-virtual {v1, v2, p0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 52
    iget p0, v0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mReportCount:I

    .line 54
    add-int/lit8 p0, p0, 0x1

    .line 56
    iput p0, v0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mReportCount:I

    .line 58
    new-instance p0, Ljava/lang/StringBuilder;

    .line 60
    const-string/jumbo v1, "sent intent to issuetracker. Report Count: "

    .line 63
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    iget v1, v0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mReportCount:I

    .line 68
    const-string v2, "DmaBufLeakDetector"

    .line 70
    invoke-static {p0, v1, v2}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 73
    const/4 p0, 0x0

    .line 74
    iput-boolean p0, v0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mIsReporting:Z

    .line 76
    return-void
.end method
