.class public final Lcom/android/server/am/AnrHelper$1;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/AnrHelper;

.field public final synthetic val$aInfo:Landroid/content/pm/ApplicationInfo;

.field public final synthetic val$anrProcess:Lcom/android/server/am/ProcessRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AnrHelper;Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/AnrHelper$1;->this$0:Lcom/android/server/am/AnrHelper;

    .line 3
    iput-object p2, p0, Lcom/android/server/am/AnrHelper$1;->val$aInfo:Landroid/content/pm/ApplicationInfo;

    .line 5
    iput-object p3, p0, Lcom/android/server/am/AnrHelper$1;->val$anrProcess:Lcom/android/server/am/ProcessRecord;

    .line 7
    const-string p1, "AppAnrHistoryBroadcastThread"

    .line 9
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "anr : "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/android/server/am/AnrHelper$1;->val$aInfo:Landroid/content/pm/ApplicationInfo;

    .line 10
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string v1, ","

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget-object v1, p0, Lcom/android/server/am/AnrHelper$1;->val$aInfo:Landroid/content/pm/ApplicationInfo;

    .line 22
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    const-string v1, "ActivityManager"

    .line 33
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    new-instance v0, Landroid/content/Intent;

    .line 38
    const-string/jumbo v1, "com.sec.android.sdhms.action.CRASH_ANR"

    .line 41
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 44
    const-string/jumbo v1, "com.sec.android.sdhms"

    .line 47
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    iget-object v1, p0, Lcom/android/server/am/AnrHelper$1;->val$aInfo:Landroid/content/pm/ApplicationInfo;

    .line 52
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 54
    const-string/jumbo v2, "pkgName"

    .line 57
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    iget-object v1, p0, Lcom/android/server/am/AnrHelper$1;->val$anrProcess:Lcom/android/server/am/ProcessRecord;

    .line 62
    iget v1, v1, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 64
    const-string/jumbo v2, "userId"

    .line 67
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    iget-object v1, p0, Lcom/android/server/am/AnrHelper$1;->val$anrProcess:Lcom/android/server/am/ProcessRecord;

    .line 72
    iget v1, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 74
    const-string/jumbo v2, "uid"

    .line 77
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 80
    const-string/jumbo v1, "type"

    .line 83
    const-string v2, "anr"

    .line 85
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    iget-object p0, p0, Lcom/android/server/am/AnrHelper$1;->this$0:Lcom/android/server/am/AnrHelper;

    .line 90
    iget-object p0, p0, Lcom/android/server/am/AnrHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 92
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 94
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 96
    const-string/jumbo v2, "com.samsung.permission.WRITE_SDHMS_DATA"

    .line 99
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 102
    return-void
.end method
