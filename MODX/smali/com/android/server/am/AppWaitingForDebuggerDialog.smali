.class public final Lcom/android/server/am/AppWaitingForDebuggerDialog;
.super Lcom/android/server/am/BaseErrorDialog;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mHandler:Lcom/android/server/am/AppWaitingForDebuggerDialog$1;

.field public final mProc:Lcom/android/server/am/ProcessRecord;

.field public final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)V
    .locals 2

    .line 1
    invoke-direct {p0, p2}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance v0, Lcom/android/server/am/AppWaitingForDebuggerDialog$1;

    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/am/AppWaitingForDebuggerDialog$1;-><init>(Lcom/android/server/am/AppWaitingForDebuggerDialog;)V

    .line 9
    iput-object p1, p0, Lcom/android/server/am/AppWaitingForDebuggerDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 11
    iput-object p3, p0, Lcom/android/server/am/AppWaitingForDebuggerDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 13
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 16
    move-result-object p1

    .line 17
    iget-object p2, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 19
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 22
    move-result-object p1

    .line 23
    const/4 p2, 0x0

    .line 24
    invoke-virtual {p0, p2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 27
    new-instance p2, Ljava/lang/StringBuilder;

    .line 29
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    if-eqz p1, :cond_0

    .line 34
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 37
    move-result v1

    .line 38
    if-lez v1, :cond_0

    .line 40
    const-string v1, "Application "

    .line 42
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 48
    const-string p1, " (process "

    .line 50
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget-object p1, p3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 55
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string p1, ")"

    .line 60
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    const-string p1, "Process "

    .line 66
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-object p1, p3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 71
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    :goto_0
    const-string p1, " is waiting for the debugger to attach."

    .line 76
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 86
    const/4 p1, 0x1

    .line 87
    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 90
    move-result-object p1

    .line 91
    const/4 p2, -0x1

    .line 92
    const-string v0, "Force Close"

    .line 94
    invoke-virtual {p0, p2, v0, p1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 97
    const-string p1, "Waiting For Debugger"

    .line 99
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 102
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 109
    move-result-object p1

    .line 110
    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 112
    or-int/lit8 p2, p2, 0x10

    .line 114
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 116
    new-instance p2, Ljava/lang/StringBuilder;

    .line 118
    const-string v0, "Waiting For Debugger: "

    .line 120
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    iget-object p3, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 125
    iget-object p3, p3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 127
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    move-result-object p2

    .line 134
    invoke-virtual {p1, p2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 137
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 140
    move-result-object p0

    .line 141
    invoke-virtual {p0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 144
    return-void
.end method


# virtual methods
.method public final closeDialog()V
    .locals 0

    .line 1
    return-void
.end method
