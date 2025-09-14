.class public final Lcom/android/server/am/StrictModeViolationDialog;
.super Lcom/android/server/am/BaseErrorDialog;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mHandler:Lcom/android/server/am/StrictModeViolationDialog$1;

.field public final mProc:Lcom/android/server/am/ProcessRecord;

.field public final mResult:Lcom/android/server/am/AppErrorResult;

.field public final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance v0, Lcom/android/server/am/StrictModeViolationDialog$1;

    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/am/StrictModeViolationDialog$1;-><init>(Lcom/android/server/am/StrictModeViolationDialog;)V

    .line 9
    iput-object v0, p0, Lcom/android/server/am/StrictModeViolationDialog;->mHandler:Lcom/android/server/am/StrictModeViolationDialog$1;

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    move-result-object v1

    .line 15
    iput-object p2, p0, Lcom/android/server/am/StrictModeViolationDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 17
    iput-object p4, p0, Lcom/android/server/am/StrictModeViolationDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 19
    iput-object p3, p0, Lcom/android/server/am/StrictModeViolationDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    .line 21
    iget-object p2, p4, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 23
    invoke-virtual {p2}, Lcom/android/server/am/PackageList;->size()I

    .line 26
    move-result p2

    .line 27
    const/4 p3, 0x1

    .line 28
    if-ne p2, p3, :cond_0

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 33
    move-result-object p1

    .line 34
    iget-object p2, p4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 36
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 39
    move-result-object p1

    .line 40
    if-eqz p1, :cond_0

    .line 42
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    iget-object p2, p4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 48
    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 50
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 53
    move-result-object p1

    .line 54
    const p2, 0x1040eb0

    .line 57
    invoke-virtual {v1, p2, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    iget-object p1, p4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 70
    move-result-object p1

    .line 71
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 74
    move-result-object p1

    .line 75
    const p2, 0x1040eb1

    .line 78
    invoke-virtual {v1, p2, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 85
    :goto_0
    const/4 p1, 0x0

    .line 86
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 89
    const p2, 0x1040491

    .line 92
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 95
    move-result-object p2

    .line 96
    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 99
    move-result-object v2

    .line 100
    const/4 v3, -0x1

    .line 101
    invoke-virtual {p0, v3, p2, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 104
    iget-object p2, p4, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 106
    iget-object p2, p2, Lcom/android/server/am/ProcessErrorStateRecord;->mErrorReportReceiver:Landroid/content/ComponentName;

    .line 108
    if-eqz p2, :cond_1

    .line 110
    :try_start_0
    const-string/jumbo p2, "restriction_policy"

    .line 113
    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 116
    move-result-object p2

    .line 117
    invoke-static {p2}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 120
    move-result-object p2

    .line 121
    if-eqz p2, :cond_1

    .line 123
    iget v2, p4, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 125
    invoke-interface {p2, v2}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isGoogleCrashReportAllowedAsUser(I)Z

    .line 128
    move-result p2

    .line 129
    if-eqz p2, :cond_1

    .line 131
    const p2, 0x1040c89

    .line 134
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 137
    move-result-object p2

    .line 138
    invoke-virtual {v0, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 141
    move-result-object p3

    .line 142
    const/4 v0, -0x2

    .line 143
    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :catch_0
    :cond_1
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 149
    move-result-object p2

    .line 150
    const/16 p3, 0x100

    .line 152
    invoke-virtual {p2, p3}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 155
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 158
    move-result-object p2

    .line 159
    new-instance p3, Ljava/lang/StringBuilder;

    .line 161
    const-string v0, "Strict Mode Violation: "

    .line 163
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    iget-object p4, p4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 168
    iget-object p4, p4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 170
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    move-result-object p3

    .line 177
    invoke-virtual {p2, p3}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 180
    iget-object p0, p0, Lcom/android/server/am/StrictModeViolationDialog;->mHandler:Lcom/android/server/am/StrictModeViolationDialog$1;

    .line 182
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 185
    move-result-object p1

    .line 186
    const-wide/32 p2, 0xea60

    .line 189
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 192
    return-void
.end method


# virtual methods
.method public final closeDialog()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/am/StrictModeViolationDialog;->mHandler:Lcom/android/server/am/StrictModeViolationDialog$1;

    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 11
    return-void
.end method
