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

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/am/AnrHelper$1;->val$aInfo:Landroid/content/pm/ApplicationInfo;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/server/am/AnrHelper$1;->val$anrProcess:Lcom/android/server/am/ProcessRecord;

    .line 6
    .line 7
    const-string p1, "AppAnrHistoryBroadcastThread"

    .line 8
    .line 9
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "anr : "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/am/AnrHelper$1;->val$aInfo:Landroid/content/pm/ApplicationInfo;

    .line 9
    .line 10
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ","

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/am/AnrHelper$1;->val$aInfo:Landroid/content/pm/ApplicationInfo;

    .line 21
    .line 22
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "ActivityManager"

    .line 32
    .line 33
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    new-instance v0, Landroid/content/Intent;

    .line 37
    .line 38
    const-string/jumbo v1, "com.sec.android.sdhms.action.CRASH_ANR"

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string/jumbo v1, "com.sec.android.sdhms"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lcom/android/server/am/AnrHelper$1;->val$aInfo:Landroid/content/pm/ApplicationInfo;

    .line 51
    .line 52
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 53
    .line 54
    const-string/jumbo v2, "pkgName"

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lcom/android/server/am/AnrHelper$1;->val$anrProcess:Lcom/android/server/am/ProcessRecord;

    .line 61
    .line 62
    iget v1, v1, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 63
    .line 64
    const-string/jumbo v2, "userId"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Lcom/android/server/am/AnrHelper$1;->val$anrProcess:Lcom/android/server/am/ProcessRecord;

    .line 71
    .line 72
    iget v1, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 73
    .line 74
    const-string/jumbo v2, "uid"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 78
    .line 79
    .line 80
    const-string/jumbo v1, "type"

    .line 81
    .line 82
    .line 83
    const-string v2, "anr"

    .line 84
    .line 85
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    .line 87
    .line 88
    iget-object p0, p0, Lcom/android/server/am/AnrHelper$1;->this$0:Lcom/android/server/am/AnrHelper;

    .line 89
    .line 90
    iget-object p0, p0, Lcom/android/server/am/AnrHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 91
    .line 92
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 93
    .line 94
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 95
    .line 96
    const-string/jumbo v2, "com.samsung.permission.WRITE_SDHMS_DATA"

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    return-void
.end method
