.class public final Lcom/android/server/am/AppErrors$1;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/AppErrors;

.field public final synthetic val$r:Lcom/android/server/am/ProcessRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppErrors;Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/AppErrors$1;->this$0:Lcom/android/server/am/AppErrors;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/am/AppErrors$1;->val$r:Lcom/android/server/am/ProcessRecord;

    .line 4
    .line 5
    const-string p1, "AppCrashHistoryBroadcastThread"

    .line 6
    .line 7
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "crash : "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/am/AppErrors$1;->val$r:Lcom/android/server/am/ProcessRecord;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 12
    .line 13
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, ","

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/server/am/AppErrors$1;->val$r:Lcom/android/server/am/ProcessRecord;

    .line 24
    .line 25
    iget v1, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "ActivityManager"

    .line 35
    .line 36
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    new-instance v0, Landroid/content/Intent;

    .line 40
    .line 41
    const-string/jumbo v1, "com.sec.android.sdhms.action.CRASH_ANR"

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string/jumbo v1, "com.sec.android.sdhms"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/android/server/am/AppErrors$1;->val$r:Lcom/android/server/am/ProcessRecord;

    .line 54
    .line 55
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 56
    .line 57
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 58
    .line 59
    const-string/jumbo v2, "pkgName"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Lcom/android/server/am/AppErrors$1;->val$r:Lcom/android/server/am/ProcessRecord;

    .line 66
    .line 67
    iget v1, v1, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 68
    .line 69
    const-string/jumbo v2, "userId"

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 73
    .line 74
    .line 75
    iget-object v1, p0, Lcom/android/server/am/AppErrors$1;->val$r:Lcom/android/server/am/ProcessRecord;

    .line 76
    .line 77
    iget v1, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 78
    .line 79
    const-string/jumbo v2, "uid"

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 83
    .line 84
    .line 85
    const-string/jumbo v1, "type"

    .line 86
    .line 87
    .line 88
    const-string/jumbo v2, "crash"

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    .line 93
    .line 94
    iget-object p0, p0, Lcom/android/server/am/AppErrors$1;->this$0:Lcom/android/server/am/AppErrors;

    .line 95
    .line 96
    iget-object p0, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    .line 97
    .line 98
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 99
    .line 100
    const-string/jumbo v2, "com.samsung.permission.WRITE_SDHMS_DATA"

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method
